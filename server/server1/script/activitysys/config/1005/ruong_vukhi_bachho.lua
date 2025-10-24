--function hæ trî trao th­ëng trang bÞ hoµng kim - Updated by DinhHQ - 20110920
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\VngTransLog.lua")
Include("\\script\\dailogsys\\dailogsay.lua");


function main()

	local player_Faction = GetLastFactionNumber()

if (player_Faction == 4) then

	local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"Nga My Ch­ëng", nmc},	
		{"Nga My KiÕm", nmk},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 5) then	
			
	local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"Thóy Yªn ®ao", tyd},	
		{"Thóy Yªn song ®ao", tysd},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 2) then
	
	local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"§­êng M«n phi ®ao", dmpd},	
		{"§­êng M«n ná tiÔn", dmnt},
		{"§­êng M«n phi tiªu", dmpt},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 3) then
	
local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"Ngò ®äc Ch­ëng", ngudc},	
		{"Ngñ ®äc ®ao", ngudd},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)	


elseif (player_Faction == 1) then
	
	local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"Thiªn V­¬ng ®ao", tvd},	
		{"Thiªn V­¬ng Th­¬ng", tvt},
		{"Thiªn V­¬ng Chïy", tvc},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 0) then
		
	local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"ThiÕu L©m QuyÒn", tlq},	
		{"ThiÕu L©m §ao", tld},
		{"ThiÕu L©m C«n", tlc},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 8) then
		local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"Vâ ®ang kiÕm", vodk},	
		{"Vâ §ang Ch­ëng", vodc},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)
	
elseif (player_Faction == 9) then
		local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"C«n L«n §ao", cold},	
		{"C«n Lån kiÕm", colk},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 7) then
		
	local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"Thiªn NhÉn ®ao", tnhd},	
		{"Thiªn NhÉn KÝch", tnhk},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 6) then
		
	local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"C¸i Bang Bæng", cbro},	
		{"C¸i Bang Rång", cbo},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 10) then
	
	local szTitle = "Xin h·y lùa chän hÖ ph¸i phï hîp"
	local tbOpt =
	{
		{"Hoa S¬n KiÕm", hosk},	
		{"Hoa S¬n Néi C«ng", hsnc},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	
else
		Say("V« danh tiÓu tèt h·y t×m 1 m«n ph¸i cho m×nh ®i !", 0)
		return 0
	end

end

function nmc()
		local ItemIdx=AddGoldItem(0, 2361);
		--SetItemBindState(ItemIdx, -2);
		return 0
end

function nmk()
		local ItemIdx=AddGoldItem(0, 2351);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tyd()
		local ItemIdx=AddGoldItem(0, 2371);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tysd()
		local ItemIdx=AddGoldItem(0, 2381);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function dmpd()
		local ItemIdx=AddGoldItem(0, 2411);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function dmnt()
		local ItemIdx=AddGoldItem(0, 2421);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function dmpt()
		local ItemIdx=AddGoldItem(0, 2431);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function ngudc()
		local ItemIdx=AddGoldItem(0, 2391);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function ngudd()
		local ItemIdx=AddGoldItem(0, 2401);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tvd()
		local ItemIdx=AddGoldItem(0, 2341);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tvt()
		local ItemIdx=AddGoldItem(0, 2331);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tvc()
		local ItemIdx=AddGoldItem(0, 2321);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tlq()
		local ItemIdx=AddGoldItem(0, 2291);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tld()
		local ItemIdx=AddGoldItem(0, 2311);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tlc()
		local ItemIdx=AddGoldItem(0, 2301);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function vodk()
		local ItemIdx=AddGoldItem(0, 2491);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function vodc()
		local ItemIdx=AddGoldItem(0, 2481);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function cold()
		local ItemIdx=AddGoldItem(0, 2501);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function colk()
		local ItemIdx=AddGoldItem(0, 2511);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tnhd()
		local ItemIdx=AddGoldItem(0, 2471);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tnhk()
		local ItemIdx=AddGoldItem(0, 2461);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function cbro()
		local ItemIdx=AddGoldItem(0, 2451);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function cbo()
		local ItemIdx=AddGoldItem(0, 2441);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function hosk()
		local ItemIdx=AddGoldItem(0, 4769);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function hsnc()
		local ItemIdx=AddGoldItem(0, 4759);
		--SetItemBindState(ItemIdx, -2);
return 0
end