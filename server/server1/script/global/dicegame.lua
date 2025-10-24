Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")

function main()
	-- dofile("script/global/dicegame.lua");		
	local szTitle = "<color=red>Chñ sßng b¹c<color>.<enter><color=yellow>Ng­¬i cã muèn ®æi ®êi kh«ng ?<color><enter>H·y ®¸nh c­îc víi ta thö mét v¸n xem vËn may cña ng­¬i thÕ nµo... ! <enter>Hªn xui do trêi, liÒu m¹ng do ng­êi"
	local tbOpt = {
		{"V©ng ta muèn th÷ 1 lÇn", game},	
		{"Ta muèn hái th¨m mét chót", help},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)		
end

function game()
	AskClientForNumber("tiencuoc",1,GetCash(),"NhËp sè tiÒn c­îc:")
end;

function tiencuoc(nMoney)
	if (GetCash() < nMoney) then
		Talk(1,"","B¹n kh«ng ®ñ tiÒn")
	return end
	OpenDice(nMoney)
end

function help()
	Talk(5, "", "Ngµy x­a ta lµ ®Ö tö <color=red>C¸i Bang<color> ng­¬i cã tin ko ?", "Ha ha ha ! V× ham mª cê b¹c nªn ta bÞ trôc xuÊt khái s­ m«n........ !",
	"Nh­ng vËn xui chØ theo ta mét thêi gian ng¾n, «ng trêi qu¶ nhiªn cã m¾t..............",
	"B©y giê ta ®· lµ phó hé cña vïng <color=green>D­¬ng Ch©u<color> nµy, ng­êi cã muèn thñ c­îc ®Ó lµm giµu kh«ng ?",
	"Mét ngµy nµo ®ã ta sÏ phôc h­ng l¹i <color=red>C¸i Bang<color> ! h·y chê ®ã ! ha ha ha !...");
end;

