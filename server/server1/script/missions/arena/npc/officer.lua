Include("\\script\\missions\\arena\\player.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\maps\\checkmap.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\dicegame.lua")

IncludeLib("TITLE")


function open_credits_shop()
	local szTitle = "<color=red>Muèn thö vËn may kh«ng nµo?<color>."
	local tbOpt = {
		{"C­îc 1 v¹n l­îng", motvluong},	
		{"C­îc 5 v¹n l­îng", namvluong},
		{"C­îc 10 v¹n l­îng", muoivluong},
		{"C­îc 20 v¹n l­îng", haimuoivluong},
		{"C­îc 50 v¹n l­îng", nammuoivluong},
		{"C­îc 100 v¹n l­îng", mottramvluong},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)	
end

function motvluong()	
	if (GetCash() < 10000) then
		Talk(1,"","B¹n kh«ng ®ñ tiÒn")
	return end
	OpenDice(10000)
end

function namvluong()	
if (GetCash() < 50000) then
		Talk(1,"","B¹n kh«ng ®ñ tiÒn")
	return end
	OpenDice(50000)
end

function muoivluong()
if (GetCash() < 100000) then
		Talk(1,"","B¹n kh«ng ®ñ tiÒn")
	return end	
	OpenDice(100000)
end

function haimuoivluong()	
if (GetCash() < 200000) then
		Talk(1,"","B¹n kh«ng ®ñ tiÒn")
	return end
	OpenDice(200000)
end

function nammuoivluong()
if (GetCash() < 500000) then
		Talk(1,"","B¹n kh«ng ®ñ tiÒn")
	return end	
	OpenDice(500000)
end

function mottramvluong()
if (GetCash() < 1000000) then
		Talk(1,"","B¹n kh«ng ®ñ tiÒn")
	return end		
	OpenDice(1000000)
end
