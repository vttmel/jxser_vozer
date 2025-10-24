Include("\\script\\task\\150skilltask\\tianwang\\register.lua")

local tbFactSkill = {
	[1] = {[90] = {322, 325, 323}, [120] = {708},},
}

function pTask:CheckMissionCondition()
	if GetLevel() < 150 then
		return
	end
	---ChØnh söa nhËn nv kü n¨ng 150 ph¶i trïng sinh 2 trë lªn - Modified By NgaVN - 20121207
	local nTransLife = ST_GetTransLifeCount()	
	if nTransLife < 6  then
		return
	end
	local nFact = GetLastFactionNumber()
	if nFact == nil then
		return
	end
	local tbFact = %tbFactSkill[nFact]
	if tbFact == nil then
		return
	end
	local nFlag = 0
	for i = 1, getn(tbFact[90]) do
		if HaveMagic(tbFact[90][i]) >= 0 then
			nFlag = 1
			break
		end
	end
	if nFlag == 0 then
		return
	end
	if HaveMagic(tbFact[120][1]) < 0 then
		return
	end
	return 1
end

function pTask:Talk(szMsg)
	Talk(1, "", szMsg)
end
