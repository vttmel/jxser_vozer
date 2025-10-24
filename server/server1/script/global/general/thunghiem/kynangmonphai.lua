
Include("\\script\\misc\\eventsys\\type\\npc.lua");

TAB_SKILLALL =
{
	[1] = {
		tbSkillBase={14,10,8,4,6,15,16,20,271,11,19,273,21},
		tbSkill9x={318,319,321},
		tbSkill12x={709},
		--tbSkill15x= {1055,1056,1057},
	},
	
	[2] = {
		tbSkillBase={34,30,29,26,23,24,33,37,35,31,40,42,32,36,41,324},
		tbSkill9x={322,323,325},
		tbSkill12x={708},
		--tbSkill15x= {1058, 1059, 1060},
	},
	
	[3] = {
		tbSkillBase={45,43,347,303,50,54,47,343,345,349,249,48,58,341},
		tbSkill9x={339,302,342,351},
		tbSkill12x={710},
		--tbSkill15x= {1069, 1070, 1071},
	},
	
	[4] = {
		tbSkillBase={63,65,62,60,67,70,66,68,384,64,69,356,73,72,71,75,74},
		tbSkill9x={353,355,390},
		tbSkill12x={711},
		--tbSkill15x= {1066, 1067},
	},
	
	[5] = {
		tbSkillBase={85,80,77,79,93,385,82,89,86,92,88,252,91,282},
		tbSkill9x={328,380,332},
		tbSkill12x={712},
		--tbSkill15x= {1061, 1062, 1114},
	},
	
	[6] = {
		tbSkillBase={99,102,95,97,269,105,113,100,109,108,114,111},
		tbSkill9x={336,337},
		tbSkill12x={713},
		--tbSkill15x= {1063, 1065},
	},
	
	[7] = {
		tbSkillBase={122,119,116,115,129,274,124,277,128,125,130,360},
		tbSkill9x={357,359},
		tbSkill12x={714},
		--tbSkill15x= {1073, 1074},
	},
	
	[8] = {
		tbSkillBase={135,145,132,131,136,137,141,138,140,364,143,142,150,148},
		tbSkill9x={361,362,391},
		tbSkill12x={715},
		--tbSkill15x= {1075, 1076},
	},
	
	[9] = {
		tbSkillBase={153,155,152,151,159,164,158,160,157,165,166,267},
		tbSkill9x={365,368},
		tbSkill12x={716},
		--tbSkill15x= {1078, 1079},
	},
	
	[10] = {
		tbSkillBase={169,179,167,168,392,171,174,178,172,393,173,175,181,176,90,275,182,630},
		tbSkill9x={372,375,394},
		tbSkill12x={717},
		--tbSkill15x= {1080, 1081},
	},
}

function HocKyNangMonPhai()
	local nFaction = GetLastFactionNumber()+1
	if not (TAB_SKILLALL[nFaction]) then
		Talk(1,"","B¹n ch­a gia nhËp m«n ph¸i!")
	return end
	if (getn(TAB_SKILLALL[nFaction].tbSkillBase) > 0) then
		for i = 1, getn(TAB_SKILLALL[nFaction].tbSkillBase) do
			if (HaveMagic(TAB_SKILLALL[nFaction].tbSkillBase[i]) == -1) then
				AddMagic(TAB_SKILLALL[nFaction].tbSkillBase[i])
			end
		end
	end
	if (getn(TAB_SKILLALL[nFaction].tbSkill9x) > 0) then
		for i = 1, getn(TAB_SKILLALL[nFaction].tbSkill9x) do
			if (skillsupport(TAB_SKILLALL[nFaction].tbSkill9x[i]) == 1) then
				if (HaveMagic(TAB_SKILLALL[nFaction].tbSkill9x[i]) == -1) then
					AddMagic(TAB_SKILLALL[nFaction].tbSkill9x[i])
				end
			else
				if (HaveMagic(TAB_SKILLALL[nFaction].tbSkill9x[i]) == -1) then
					AddMagic(TAB_SKILLALL[nFaction].tbSkill9x[i], 20)
				end
			end
		end
	end
	if (getn(TAB_SKILLALL[nFaction].tbSkill12x) > 0) then
		for i = 1, getn(TAB_SKILLALL[nFaction].tbSkill12x) do
			if (HaveMagic(TAB_SKILLALL[nFaction].tbSkill12x[i]) == -1) then
				AddMagic(TAB_SKILLALL[nFaction].tbSkill12x[i],20)
			end
		end
	end
	
	if (getn(TAB_SKILLALL[nFaction].tbSkill15x) > 0) then
		for i = 1, getn(TAB_SKILLALL[nFaction].tbSkill15x) do
			if (HaveMagic(TAB_SKILLALL[nFaction].tbSkill15x[i]) == -1) then
				AddMagic(TAB_SKILLALL[nFaction].tbSkill15x[i],20)
			end
		end
	end
end

function skillsupport(nSkillID)
	local tbSkills = {351,390,332,391,394}
	for i = 1, getn(tbSkills) do
		if nSkillID == tbSkills[i] then
		return 1 end
	end
return 0 end

-- pEventType:Reg("TÝnh n¨ng thö nghiÖm", "Häc kü n¨ng m«n ph¸i", HocKyNangMonPhai);
-- pEventType:Reg("LÖnh bµi T©n Thñ", "Häc kü n¨ng m«n ph¸i", HocKyNangMonPhai);