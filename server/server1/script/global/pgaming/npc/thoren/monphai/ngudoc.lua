Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")


function main(sel)
if TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen == 1 then
	local tbOpt = {
		{"Giao DÞch",scriptthorenall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua g×?<color>", tbOpt)
else
	Uworld37 = GetByte(GetTask(37),2)
	if (GetFaction() == "wudu") or (Uworld37 == 127) then
		Say("Bæn ph¸i vèn kh«ng dïng søc m¹nh ®Ó chiÕn th¾ng, bëi v× nh÷ng vò khÝ nµy khi biÕt vËn dông th× tuyÖt x¶o v« song ", 2, "Giao dÞch/yes", "Kh«ng giao dÞch/no")
	else
		Talk(1,"","Gi¸o chñ cã lÖnh: binh khÝ cña m«n ph¸i kh«ng ®­îc b¸n cho ng­êi ngoµi")
	end
end
end;

function yes()
	Sale(78)
end;

function no()
end;
