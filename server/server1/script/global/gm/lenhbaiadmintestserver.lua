IL("TITLE");
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\common.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\pgaming\\testserver.lua")
Include("\\script\\global\\general\\thunghiem\\main.lua")
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\systemconfig.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\general\\nguyenlieuevent12thang.lua")
Include("\\script\\global\\pgaming\\trangbixanh\\tuychontrangbixanh.lua")
Include("\\script\\global\\gm\\gm_lib.lua");
Include("\\script\\global\\gm\\gm_help.lua");
Include("\\script\\global\\gm\\gm_script.lua");
-- Tr­íc khi sö dông ®­îc chøc n¨ng GM, ng­êi ch¬i ph¶i nhËp mËt khÈu
function GMPassword()
	local nResult, nIdx = CheckGameMaster()
	if (nResult == 0) then
		Talk(1, "", "B¹n kh«ng ph¶i lµ <color=red>GM<color>, kh«ng thÓ sö dông vËt phÈm nµy");
	return 0 end

	local szName = GetName();
	local szAccount = GetAccount();
	local nIsLogin = GetTaskTemp(TASKTEMP_LOGIN_LBGM);
	if (nIsLogin == 1) then
		DialogMain();
	return 1 end
	
	g_AskClientStringEx("", 1, 50, "NhËp mËt khÈu:", {EnterGMPassword, { nIdx, szAccount, szName}})
end

function EnterGMPassword(nIdx, szAccount, szName, szPassword)
	if (TAB_LIST_GAMEMASTER[nIdx]["Password"] ~= szPassword) then
		Talk(1, "", "MËt khÈu kh«ng ®óng, vui lßng kiÓm tra l¹i!");
	return 0 end
	DialogMain();
	SetTaskTemp(TASKTEMP_LOGIN_LBGM, 1)
	Msg2Player("B¹n ®· nhËp mËt khÈu ®óng, ®¨ng nhËp thµnh c«ng! B©y giê cã thÓ sö dông ®­îc chøc n¨ng dµnh cho GM.")
end

TITLEDIALOG = "Tªn nh©n vËt: <color=green>%s<color>\n".."Tªn tµi kho¶n: <color=green>%s<color>\n".."Täa ®é: <color=green>%d, %d/%d<color>" 
function DialogMain(nItemIndex)
	dofile("script/global/gm/lenhbaiadmintestserver.lua")
		local strFaction = GetFaction()
		local nW,nX,nY = GetWorldPos();
		local tbSay = {format(TITLEDIALOG, GetName(), GetAccount() ,nW,nX,nY)};
			tinsert(tbSay, "Test Server/testserver");	
			tinsert(tbSay, "Xãa toµn bé item trong hµnh trang/XoaItemHanhTrangGM");
			tinsert(tbSay, "NhËn nguyªn liÖu ho¹t ®éng/nguyenlieuhoatdong");
			--tinsert(tbSay, "NhËn trang bÞ xanh tïy chän op 1 dßng/TrangBiXanhOf1DongTuyChon");
			tinsert(tbSay, "LÊy vËt phÈm/TakeSpecifiedItem");			
			tinsert(tbSay, "Kü n¨ng/SkillsSystem");
			tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")			
		CreateTaskSay(tbSay)
	return 1;
end
--------------------------------------------------------------
--						Nguyªn LiÖu Ho¹t §éng						--
--------------------------------------------------------------

function nguyenlieuhoatdong()
		local strFaction = GetFaction()
		local nW,nX,nY = GetWorldPos();
		local tbSay = {format(TITLEDIALOG, GetName(), GetAccount() ,nW,nX,nY)};	
			if EventTuDong == 1 then
			tinsert(tbSay, "NhËn nguyªn liÖu event/NguyenLieuEvent");
			end
			tinsert(tbSay, "Nguyªn LiÖu N©ng CÊp Ngùa/nguyenlieunangcapngua");
			tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function nguyenlieunangcapngua()
		local strFaction = GetFaction()
		local nW,nX,nY = GetWorldPos();
		local tbSay = {format(TITLEDIALOG, GetName(), GetAccount() ,nW,nX,nY)};	
			tinsert(tbSay, "NhËn 1 bé n©ng cÊp chiÕn m·/cotuoivadaythung");
			tinsert(tbSay, "NhËn ®iÓm tÝch lòy n©ng cÊp 10.000 ®iÓm/bacdauthuanmadon");
			tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function cotuoivadaythung()
