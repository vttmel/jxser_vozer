Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\global_zahuodian.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\taphoa\\alltaphoa.lua")

function main(sel)
if TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa == 1 then
	local tbOpt = {
		{"Giao DÞch",scripttaphoaall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
else
	local nNpcIdx = GetLastDiagNpc()
	local dwNpcId = GetNpcId(nNpcIdx)
	local szNpcName = GetNpcName(nNpcIdx)
	local tbDailog = DailogClass:new(szNpcName)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	tbDailog.szTitleMsg = "<npc>Tr­íc ®©y ta lµ ng­êi b¸n hµng rong, tÝch cãp ®­îc Ýt vèn, më tiÖm t¹p hãa nhá nµy"
	if (GetTask(3) == 40*256+50) and (GetTask(14) == 5) and (HaveItem(148) == 0) then 		
		tbDailog:AddOptEntry("Cã b¸n h¹t sen kh«ng?", lotus)
	end
	tbDailog:AddOptEntry("Giao dÞch", yes)
	tbDailog:AddOptEntry("Ta ®Õn nhËn nhiÖm vô s¬ nhËp", zboss)
	tbDailog:AddOptEntry("Kh«ng giao dÞch", no)
	tbDailog:Show()
end
end

function lotus()
	Say("H¹t sen chÝnh lµ ®Æc s¶n cña bæn tiÖm, dÜ nhiªn lµ cã, chØ cã 500 l­îng th«i", 2, "Mua/yes1", "Kh«ng mua/no")
end;

function yes1()
	if (GetCash() >= 500) then
		Pay(500)
		AddEventItem(148)
		Msg2Player("Mua ®­îc h¹t sen")
		AddNote("Mua ®­îc h¹t sen t¹i tiÖm t¹p hãa Ba L¨ng huyÖn ")
	else
		Say("Cã ®ñ tiÒn råi h·y ®Õn mua ®i, h·y xem nh÷ng mãn hµng kh¸c tr­íc ®i.", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	end
end;

function yes()
Sale(38);  			
end;

function no()
end;
