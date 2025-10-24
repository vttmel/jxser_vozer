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
	Uworld38 = GetByte(GetTask(38),1)
	if (GetFaction() == "tianwang") or (Uworld38 == 127) then
		Say("C¸c huynh ®Ö bæn bang c¶ ngµy ch¹y ®«ng ch¹y t©y kh«ng thÓ kh«ng cã mét bé trang bÞ tèt", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Bang chñ cã lÖnh: trang bÞ cña bæn bang chØ b¸n cho huynh ®Ö ®ång m«n")
	end
end
end;

function yes()
Sale(58);  			
end;

function no()
end;