AskClientForNumber("cotuoivadaythung2",0,1999,"NhËp Sè L­îng:") 
end

function cotuoivadaythung2(num)
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4891,1,0,0},nCount = num}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4892,1,0,0},nCount = num}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4894,1,0,0},nCount = num}, "test", 1);
end


function bacdauthuanmadon()
	SetTask(5953,10000)
Talk(1,"","Vµo NPC N©ng CÊp ThÇn M· ®Ó rót ®iÓm.")
end
--------------------------------------------------------------
--						Xãa Hµnh Trang						--
--------------------------------------------------------------
function XoaItemHanhTrangGM()
	Say("B¹n cã muèn xãa toµn bé kh«ng?", 2, "§óng vËy!/xoatoanbogm", "Ta nhÇm./no")
end

function xoatoanbogm()
--Msg2Player("Xãa thµnh c«ng!")
local tbEquip  = GetRoomItems(0)
for _,v in tbEquip do
RemoveItemByIndex(v)
end
ItemIndex = AddItem(6,1,4851,0,0,0)
ItemIndex2 = AddItem(6,1,1266,0,0,0)
ItemIndex3 = AddItem(6,1,4850,0,0,0)
ItemIndex4 = AddItem(6,1,4890,0,0,0)
SetItemBindState(ItemIndex, -2)
SetItemBindState(ItemIndex2, -2)
SetItemBindState(ItemIndex3, -2)
SetItemBindState(ItemIndex4, -2)
end
--------------------------------------------------------------
--						LÊy VËt PhÈm						--
--------------------------------------------------------------
function TakeSpecifiedItem()
%tbAloneScript:TakeSpecifiedItem()
end
function SkillsSystem()
%tbAloneScript:SkillsSystem()
end
----------------------------------
function GMLoginInGame()
	if (CheckGameMaster() == 2) then
		if (CalcEquiproomItemCount(6,1,4890,-1) == 0) then
			local nItemIndex = AddItem(6,1,4890,1,0,0);
			SetItemBindState(nItemIndex, -1);
		end
		if (CalcEquiproomItemCount(6,1,1266,-1) == 0) then
			local nItemIndex = AddItem(6,1,1266,1,0,0);
			SetItemBindState(nItemIndex, -1);
		end
		if (GetLevel() < 5) then
			ST_LevelUp(5-GetLevel())
		end
		
		if (Title_GetActiveTitle() ~= 5000) then
			SetTask(1122, 5000)
			Title_AddTitle(5000, 1, 30*24*60*60*18);
			Title_ActiveTitle(5000);
		end
	end
end

function Write()
	local data = "goldequip.txt";
	local str = "";
	for i = 5670, 5919 do
		local nItemIndex = NewItemEx(4,0,1,0,i-1,0,0,0,0,0,0,0,0,0,0,0)
		str = str..format("\t\t{\"%s\",%d},\n",GetItemName(nItemIndex),i)
	end
	-- for i = 4813, 4832 do
		-- local nItemIndex = NewItemEx(4,0,1,0,i-1,0,0,0,0,0,0,0,0,0,0,0)
		-- str = str..format("\t\t{\"%s\",%d},\n",GetItemName(nItemIndex),i)
	-- end
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

-- KiÓm tra GM (kiÓm tra xem tµi kho¶n, nh©n vËt nµy cã ph¶i lµ GM hay kh«ng?)
-- Gi¸ trÞ tr¶ vÒ: [-2]: Lçi table - [0]: kh«ng ph¶i GM - [1]: tµi kho¶n lµ GM - [2]: tªn tµi kho¶n vµ nh©n vËt lµ GM
--	Gi¸ trÞ thø 2: sè thø tù cña TK
function CheckGameMaster()
	if not (TAB_LIST_GAMEMASTER) then
		print("Khong tim thay table!")
	return -2 end
	
	for i = 1, getn(TAB_LIST_GAMEMASTER) do
		if not (TAB_LIST_GAMEMASTER[i]["Account"]) then
			print("Khong tim thay string [Account] trong danh sach table!!!")
		return -2 end
		
		if not (TAB_LIST_GAMEMASTER[i]["Player"]) then
			print("Khong tim thay table [Player] trong danh sach table!!!")
		return -2 end
		
		if not (TAB_LIST_GAMEMASTER[i]["Password"]) then
			print("Khong tim thay string [Password] trong danh sach table!!!")
		return -2 end
		
		if not (TAB_LIST_GAMEMASTER[i]["Rank"]) then
			print("Khong tim thay string [Rank] trong danh sach table!!!")
		return -2 end
		
		if (TAB_LIST_GAMEMASTER[i]["Account"] == GetAccount()) then
			for k = 1, getn(TAB_LIST_GAMEMASTER[i]["Player"]) do
				if (TAB_LIST_GAMEMASTER[i]["Player"][k] == GetName()) then
				return 2, i end
			end
		return 1, i end
	end
