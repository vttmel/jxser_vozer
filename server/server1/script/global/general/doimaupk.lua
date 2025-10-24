-- §æi mµu PK

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

function ChangeCamp()
	if (GetCamp() == 0) then
		Talk(1, "", "B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ thay ®æi mµu phe ph¸i!")
	return end
	Say("Ng­¬i muèn ®æi mµu cña phe ph¸i nµo?",5,
	"ChÝnh ph¸i/#PlayerSetCamp(1)",
	"Tµ ph¸i/#PlayerSetCamp(2)",
	"Trung lËp/#PlayerSetCamp(3)",
	"S¸t thñ/#PlayerSetCamp(4)",
	"KÕt thóc ®èi tho¹i./no")
end

function PlayerSetCamp(nCamp)
	if (GetCamp() == nCamp) then
		Talk(1, "", "B¹n ®ang ë mµu phe ph¸i nµy, kh«ng cÇn chuyÓn ®æi n÷a ®©u!")
	return end
	SetCamp(nCamp)
	SetCurCamp(nCamp)
end


--pEventType:Reg("LÔ Quan", "§æi mµu tr¹ng th¸i PK", ChangeCamp);