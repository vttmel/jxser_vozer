Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\pgaming\\xephang\\xephang_log\\awardplayertop_tb.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")

IncludeLib("RELAYLADDER");
IL("TITLE");

_TbFac = {{"shaolin", "ThiÕu L©m"},{"tianwang", "Thiªn V­¬ng"},{"tangmen", "§­êng M«n"},{"wudu", "Ngò §éc"},{"emei", "Nga My"},{"cuiyan", "Thóy Yªn"},{"gaibang", "C¸i Bang"},{"tianren", "Thiªn NhÉn"},{"wudang", "Vâ §ang"},{"kunlun", "C«n L«n"},}

-----------------------------------------------------------
nThuongTop_1	 = 5755
nThuongTop_1_2 	 = 5754
nThuongTop_2	 = 5753
nThuongTop_3	 = 5752
-------------------------------

function UpdateTOPPlayerPrivWeek()
	local OpenFileTopWrite = openfile("script/global/pgaming/xephang/xephang_log/awardplayertop_tb.lua", "w")
	write(OpenFileTopWrite, "_PlayersNameTb = \n{\n\TopCaoThu = \n\t\t{", "\n")
	for i = 1, 4 do
		local szName, nValue = Ladder_GetLadderInfo(10287, i);
		write(OpenFileTopWrite, "\t\t\t["..i.."] = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	end
	write(OpenFileTopWrite, "\t\t},\n\TopPhuHo = \n\t\t{", "\n")
	for i = 1, 4 do
		local szName, nValue = Ladder_GetLadderInfo(10288, i);
		write(OpenFileTopWrite, "\t\t\t["..i.."] = {Name = '"..szName.."', Money = "..nValue..",},", "\n")
	end
	write(OpenFileTopWrite, "\t\t},\n\TopMonPhai = \n\t\t{", "\n")
	
	local szName, nValue = Ladder_GetLadderInfo(10277, 1);
	write(OpenFileTopWrite, "\t\t\tshaolin = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10278, 1);
	write(OpenFileTopWrite, "\t\t\ttianwang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10279, 1);
	write(OpenFileTopWrite, "\t\t\ttangmen = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10280, 1);
	write(OpenFileTopWrite, "\t\t\twudu = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10281, 1);
	write(OpenFileTopWrite, "\t\t\temei = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10282, 1);
	write(OpenFileTopWrite, "\t\t\tcuiyan = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10283, 1);
	write(OpenFileTopWrite, "\t\t\tgaibang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10284, 1);
	write(OpenFileTopWrite, "\t\t\ttianren = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10285, 1);
	write(OpenFileTopWrite, "\t\t\twudang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10286, 1);
	write(OpenFileTopWrite, "\t\t\tkunlun = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	
	write(OpenFileTopWrite, "\t\t},\n}", "\n")
	closefile(OpenFileTopWrite)
	LoadScript("\\script\\global\\pgaming\\xephang\\xephang_log\\awardplayertop_tb.lua")
	for i=10277, 10286 do -- m«n ph¸i cao thñ
		Ladder_ClearLadder(i)
	end
	for i=10265, 10275 do -- m«n ph¸i phó hé
		Ladder_ClearLadder(i)
	end
	Ladder_ClearLadder(10288) -- phó hé
end

function GetAwardTOPPlayers()
	local TbOp = {}
	tinsert(TbOp, "> Ta ®Õn ®Ó nhËn th­ëng TOP cao thñ tuÇn tr­íc!/#ReceiveAward(1)")
	tinsert(TbOp, "Ta muèn xem danh s¸ch cao thñ tuÇn tr­íc!/#ViewTOP(1)")
	--tinsert(TbOp, "> Ta ®Õn ®Ó nhËn th­ëng TOP phó hé tuÇn tr­íc!/#ReceiveAward(2)")
	--tinsert(TbOp, "Ta muèn xem danh s¸ch phó hé tuÇn tr­íc!/#ViewTOP(2)")
	--tinsert(TbOp, "> Ta ®Õn ®Ó nhËn th­ëng TOP m«n ph¸i tuÇn tr­íc!/#ReceiveAward(3)")
	--tinsert(TbOp, "Ta muèn xem danh s¸ch cao thñ m«n ph¸i tuÇn tr­íc!/#ViewTOP(3)")
	tinsert(TbOp, "Ta ®Õn ®Ó hái th¨m ngµi th«i!/OnCancel")
	Say("<color=Orange>LÔ quan: <color>".."TuÇn míi ®· ®Õn, tÊt c¶ c¸c cao thñ cña tuÇntr­íc ®· ®­îc ghi danh, ®Ó t«n vinh c¸c vÞ cao thñ,  bæn trang sÏ ®Æt biÖt trao th­ëng cho nh÷ng nh©n tµi nµy!", getn(TbOp), TbOp)
end

_TitleTopMoney =
{
	{TitleID = 216, TitleName = "Giµu Nøt V¸ch §æ T­êng", Xu = 300,},
	{TitleID = 217, TitleName = "Phó Kh¶ §Þnh Quèc", Xu = 200,},
	{TitleID = 218, TitleName = "NhÊt §¹i Phó Gia", Xu = 100,},
	{TitleID = 219, TitleName = "TiÒn Mu«n B¹c V¹n", Xu = 50,},
}
--0 lµ nam, 1 lµ n÷
_TitleFaction = 
{
	shaolin = 
		{
			[0] = {TitleID = 220, TitleName = "ThiÕu l©m Cao Thñ", Xu = 200,}, 
			[1] = {TitleID = 220, TitleName = "ThiÕu l©m Cao Thñ", Xu = 200,},
			
		},
	tianwang = 
		{
			[0] = {TitleID = 221, TitleName = "Thiªn v­¬ng Cao Thñ", Xu = 200,},
			[1] = {TitleID = 221, TitleName = "Thiªn v­¬ng Cao Thñ", Xu = 200,},
			
		},
	tangmen = 
		{
			[0] = {TitleID = 222, TitleName = "§­êng m«n Cao Thñ", Xu = 200,},
			[1] = {TitleID = 222, TitleName = "§­êng m«n Cao Thñ", Xu = 200,},
			
		},
	wudu = 
		{
			[0] = {TitleID = 223, TitleName = "Ngò ®éc Cao Thñ", Xu = 200,},
			[1] = {TitleID = 223, TitleName = "Ngò ®éc Cao Thñ", Xu = 200,},
			
		},
	emei = 
		{
			[0] = {TitleID = 224, TitleName = "Nga my Cao Thñ", Xu = 200,},
			[1] = {TitleID = 224, TitleName = "Nga my Cao Thñ", Xu = 200,},
			
		},
	cuiyan = 
		{
			[0] = {TitleID = 225, TitleName = "Thóy yªn Cao Thñ", Xu = 200,},
			[1] = {TitleID = 225, TitleName = "Thóy yªn Cao Thñ", Xu = 200,},
			
		},
	gaibang = 
		{
			[0] = {TitleID = 226, TitleName = "C¸i bang Cao Thñ", Xu = 200,},
			[1] = {TitleID = 226, TitleName = "C¸i bang Cao Thñ", Xu = 200,},
		},
	tianren = 
		{
			[0] = {TitleID = 227, TitleName = "Thiªn nhÉn Cao Thñ", Xu = 200,},
			[1] = {TitleID = 227, TitleName = "Thiªn nhÉn Cao Thñ", Xu = 200,},
		},
	wudang = 
		{
			[0] = {TitleID = 228, TitleName = "Vâ ®ang Cao Thñ", Xu = 200,},
			[1] = {TitleID = 228, TitleName = "Vâ ®ang Cao Thñ", Xu = 200,},
		},
	kunlun = 
		{
			[0] = {TitleID = 229, TitleName = "C«n l«n Cao Thñ", Xu = 200,},
			[1] = {TitleID = 229, TitleName = "C«n l«n Cao Thñ", Xu = 200,},
		},
}

function ReceiveAward(Sel)
	local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh«ng §ñ "..SoLuongRuongTrongNhanThuong.." r­¬ng chøa ®å, kh«ng thÓ nhËn th­ëng")
		return 1
	end
	if Sel == 1 then
		for i = 1, 3 do
			if _PlayersNameTb["TopCaoThu"][i].Name == GetName() then
				return ReceiveAwardActive(Sel, i)
			end
		end
		return Talk(1, "", "§¹i hiÖp kh«ng cã trong danh s¸ch nhËn th­ëng cña <enter>tuÇn nµy, ®¹i hiÖp cã thÓ vµo phÇn xem danh s¸ch ®Ó <enter>biÕt ai ®­îc nhËn th­ëng!")
	elseif Sel == 2 then
		for i = 1, 3 do
			if _PlayersNameTb["TopPhuHo"][i].Name == GetName() then
				return ReceiveAwardActive2(Sel, i)
			end
		end
		return Talk(1, "", "§¹i hiÖp kh«ng cã trong danh s¸ch nhËn th­ëng cña <enter>tuÇn nµy, ®¹i hiÖp cã thÓ vµo phÇn xem danh s¸ch ®Ó <enter>biÕt ai ®­îc nhËn th­ëng!")
	elseif Sel == 3 then
		local CheckFac = 0
		for facloop = 1, 10 do
			if _SectTable[facloop][1] == GetFaction() then
				if _PlayersNameTb["TopMonPhai"][GetFaction()].Name == GetName() then
					return ReceiveAwardActive3(Sel, GetFaction())
				else
					CheckFac = 1
				end
			end
		end
		if CheckFac == 1 then
			return Talk(1, "", "§¹i hiÖp kh«ng cã trong danh s¸ch nhËn th­ëng cña <enter>tuÇn nµy, ®¹i hiÖp cã thÓ vµo phÇn xem danh s¸ch ®Ó <enter>biÕt ai ®­îc nhËn th­ëng!")
		end
		return Talk(1, "", "<color=metal>§¹i hiÖp ch­a lµ ®Ö tö cña gi¸o ph¸i nµo c¶ nªn kh«ng thÓ nhËn th­ëng ë môc nµy!<color>")
	end
end

_SectTable = 
{
	[1] = {"shaolin", "ThiÕu L©m ph¸i", 0, 0, 1, 72},
	[2] = {"tianwang", "Thiªn V­¬ng Bang", 0, 1, 3, 79},
	[3] = {"tangmen", "§­êng M«n", 1, 2, 3, 76},
	[4] = {"wudu", "Ngò §éc Gi¸o", 1, 3, 2, 80},
	[5] = {"emei", "Nga My ph¸i", 2, 4, 1, 74},
	[6] = {"cuiyan", "Thóy Yªn m«n", 2, 5, 3, 67},
	[7] = {"gaibang", "C¸i Bang", 3, 6, 1, 78},
	[8] = {"tianren", "Thiªn NhÉn Gi¸o", 3, 7, 2, 81},
	[9] = {"wudang", "Vâ §ang ph¸i", 4, 8, 1, 73},
	[10] = {"kunlun", "C«n L«n ph¸i", 4, 9, 3, 75},
}

--==================================================================================

function ReceiveAwardActive(RankType, RankNum)
	local TitleIDAward
	local TitleIDName
	local Xu1
	if RankType == 1 then
		TitleIDAward = _TitleTopLvl[RankNum].TitleID
		TitleIDName = _TitleTopLvl[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 2 then
		TitleIDAward = _TitleTopMoney[RankNum].TitleID
		TitleIDName = _TitleTopMoney[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 3 then
		TitleIDAward = _TitleFaction[GetFaction()][GetSex()].TitleID
		TitleIDName = _TitleFaction[GetFaction()][GetSex()].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	end
	local TimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
	if tonumber(date("%w")) == 0 then
		TimeActive = (24 - tonumber(GetLocalDate("%H")))
	end
-----------------------------------------------------------------------------------
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nServerTime = GetCurServerTime()+ (7*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 

	if (GetTask(nThuongTop_1_2) ~= nWeekDay) then
	SetTask(nThuongTop_1_2, nWeekDay)
	SetTask(nThuongTop_1, 0)
	SetTask(nThuongTop_2, 0)
	SetTask(nThuongTop_3, 0)
	end
	
	if (GetTask(nThuongTop_1) >= 1) then
		Talk(1,"","C¸c h¹ ®· nhËn th­ëng råi")
		return 1
	end
	
	Title_AddTitle(TitleIDAward, 2, nTime)
	Title_ActiveTitle(TitleIDAward)
	SetTask(nThuongTop_1, 1)
	SetTask(1122, TitleIDAward)
	for i = 1, Xu1 do
	AddStackItem(1,4,417,1,1,0,0,0)
	end
	tbAwardTemplet:GiveAwardByList(tbAwardRank[RankNum], "PhÇn th­ëng ®ua top")
	Say("Chóc mõng ®¹i hiÖp ®· nhËn th­ëng Top Cao Thñ thµnh c«ng")
--------------------------------------------------------------------------------------------
end
-------
function ReceiveAwardActive2(RankType, RankNum)
	local TitleIDAward
	local TitleIDName
	local Xu1
	if RankType == 1 then
		TitleIDAward = _TitleTopLvl[RankNum].TitleID
		TitleIDName = _TitleTopLvl[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 2 then
		TitleIDAward = _TitleTopMoney[RankNum].TitleID
		TitleIDName = _TitleTopMoney[RankNum].TitleName
		Xu1 = _TitleTopMoney[RankNum].Xu
	elseif RankType == 3 then
		TitleIDAward = _TitleFaction[GetFaction()][GetSex()].TitleID
		TitleIDName = _TitleFaction[GetFaction()][GetSex()].TitleName
		Xu1 = _TitleFaction[GetFaction()][GetSex()][RankNum].Xu
	end
	local TimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
	if tonumber(date("%w")) == 0 then
		TimeActive = (24 - tonumber(GetLocalDate("%H")))
	end
-----------------------------------------------------------------------------------
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nServerTime = GetCurServerTime()+ (7*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 

	if (GetTask(nThuongTop_1_2) ~= nWeekDay) then
	SetTask(nThuongTop_1_2, nWeekDay)
	SetTask(nThuongTop_1, 0)
	SetTask(nThuongTop_2, 0)
	SetTask(nThuongTop_3, 0)
	end

	
	if (GetTask(nThuongTop_2) >= 1) then
		Talk(1,"","C¸c h¹ ®· nhËn th­ëng råi")
		return 1
	end
	
	Title_AddTitle(TitleIDAward, 2, nTime)
	Title_ActiveTitle(TitleIDAward)
	SetTask(nThuongTop_2, 1)
	SetTask(1122, TitleIDAward)
	for i = 1, Xu1 do
	AddStackItem(1,4,417,1,1,0,0,0)
	end
	Say("Chóc mõng ®¹i hiÖp ®· nhËn th­ëng Top Phó hé thµnh c«ng")
--------------------------------------------------------------------------------------------
end
-------
function ReceiveAwardActive3(RankType, RankNum)
	local TitleIDAward
	local TitleIDName
	local Xu1
	if RankType == 1 then
		TitleIDAward = _TitleTopLvl[RankNum].TitleID
		TitleIDName = _TitleTopLvl[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 2 then
		TitleIDAward = _TitleTopMoney[RankNum].TitleID
		TitleIDName = _TitleTopMoney[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 3 then
		TitleIDAward = _TitleFaction[GetFaction()][GetSex()].TitleID
		TitleIDName = _TitleFaction[GetFaction()][GetSex()].TitleName
		Xu1 = _TitleFaction[GetFaction()][GetSex()].Xu
	end
	local TimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
	if tonumber(date("%w")) == 0 then
		TimeActive = (24 - tonumber(GetLocalDate("%H")))
	end
-----------------------------------------------------------------------------------
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nServerTime = GetCurServerTime()+ (7*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 

	if (GetTask(nThuongTop_1_2) ~= nWeekDay) then
	SetTask(nThuongTop_1_2, nWeekDay)
	SetTask(nThuongTop_1, 0)
	SetTask(nThuongTop_2, 0)
	SetTask(nThuongTop_3, 0)
	end

	
	if (GetTask(nThuongTop_3) >= 1) then
		Talk(1,"","C¸c h¹ ®· nhËn th­ëng råi")
		return 1
	end
	
	Title_AddTitle(TitleIDAward, 2, nTime)
	Title_ActiveTitle(TitleIDAward)
	SetTask(nThuongTop_3, 1)
	SetTask(1122, TitleIDAward)
	for i = 1, Xu1 do
	AddStackItem(1,4,417,1,1,0,0,0)
	end
	Say("Chóc mõng ®¹i hiÖp ®· nhËn th­ëng Top m«n ph¸i thµnh c«ng")
--------------------------------------------------------------------------------------------
end

--==================================================================================

function ViewTOP(sel)
	local Str = ""
	if sel == 1 then
		if FALSE(_PlayersNameTb["TopCaoThu"][1].Name) then
			Str = "<color=Orange>LÔ quan: <color>HiÖn t¹i ch­a cã xÕp h¹ng, xin ®¹i hiÖp ®îi th«ng b¸o!\n"
		else
			for i = 1, 4 do
				Str = Str.."Cao thñ Top [<color=yellow>"..i.."<color>]: <color=fire>".._PlayersNameTb["TopCaoThu"][i].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopCaoThu"][i].Level.."<color>\n"
			end
		end
	elseif sel == 2 then
		if FALSE(_PlayersNameTb["TopPhuHo"][1].Name) then
			Str = "<color=Orange>LÔ quan: <color>HiÖn t¹i ch­a cã xÕp h¹ng, xin ®¹i hiÖp ®îi th«ng b¸o!\n"
		else
			for i = 1, 4 do
				Str = Str.."Phó hé TOP [<color=yellow>"..i.."<color>]: <color=fire>".._PlayersNameTb["TopPhuHo"][i].Name.."<color> - TiÒn: <color=green>".._PlayersNameTb["TopPhuHo"][i].Money.."<color> l­îng\n"
			end
		end
	elseif sel == 3 then
		if FALSE(_PlayersNameTb["TopMonPhai"]["shaolin"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña ThiÕu l©m<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>ThiÕu l©m<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["shaolin"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["shaolin"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["tianwang"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña Thiªn v­¬ng<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>Thiªn v­¬ng<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["tianwang"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["tianwang"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["tangmen"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña §­êng m«n<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>§­êng m«n<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["tangmen"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["tangmen"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["wudu"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña Ngò ®éc<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>Ngò ®éc<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["wudu"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["wudu"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["emei"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña Nga my<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>Nga my<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["emei"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["emei"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["cuiyan"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña Thóy yªn<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>Thóy yªn<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["cuiyan"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["cuiyan"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["gaibang"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña C¸i bang<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>C¸i bang<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["gaibang"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["gaibang"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["tianren"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña Thiªn nhÉn<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>Thiªn nhÉn<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["tianren"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["tianren"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["wudang"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña Vâ ®ang<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>Vâ ®ang<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["wudang"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["wudang"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["kunlun"].Name) then
			Str = Str.."<color=white>HiÖn ch­a cã danh s¸ch cña C«n l«n<color>\n"
		else
			Str = Str.."Cao thñ <color=yellow>C«n l«n<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["kunlun"].Name.."<color> - §¼ng cÊp: <color=green>".._PlayersNameTb["TopMonPhai"]["kunlun"].Level.."<color>\n"
		end
	end
	CreateNewSayEx("<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>"..Str, {{"Quay l¹i", GetAwardTOPPlayers}, {"KÕt thóc ®èi tho¹i", OnCancel}})
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end

function OnCancel()
end
