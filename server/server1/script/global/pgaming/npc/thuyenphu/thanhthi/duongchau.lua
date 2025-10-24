CurWharf = 6;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
---------------------------------------------------------------
function main(sel)
	local nNpcIndex = GetLastDiagNpc();
	local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M"))

	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	tbDailog.szTitleMsg = "<#><npc>D≠¨ng Ch©u chÛng ta c„ mÈt con suËi, nhi“u s´ng, nhi“u c«u, nhi“u thuy“n. Nh˜ng ng≠Íi giµu c„ th◊ sœ Æ„n thuy“n Æi du ngoπn D≠¨ng Ch©u, d˘a vµo c∏c thuy“n phu cÒa chÛng ta"
	tbDailog:AddOptEntry("NgÂi thuy“n", WharfFun)
	tbDailog:AddOptEntry("Kh´ng ngÂi", OnCancel)
	if DaoHoaDao == 1 then
		--tbDailog:AddOptEntry("ßi ßµo Hoa ß∂o (2) [ "..AEXP_TICKET.." l≠Óng]", go_thd)
	end
	if CauCa == 1 and GetLevel() >= 50 then
		tbDailog:AddOptEntry("ß≠a ta Æ’n Æﬁa Æi”m c©u c∏", dendiadiemcauca)
	end
	G_TASK:OnMessage("Nguy÷t Ca ß∂o", tbDailog, "DialogWithNpc")
	if check_showdialog_condition() then
		--tbDailog:AddOptEntry("ß≠a ta Æ’n Nguy÷t Ca ß∂o", goto_yuegedao)
	end
	tbDailog:Show()
end;

function dendiadiemcauca()
local nRanDom = random(1,2)
if nRanDom == 1 then
NewWorld(1009, 1241, 3081)
SetFightState(0)
else
NewWorld(1009, 1566, 2511)
SetFightState(0)
end
end

function check_showdialog_condition()
	local tbFactStepList = {
		[5] = 6,
		[2] = 7,
		[4] = 7,
		[3] = 5,
		[6] = 9,
		[7] = 9,
		[0] = 6,
		[8] = 5,
		[1] = 4,
		[9] = 5,
	}
	local nFact = GetLastFactionNumber()
	if nFact == nil or nFact < 0 or nFact > 9 then
		return
	end
	local nFactStep = mod(GetTask(2885), 100)
	if nFactStep >= tbFactStepList[nFact] then
		return 1
	end
	return
end

function goto_yuegedao()
	if CalcItemCount(3, 6, 1, 2908, -1) <= 0 then
		Msg2Player("Ta kh´ng c„ Nguy÷t Ca L÷nh")
		return
	end
	NewWorld(968, 1436, 3179)
end
---------------------------------------------------------------
function  OnCancel()

   Say("Kh´ng c„ ti“n ngÂi thuy“n th◊ ng≠¨i Æi bÈ vÀy! ",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(236);
	-- if (nRet == 1) then
	--	Msg2Player("¥¨∑Ú£∫◊ÓΩ¸»•Ã“ª®µ∫µƒ»Àø…’Ê∂‡°£∫√∞…£¨ƒ„◊¯∫√‡∂£°")
	if (nRet == -1) then
		Talk(1,"","Ph› Æi thuy“n Æ’n ßµo Hoa ß∂o "..AEXP_TICKET.."L≠Óng, ng≠¨i c„ ÆÒ kh´ng? ")
	end
end
---------------------------------------------------------------