return 0 end

function StartGameServer()
	for i = 1, getn(TAB_LINKFILEDATA) do
		FileSystem_LoadFile(TAB_LINKFILEDATA[i][1])
	end
end

-- ThiÕt lËp d÷ liÖu
--		+ szLinkFile: ®­êng dÉn file d¹ng "\\data\\log.txt"
--		+ szSection: "SECTION"
--		+ szKey: Tõ khãa cÇn load
--		+ szValue: Gi¸ trÞ cña tõ khãa ®ã
function FileSystem_SetData(szLinkFile, szSection, szKey, szValue)
	IniFile_SetData(szLinkFile, szSection, szKey, szValue)
end

function FileSystem_SaveData(szLinkFile)
	IniFile_Save(szLinkFile, szLinkFile)
end

-- LÊy d÷ liÖu
--		+ szLinkFile: ®­êng dÉn file d¹ng "\\data\\log.txt"
--		+ szSection: "SECTION"
--		+ szKey: Tõ khãa cÇn load
function FileSystem_GetData(szLinkFile, szSection, szKey)
	return IniFile_GetData(szLinkFile, szSection, szKey)
end

-- Load d÷ liÖu
--		+ szLinkFile: ®­êng dÉn file d¹ng "\\data\\log.txt"
function FileSystem_LoadFile(szLinkFile)
	File_Create(szLinkFile)
	return IniFile_Load(szLinkFile, szLinkFile)
end

-- LÊy danh s¸ch trong file:
--		+ szLinkFile: ®­êng dÉn file d¹ng "\\data\\log.txt"
--		+ szSection = "TABLE"
--> Gi¸ trÞ tr¶ vÒ: Sè l­îng dßng, danh s¸ch table
function FileSystem_GetCount(szLinkFile, szSection)
	local tbKey = {}
	local nFile = TabFile_Load(szLinkFile, szSection)
	if nFile ~= 1 then
		print("TÖp tin kh«ng tån t¹i hoÆc ch­a cã d÷ liÖu!")
		return 0
	end
	
	for i = 2, TabFile_GetRowCount(szSection) do
		local szKey = TabFile_GetCell(szSection, i, "["..szSection.."]")
		local strKey = split(szKey, "=")
		if strKey[2] then
			tbKey[getn(tbKey)+1] = strKey;
		end
	end
	
	return getn(tbKey), tbKey
end

function GetIP()
	local tbIP = split(GetIP(), " : ")
	return tbIP[1], tbIP[2]
end

function OnTimer()
	-- SetFightState(0); --ThiÕt lËp tr¹ng th¸i chiÕn ®Êu
	-- ForbidChangePK(1); --CÊm chuyÓn PK
	-- SetPKFlag(2); --ThiÕt lËp PK
	-- SetChatFlag(1); --CÊm ch¸t
	-- DisabledStall(1); --CÊm bµy b¸n
	-- ForbitTrade(1); --CÊm giao dÞch
	-- DisabledUseTownP(1); --CÊm sö dông THP
	-- ForbidEnmity(1); --CÊm cõu s¸t
	-- SetCreateTeam(0); --ThiÕt lËp t¹o tæ ®éi
	local nPlayerIndex = PlayerIndex or 0;
	local szName = GetName() or "";
	local szAccount = GetAccount() or "";
	local nTimerOut = GetTaskTemp(TASKTEMP_KICKOUT);
	local nTime = GetCurServerTime();
	local nTimeNow = (nTimerOut - nTime) + TIMER_KICKOUT ;
	Msg2Player("<color=cyan>B¹n cßn "..nTimeNow.." gi©y nöa sÏ bÞ hÖ thèng kick ra khái game.")
	if (nTimeNow == 0) then
		SetTaskTemp(TASKTEMP_KICKOUT, 0)
		OfflineLive(nPlayerIndex);
		KickOutSelf(nPlayerIndex);
		print(format("[LOCKED] - Nguoi choi %s(%s) da bi kick ra khoi server!", szName, szAccount));
		StopTimer(TIMETASK_ID);
	end
end
