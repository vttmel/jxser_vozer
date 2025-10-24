-------------------------------------------------------------------------------------
-- 
-------------------------------------------------------------------------------------
IL("TITLE");
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
IncludeLib("TASKSYS")
IncludeLib("PARTNER");
IncludeLib("BATTLE");
IncludeLib("RELAYLADDER")
IncludeLib("TONG") 
IncludeLib("LEAGUE")
Include("\\script\\lib\\common.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\global\\gm\\gm_lib.lua");
Include("\\script\\global\\gm\\gm_help.lua");
Include("\\script\\global\\limitaccount_ip.lua");
Include("\\script\\global\\general\\thunghiem\\main.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\findboss.lua")
Include("\\script\\global\\pgaming\\testserver.lua")
Include("\\script\\global\\pgaming\\reloadscript.lua")
Include("\\script\\global\\pgaming\\baotriserver.lua")
Include("\\script\\global\\pgaming\\theatm.lua")
Include("\\script\\global\\pgaming\\liendau.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\xephang\\awardplayerstop.lua");


tbAloneScript = {};
tbAloneScript.nPak = curpack()
-- Tr­íc khi sö dông ®­îc chøc n¨ng GM, ng­êi ch¬i ph¶i nhËp mËt khÈu
function tbAloneScript:GMPassword()
	local nResult, nIdx = self:CheckGameMaster()
	if (nResult == 0) then
		Talk(1, "", "B¹n kh«ng ph¶i lµ <color=red>GM<color>, kh«ng thÓ sö dông vËt phÈm nµy");
	return 0 end

	local szName = GetName();
	local szAccount = GetAccount();
	local nIsLogin = GetTaskTemp(TASKTEMP_LOGIN_LBGM);
	if (nIsLogin == 1) then
		self:DialogMain();
	return 1 end
	
	g_AskClientStringEx("", 1, 50, "NhËp mËt khÈu:", {self.EnterGMPassword, {self, nIdx, szAccount, szName}})
end

function tbAloneScript:EnterGMPassword(nIdx, szAccount, szName, szPassword)
	if (TAB_LIST_GAMEMASTER[nIdx]["Password"] ~= szPassword) then
		Talk(1, "", "MËt khÈu kh«ng ®óng, vui lßng kiÓm tra l¹i!");
	return 0 end
	self:DialogMain();
	SetTaskTemp(TASKTEMP_LOGIN_LBGM, 1)
	Msg2Player("B¹n ®· nhËp mËt khÈu ®óng, ®¨ng nhËp thµnh c«ng! B©y giê cã thÓ sö dông ®­îc chøc n¨ng dµnh cho GM.")
end

function tbAloneScript:DialogMain()
	local szTitle = format("§©y lµ lÖnh bµi hç trî dµnh cho GM ®Ó qu¶n lý, ®iÒu hµnh m¸y chñ cña m×nh.");
	local tbOption = {};
		tinsert(tbOption, {"Qu¶n lý ng­êi ch¬i", self.ManagePlayerAccountSystem, {self}})
		tinsert(tbOption, {"Qu¶n lý m¸y chñ", self.ManagePlayerSystem, {self}})
	if (GetSkillState(733) == -1) then
		tinsert(tbOption, {"BËt tÝnh n¨ng tµng h×nh", self.GMHide, {self}})
	else
		tinsert(tbOption, {"T¾t tÝnh n¨ng tµng h×nh", self.GMShow, {self}})
	end
	if (IsOwnFeatureChanged() == 0) then
		tinsert(tbOption, {"BiÕn thµnh h×nh d¸ng GM", self.ChangeMask, {self}})
	else
		tinsert(tbOption, {"Håi phôc h×nh d¸ng ban ®Çu", self.RestoreMask, {self}})
	end
	if (Title_GetActiveTitle() ~= 5000) then
		tinsert(tbOption, {"BËt vßng s¸ng GM", self.HaloGM, {self}})
	else
		tinsert(tbOption, {"T¾t vßng s¸ng GM", self.HaloGM, {self}})
	end
		--tinsert(tbOption, {"T×m hiÓu vÒ tÝnh n¨ng qu¶n trÞ", self.GMHelp, {self}})
		tinsert(tbOption, {"Test ID NPC", self.TestIDNPC, {self}})
		tinsert(tbOption, {"Thay ®æi tr¹ng th¸i (mµu pk)", self.GMChangeCamp, {self}})
		tinsert(tbOption, {"NhËn trang th¸i (chiÕn ®Êu - phi chiÕn ®Êu)", self.chiendauphichiendau, {self}})
		-- tinsert(tbOption, {"Logs", self.Write, {self}})
		-- tinsert(tbOption, {"Load", self.Loadds, {self}})
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle..INFORMATION_DEVELOPER, tbOption)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------
--						ChiÕn §Êu vµ Phi ChiÕn §Êu													   --
--------------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:chiendauphichiendau()
		local szTitle = format("Mêi GM <color=red>%s<color> lùa chän chøc n¨ng hç trî qu¶n trÞ:", GetName());
	local tbOption = {}
		tinsert(tbOption, {"ChiÕn ®Êu", chiendau})
		tinsert(tbOption, {"Phi ChiÕn §Êu", phichiendau})	
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle..INFORMATION_DEVELOPER, tbOption)
end

function chiendau()
SetFightState(1); 
end

function phichiendau()
SetFightState(0); 
end

--------------------------------------------------------------------------------------------------------------------------------------------------------
--						Test ID NPC													   --
--------------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:TestIDNPC()
AskClientForNumber("Add_Npc",0,2001,"NhËp ID Npc")
end

function Add_Npc(num)
local w,x,y = GetWorldPos()
	local nId = AddNpcNew(num,1,w,x*32,y*32,"\\script\\gm_tool\\gmrole.lua",0)
	AddTimer(5* 18, "OnTimeout", nNpcId)
end

function AddNpcNew(nId, nLevel, nMap, nX, nY, szScript, nCurCamp, szName, nSeries)
	nNpcId = AddNpc(nId,nLevel,SubWorldID2Idx(nMap),nX,nY)
	if(szName~=nil) then
		SetNpcName(nNpcId, szName)
	end
	if(nSeries~=nil) then
		SetNpcSeries(nNpcId, nSeries)
	end
	return nNpcId
end

function OnTimeout(nNpcId)
DelNpc(nNpcId);
end
--------------------------------------------------------------------------------------------------------------------------------------------------------
--						Hæ Trî Server														   --
--------------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:HoTroServer()
	testserver()
end
--------------------------------------------------------------------------------------------------------------------------------------------------------
--						T×m Boss Hoµng Kim													   --
--------------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:TimBossHoangKim()
	findgoldboss(1,12) 
end
--------------------------------------------------------------------------------------------------------------------------------------------------------
--						Gäi Boss Hoµng Kim													   --
--------------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:GoiBossHoangKim()
BossHK(f_bossx,f_bossy)
end

TBBOSS  = 
{ --tªn boss,id boss, tû lÖ r¬i ®å,series boss,nLevel
	[1]={	szName = "HuyÒn Gi¸c §¹i S­",		nBossId = 740,	nRate = 322,	nSeries = 0,	nLevel = 95},
	[2]={	szName = "§­êng BÊt NhiÔm",			nBossId = 741,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[3]={	szName = "B¹ch Doanh Doanh",		nBossId = 742,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[4]={	szName = "Thanh TuyÖt S­ Th¸i",		nBossId = 743,	nRate = 341,	nSeries = 2,	nLevel = 95},
	[5]={	szName = "Yªn HiÓu Tr¸i",			nBossId = 744,	nRate = 336,	nSeries = 2,	nLevel = 95},
	[6]={	szName = "Hµ Nh©n Ng·",				nBossId = 745,	nRate = 321,	nSeries = 3,	nLevel = 95},
	[7]={	szName = "Tõ §¹i Nh¹c",				nBossId = 746,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[8]={	szName = "TuyÒn C¬ Tö",				nBossId = 747,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[9]={	szName = "Hµn Ngu Dèt",				nBossId = 748,	nRate = 342,	nSeries = 3,	nLevel = 95},
	[10]={	szName = "§o¹n Méc DuÖ",			nBossId = 565,	nRate = 227,	nSeries = 3,	nLevel = 95},
	[11]={	szName = "Cæ B¸ch",					nBossId = 566,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[12]={	szName = "§­êng Phi YÕn",			nBossId = 1366,	nRate = 200,	nSeries = 1,	nLevel = 95},	
	[13]={	szName = "Hµ Linh Phiªu",			nBossId = 568,	nRate = 200,	nSeries = 2,	nLevel = 95},
	[14]={	szName = "Lam Y Y",					nBossId = 582,	nRate = 200,	nSeries = 1,	nLevel = 95},
	[15]={	szName = "M¹nh Th­¬ng L­¬ng",		nBossId = 583,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[16]={	szName = "Gia LuËt TÞ Ly",			nBossId = 563,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[17]={	szName = "§¹o Thanh Ch©n Nh©n",		nBossId = 562,	nRate = 200,	nSeries = 4,	nLevel = 95},
	[18]={	szName = "V­¬ng T¸",				nBossId = 739,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[19]={	szName = "HuyÒn Nan §¹i S­",		nBossId = 1365,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[20]={	szName = "Chung Linh Tó",			nBossId = 567,	nRate = 200,	nSeries = 2,	nLevel = 95},
	[21]={	szName = "Thanh Liªn Tö",			nBossId = 1368,	nRate = 200,	nSeries = 4,	nLevel = 95},
	
}

function BossHK(f_bossx,f_bossy)

	if (not f_bossx) then
		f_bossx1 = 1;
		f_bossy1 = 12;
	else
		f_bossx1 = f_bossx;
		f_bossy1 = f_bossy;
	end
	
	if (f_bossy1 - f_bossx1 > 11) then
		f_bossy1 = f_bossx1 + 11;
	end
	
	local n_count = getn(TBBOSS);
	local tb = {}
	
	tb = {GetName().." b¹n muèn th¶ boss nµo?"}
	
	for i = f_bossx1, f_bossy1 do
		tinsert(tb,format("%s/#PickBoss(%d)",TBBOSS[i].szName,i));
	end

	if (f_bossx1 ~= 1) then
		tinsert(tb, "Trang tr­íc/#BossHK( 1,"..(f_bossx1-1)..")");
	end
	
	if (f_bossy1 < n_count) then
		tinsert(tb, "Trang sau/#BossHK( "..(f_bossy1+1)..","..n_count..")");
	end
	tinsert(tb,"§Ó ta suy nghÜ ®·/cancel");
	CreateTaskSay(tb)
	
end

function PickBoss(nIndex)
	if GetFightState() == 0 then 
		Talk(1,"","Kh«ng thÓ th¶ boss ë nh÷ng n¬i phi chiÕn ®Êu ®­îc.")
		return 
	end
	local item = TBBOSS[nIndex];
	local nw,nx,ny = GetWorldPos();
	local index = AddNpcEx(item.nBossId,item.nLevel,item.nSeries,SubWorldID2Idx(nw),nx*32,ny*32,1,item.szName,1);
	SetNpcDeathScript(index,"\\script\\global\\pgaming\\missions\\bosshoangkim\\bossdai\\goldboss_death.lua")		
	SetNpcParam(index,1,item.nBossId); --l­u id boss.
	SetNpcTimer(index,120*60*18)
	local W,X,Y = GetWorldPos();
	str = format("<color=yellow>%s<color> ®· xuÊt hiÖn t¹i <color=yellow>%s(%d,%d)<color>",item.szName,SubWorldName(SubWorld),floor(X/8),floor((Y+5)/16))
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, str)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

function cancel()
end

-- function tbAloneScript:Loadds()
	-- LoadScript("\\script\\global\\gm\\gm_script.lua")
-- end

function tbAloneScript:ManagePlayerSystem()
	local szTitle = format("Mêi GM <color=red>%s<color> lùa chän chøc n¨ng hç trî qu¶n trÞ:", GetName());
	local tbOption = {}
		tinsert(tbOption, {"Reload Script", self.ReloadScriptTb2, {self}})
		--tinsert(tbOption, {"B¶o tr× server", self.BaoTriServer, {self}})
		tinsert(tbOption, {"Khëi ®éng ho¹t ®éng game", self.KhoiDongHoatDongGame, {self}})
		tinsert(tbOption, {"CËp nhËt xÕp h¹ng", self.capnhatbangxephang, {self}})
		tinsert(tbOption, {"Chøc n¨ng th«ng b¸o", self.NotificationManage, {self}})
		if GioiHanLoginIP == 1 then
		tinsert(tbOption, {"T¨ng giíi h¹n ®¨ng nhËp cho IP", self.GioiHanIP, {self}})
		end
		tinsert(tbOption, {"DÞch chuyÓn tøc thêi", self.MoveToPosition, {self}})		
		tinsert(tbOption, {"Gäi Boss Hoµng Kim", self.GoiBossHoangKim, {self}})
		tinsert(tbOption, {"T×m Boss Hoµng Kim", self.TimBossHoangKim, {self}})		
		tinsert(tbOption, {"Th«ng tin Liªn §Êu", self.FunctionLeagueMatch2, {self}})		
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle..INFORMATION_DEVELOPER, tbOption)
end

function tbAloneScript:FunctionLeagueMatch2()
FunctionLeagueMatch()
end
----------------------------------------------------------------------------------------------------------
function tbAloneScript:capnhatbangxephang()
	local tbSay = {"<dec>Mêi GM tr·i nghiÖm chøc n¨ng trong game"};
		tinsert(tbSay, "CËp nhËt b¶ng xÕp h¹ng/capnhatbangxephang2")
		tinsert(tbSay, "CËp nhËt b¶ng xÕp h¹ng ®ua top/bangxephangduatop2")
		tinsert(tbSay, "§ãng./no");
	CreateTaskSay(tbSay);
end

function capnhatbangxephang2()
	RemoteExc("\\script\\xephang\\worldrank_hook.lua", "RankHook:UpdateRank",{})
	Talk(1, "", "CËp NhËt xÕp h¹ng thµnh c«ng !!");
	return
end

function bangxephangduatop2()
UpdateTOPPlayerPrivWeek()
end

----------------------------------------------------------------------------------------------------------
function tbAloneScript:KhoiDongHoatDongGame()
	local tbSay = {"<dec>Mêi GM tr·i nghiÖm chøc n¨ng trong game"};
		tinsert(tbSay, "Khëi ®éng Tèng Kim/KDTongKim")
		tinsert(tbSay, "Khëi ®éng Phong L¨ng §é/PLD1")
		--tinsert(tbSay, "Khëi ®éng Boss Hoµng Kim/BossHK123")
		tinsert(tbSay, "§ãng./no");
	CreateTaskSay(tbSay);
end
----------
function BossHK123()
	local tbSay = {"<dec>Mêi GM tr·i nghiÖm chøc n¨ng trong game"};
		tinsert(tbSay, "Gäi Boss/GoiBossHK123")
		tinsert(tbSay, "§ãng./no");
	CreateTaskSay(tbSay);
end

Include("\\script\\global\\pgaming\\missions\\bosshoangkim\\bosstieu\\smallboss_main.lua")

function GoiBossHK123()
smallboss_call2world()
end
-----------------------------
Include("\\script\\battles\\marshal\\mission.lua")
Include("\\script\\battles\\marshal\\head.lua")
Include("\\script\\battles\\marshal\\smalltimer.lua")
Include("\\script\\battles\\battlemain.lua")
function KDTongKim()
	local tbSay = {"<dec>Mêi GM tr·i nghiÖm chøc n¨ng trong game"};
		tinsert(tbSay, "B¾t ®Çu b¸o danh/BaoDanhTK")
		tinsert(tbSay, "B¾t ®Çu chiÕn ®Êu/BatDauChienDau")
		tinsert(tbSay, "KÕt thóc chiÕn ®Êu/KetThucChienDau")
		tinsert(tbSay, "§ãng./no");
	CreateTaskSay(tbSay);
end

function BaoDanhTK()
GetMissionV(17)

end

function BatDauChienDau()
RunMission(16)
%tbTalkDailyTask:AddTalkNpc(BT_GetGameData(380), BT_GetGameData(380));
end

function KetThucChienDau()
EndMission()
end
--------------------------------------------------------------------------
Include("\\script\\missions\\fengling_ferry\\fldmap_boat1.lua")
Include("\\script\\missions\\fengling_ferry\\mission.lua")
Include("\\script\\missions\\fengling_ferry\\fld_smalltimer.lua")
Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
function PLD1()
	local tbSay = {"<dec>Mêi GM tr·i nghiÖm chøc n¨ng trong game"};
		tinsert(tbSay, "B¾t ®Çu Phong L¨ng §é/BatDauPLD")
		tinsert(tbSay, "B¾t ®Çu chiÕn ®Êu/BatDauChienDauPLD")		
		tinsert(tbSay, "Gäi Boss Thñy TÆc §Çu LÜnh/BossTTDauLinh")
		tinsert(tbSay, "Gäi Boss Thñy TÆc §¹i §Çu LÜnh/BossTTDaiDauLinh")
		tinsert(tbSay, "KÕt Thóc Phong L¨ng §é/KetThucPLD")		
		tinsert(tbSay, "§ãng./no");
	CreateTaskSay(tbSay);
end

function BatDauPLD()
fenglingdu_main()
end

function BatDauChienDauPLD()
InitMission()
end

function BatDauChienDauPLD2()
for i=1, 30 do
posx, posy = fld_getadata(npcthiefpos)
local npcindex	= AddNpc(724, 95, SubWorld, posx, posy, 0, "Thñy TÆc");
SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\shuizeideath.lua");
end
SetFightState(1)
PutMessage("ThuyÒn ®i råi! 30 phót sau sÏ ®Õn bê B¾c Phong L¨ng §é.")
Msg2Player("ThuyÒn ®i råi! 30 phót sau sÏ ®Õn bê B¾c Phong L¨ng §é.")
JiluAttendCount()
RunMission(MISSIONID)
%tbTalkDailyTask:AddTalkNpc(SubWorldIdx2ID(SubWorld), SubWorldIdx2ID(SubWorld));
local nCount = GetMSPlayerCount(MISSIONID, 0)
local mapid = SubWorldIdx2ID(SubWorld)
if (mapid == 337) then
AddStatData("fld_chuan1canjiarenshu", nCount)
elseif (mapid == 338) then
AddStatData("fld_chuan2canjiarenshu", nCount)
elseif (mapid == 339) then
AddStatData("fld_chuan3canjiarenshu", nCount)
end
FLD_TIMER_1 = 20 * FRAME2TIME	
FLD_TIMER_2 = 39 * 60 * FRAME2TIME	
StartMissionTimer(15, 29, FLD_TIMER_1)		
StartMissionTimer(15, 28, FLD_TIMER_2)	
end

function BossTTDauLinh()
posx, posy = fld_getadata(npcthiefpos)
AddNpc(725, 85, SubWorld, posx, posy, 1, "Thñy TÆc §Çu LÜnh", 1)
SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
Msg2Player("<color=yellow>Thñy TÆc §Çu LÜnh ®· xuÊt hiÖn")
end

function BossTTDaiDauLinh()
posx, posy = fld_getadata(npcthiefpos)
AddNpc(1692, 85, SubWorld, posx, posy, 1, "Thñy TÆc §¹i §Çu LÜnh.", 1)
SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");				
Msg2Player("<color=yellow>Thñy TÆc §¹i §Çu LÜnh xuÊt hiÖn")
end

function KetThucPLD()
StopMissionTimer(15, 28)
StopMissionTimer(15 ,29)
for i = 1, 100 do 
SetMissionV(i , 0);
end
Msg2Player("§· ®Õn bê B¾c Phong L¨ng §é.")
G_ACTIVITY:OnMessage("FinishFengLingDu",tbPlayer);
local mapid = SubWorldIdx2ID(SubWorld)
if (mapid == 337) then
SetLogoutRV(0)
NewWorld(fld_landingpos(1))
SetFightState(1)
DisabledUseTownP(1) -- ÏÞÖÆÆä½øÈë·çÁê¶É±±°¶Ê¹ÓÃ»Ø³Ç·û
SetRevPos(175,1)	--Éè¶¨ËÀÍöÖØÉúµãÎªÎ÷É½´å
elseif (mapid == 338) then
SetLogoutRV(0)
NewWorld(fld_landingpos(2))
SetFightState(1)
DisabledUseTownP(1) -- ÏÞÖÆÆä½øÈë·çÁê¶É±±°¶Ê¹ÓÃ»Ø³Ç·û
SetRevPos(175,1)	--Éè¶¨ËÀÍöÖØÉúµãÎªÎ÷É½´å
elseif (mapid == 339) then
SetLogoutRV(0)
NewWorld(fld_landingpos(3))
SetFightState(1)
DisabledUseTownP(1) -- ÏÞÖÆÆä½øÈë·çÁê¶É±±°¶Ê¹ÓÃ»Ø³Ç·û
SetRevPos(175,1)	--Éè¶¨ËÀÍöÖØÉúµãÎªÎ÷É½´å
else
print("error:i don't know why")
end
CloseMission(15)
ClearMapNpc(worldid)	
ClearMapTrap(worldid) 
ClearMapObj(worldid)
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:BaoTriServer()
	local tbSay = {"<dec>Mêi GM tr·i nghiÖm chøc n¨ng trong game"};
		tinsert(tbSay, "§ång ý B¶o Tr×/DYBaoTriServer")
		tinsert(tbSay, "T¹m ng­ng b¶o tr×/StopBaoTri")
		tinsert(tbSay, "§ãng./no");
	CreateTaskSay(tbSay);
end
-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:ReloadScriptTb2()
ReloadScriptTb()
end
-----------------------------------------------------------------------------------------------------------------------------------------------------
--T¨ng giíi h¹n ip ®¨ng nhËp																	--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:GioiHanIP()
%LimitAccountPerIP:AskSetMax()
end
-----------------------------------------------------------------------------------------------------------------------------------------------------
--																						DÞch chuyÓn ®Õn vÞ trÝ																				--
-----------------------------------------------------------------------------------------------------------------------------------------------------

function tbAloneScript:MoveToPosition()
	g_AskClientStringEx(GetStringTask(TASK_S_POSITION), 0, 256, "Map,PosX,PosY:", {self.EnterPosition, {self}})
end

function tbAloneScript:EnterPosition(szPos)
	local tbPos = split(szPos, ",")
	local nMap = tonumber(tbPos[1])
	local nPosX = tonumber(tbPos[2])
	local nPosY = tonumber(tbPos[3])
	local nMove;
	if nPosX < 1000 and nPosY < 1000 then
		nPosX = nPosX*8
		nPosY = nPosY*16
	end
	
	nMove = NewWorld(nMap,nPosX, nPosY)
	AddSkillState(963, 1, 0, 18*3)
	
	if nMove ~= 1 then
		GMMsg2Player("DÞch chuyÓn ®Õn vÞ trÝ","ThÊt b¹i! VÞ trÝ kh«ng hîp lÖ, vui lßng kiÓm tra l¹i.")
		return
	end
	
	SetStringTask(TASK_S_POSITION, szPos)
	GMMsg2Player("DÞch chuyÓn ®Õn vÞ trÝ","<color=yellow>Thµnh c«ng!")
end
-----------------------------------------------------------------------------------------------------------------------------------------------------
--																TÝnh n¨ng giµnh cho GM																									--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:GMHide()
	AddSkillState(733,1,0,777600);
	Msg2Player("BËt chøc n¨ng Èn th©n cho GM");
end

function tbAloneScript:GMShow()
	AddSkillState(733,1,0,18*1);
	Msg2Player("T¾t chøc n¨ng Èn th©n cho GM");
end

function tbAloneScript:ChangeMask()
	ChangeOwnFeature(0,0,567);
	Msg2Player("BiÕn thµnh h×nh d¹ng GM");
end

function tbAloneScript:RestoreMask()
	RestoreOwnFeature();
	Msg2Player("Trë l¹i h×nh d¹ng ban ®Çu");
end

function tbAloneScript:HaloGM()
		if (Title_GetActiveTitle() ~= 5000) then
			SetTask(1122, 5000)
			Title_AddTitle(5000, 1, 30*24*60*60*18);
			Title_ActiveTitle(5000);
		else
			Title_RemoveTitle(5000)
		end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--																				VËt phÈm hç trî																		--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:SupportFeatureOther()
	local szTitle = format("Chµo mõng <color=red><player><color> tham gia m¸y chñ <servername>, ®­îc ph¸t triÓn bëi <dev>! §©y lµ lÖnh bµi hç trî dµnh cho GM ®Ó qu¶n lý, ®iÒu hµnh m¸y chñ cña m×nh.");
	local tbOption = {};
		tinsert(tbOption, {"Thay ®æi tr¹ng th¸i (mµu pk)", self.GMChangeCamp, {self}})
		tinsert(tbOption, {"Hñy bá vËt phÈm", DisposeItem})
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle..INFORMATION_DEVELOPER, tbOption)
end

function tbAloneScript:GMChangeCamp()
	local szTitle = "GM muèn ®æi sang mµu tr¹ng th¸i nµo d­íi ®©y?";
	local tbOption = {};
		tinsert(tbOption, {"LuyÖn c«ng (ch÷ tr¾ng)", self.GMChangeCampOK, {self, 0}})
		tinsert(tbOption, {"ChÝnh ph¸i (ch÷ vµng)", self.GMChangeCampOK, {self, 1}})
		tinsert(tbOption, {"Tµ ph¸i (ch÷ tÝm)", self.GMChangeCampOK, {self, 2}})
		tinsert(tbOption, {"Trung lËp (ch÷ xanh)", self.GMChangeCampOK, {self, 3}})
		tinsert(tbOption, {"S¸t thñ (ch÷ ®á)", self.GMChangeCampOK, {self, 4}})
		tinsert(tbOption, {"GM (ch÷ hång)", self.GMChangeCampOK, {self, 5}})
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle, tbOption)
end

function tbAloneScript:GMChangeCampOK(nCamp)
	if not (TAB_LISTCAMP[nCamp]) then
		print("Thieu du lieu nCamp trong table TAB_LISTCAMP!")
	return 0 end
	SetCamp(nCamp)
	SetCurCamp(nCamp)
	Msg2Player(TAB_LISTCAMP[nCamp])
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--																Ta muèn th«ng b¸o ®Õn ng­êi ch¬i															--
-----------------------------------------------------------------------------------------------------------------------------------------------------

function tbAloneScript:NotificationManage()
	local szTitle = "HiÖn t¹i cã 2 chøc n¨ng th«ng b¸o chÝnh, ®ã lµ:\n+ <color=red>TÇng sè thÕ giíi<color>: kªnh nµy th«ng b¸o trªn khung ch¸t t¸n gÉu trong giao diÖn ng­êi ch¬i.\n+ <color=red>TÇng sè m¸y chñ<color>: kªnh nµy th«ng b¸o ®Õn ng­êi ch¬i trong toµn m¸y chñ, néi dông ch¹y ch÷ ë phÝa trªn ®Çu nh©n vËt."
	local tbOption = {}
		tinsert(tbOption, {"Th«ng b¸o trªn tÇng sè thÕ giíi", g_AskClientStringEx, {"", 0,256,"Néi dung th«ng b¸o:", {self.EnterNotification, {self, 1}}}})
		tinsert(tbOption, {"Th«ng b¸o trªn tÇng sè m¸y chñ", g_AskClientStringEx, {"", 0,256,"Néi dung th«ng b¸o:", {self.EnterNotification, {self, 2}}}})
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle..INFORMATION_DEVELOPER, tbOption)
end

function tbAloneScript:EnterNotification(nType, szNotices)
	if szNotices == nil or szNotices == "" then
	return 0 end

	if (nType == 1) then
		--Msg2SubWorld("<color=yellow><bclr=red>GM "..GetName().."<bclr> nãi:<color> <color=cyan>"..szNotices)
	szNotices = format("<color=yellow><bclr=red>GM "..GetName().."<bclr> nãi:<color> %s ",szNotices)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, szNotices)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	elseif (nType == 2) then
	AddGlobalCountNews("<color=yellow><bclr=red>GM "..GetName().."<bclr> th«ng b¸o: <color>"..szNotices, 3)
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--															HÖ thèng qu¶n lý toµn m¸y chñ																	--
-----------------------------------------------------------------------------------------------------------------------------------------------------

function tbAloneScript:ManageSystemGlobal()
	local szTitle = "HÖ thèng qu¶n lý toµn m¸y chñ ®­îc sö dông ®Ó khãa, cÊm ch¸t, kick out,… ng­êi ch¬i trong m¸y chñ."
	local tbOption = {}
		tinsert(tbOption, {"Khãa nh©n vËt ®ang trùc tuyÕn", self.LockPlayerOnline, {self, 1}})
		tinsert(tbOption, {"Më khãa nh©n vËt", self.UnlockPlayer, {self, 1}})
		tinsert(tbOption, {"Khãa tµi kho¶n ®ang trùc tuyÕn", self. LockPlayerOnline, {self, 2}})
		tinsert(tbOption, {"Më khãa tµi kho¶n", self. UnlockPlayer, {self, 2}})
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle..INFORMATION_DEVELOPER, tbOption)
end

function tbAloneScript:UnlockPlayer(nType)
	g_AskClientStringEx("", 1, 50, "Tªn më khãa:", {self.EnterUnlockPlayer, {self, nType}})
end

function tbAloneScript:EnterUnlockPlayer(nType, szPlayer)
	self:FileSystem_LoadFile(TAB_LINKFILEDATA[nType][1])
	local nCount = self:FileSystem_GetData(TAB_LINKFILEDATA[nType][1], TAB_LINKFILEDATA[nType][2], szPlayer)
	if (tonumber(nCount) ~= 1) then
		Msg2Player(szPlayer.." kh«ng bÞ khãa")
	return end
	self:FileSystem_SetData(TAB_LINKFILEDATA[nType][1], TAB_LINKFILEDATA[nType][2], szPlayer, "");
	self:FileSystem_SaveData(TAB_LINKFILEDATA[nType][1])
	Msg2Player(format("B¹n ®· më khãa cho <color=yellow>%s<color> nµy thµnh c«ng!", szPlayer));
end

function tbAloneScript:LockPlayerOnline(nType)
	g_AskClientStringEx("", 1, 50, "Tªn muèn khãa:", {self.EnterLockPlayerOnline, {self, nType}})
end

function tbAloneScript:EnterLockPlayerOnline(nType, szPlayer)
	local nGMPlayer = PlayerIndex
	local nPlayerIndex = 0;
	local szAccount = "";
	if (nType == 1) then
		nPlayerIndex = SearchPlayer(szPlayer)
	elseif (nType == 2) then
		nPlayerIndex= self:SearchAccount(szPlayer)
	end
	
	if (nPlayerIndex <= 0) then
		Msg2Player("Ng­êi nµy hiÖn kh«ng onlone hoÆc kh«ng tån t¹i");
	return 0 end
	
	PlayerIndex = nGMPlayer;
	if (nType == 1) then
		self:LockSystemByNamePlayer(nPlayerIndex);
	elseif (nType == 2) then
		self:LockSystemByAccountPlayer(nPlayerIndex);
	end
end

function tbAloneScript:LockSystemByNamePlayer(nPlayerIndex)
	g_AskClientStringEx("", 1, 500, "Lý do bÞ khãa:", {self.EnterLockSystemByNamePlayer, {self, nPlayerIndex}})
end

function tbAloneScript:EnterLockSystemByNamePlayer(nPlayerIndex, szMsg)
	local nType = 1;
	self:FileSystem_LoadFile(TAB_LINKFILEDATA[nType][1])
	local szPlayerName = "";
	local szMsg = szMsg or "";
	local nGMPlayer = PlayerIndex;
		PlayerIndex = nPlayerIndex;
			szPlayerName = GetName();
			Msg2Player(format("<color=yellow>Nh©n vËt nµy ®· bÞ khãa, v× lÝ do: %s", szMsg));
			self:FileSystem_SetData(TAB_LINKFILEDATA[nType][1], TAB_LINKFILEDATA[nType][2], szPlayerName, 1)
			self:FileSystem_SaveData(TAB_LINKFILEDATA[nType][1])
			SetTaskTemp(TASKTEMP_KICKOUT, GetCurServerTime());
			SetTimer(1*FRAME2TIME, TIMETASK_ID);
		PlayerIndex = nGMPlayer;
			Msg2Player("B¹n ®· khãa ng­êi ch¬i nµy thµnh c«ng!")
			SetStringTask(TASKS_LOCKSYSTEM, szPlayerName);
end

function tbAloneScript:LockSystemByAccountPlayer(nPlayerIndex)
	g_AskClientStringEx("", 1, 500, "Lý do bÞ khãa:", {self.EnterLockSystemByAccountPlayer, {self, nPlayerIndex}})
end

function tbAloneScript:EnterLockSystemByAccountPlayer(nPlayerIndex, szMsg)
	local nType = 2;
	self:FileSystem_LoadFile(TAB_LINKFILEDATA[nType][1])
	local szPlayerName = "";
	local szMsg = szMsg or "";
	local nGMPlayer = PlayerIndex;
		PlayerIndex = nPlayerIndex;
			szPlayerName = GetAccount();
			Msg2Player(format("<color=yellow>Nh©n vËt nµy ®· bÞ khãa, v× lÝ do: %s", szMsg));
			self:FileSystem_SetData(TAB_LINKFILEDATA[nType][1], TAB_LINKFILEDATA[nType][2], szPlayerName, 1)
			self:FileSystem_SaveData(TAB_LINKFILEDATA[nType][1])
			SetTaskTemp(TASKTEMP_KICKOUT, GetCurServerTime());
			SetTimer(1*FRAME2TIME, TIMETASK_ID);
		PlayerIndex = nGMPlayer;
			Msg2Player("B¹n ®· khãa ng­êi ch¬i nµy thµnh c«ng!")
			SetStringTask(TASKS_LOCKSYSTEM, szPlayerName);
end

function tbAloneScript:SearchAccount(szAccount)
	for i = 1, GetPlayerCount() do
		PlayerIndex = i;
			if (GetAccount() == szAccount) then
			return i end;
	end
return 0 end

function tbAloneScript:GameServerKickOut(nPlayerIndex)
	self:FileSystem_LoadFile(TAB_LINKFILEDATA[1][1])
	self:FileSystem_LoadFile(TAB_LINKFILEDATA[2][1])
	local GMPlayer = PlayerIndex;
		PlayerIndex = nPlayerIndex;
	
	local nIsPlayer = tonumber(self:FileSystem_GetData(TAB_LINKFILEDATA[1][1], TAB_LINKFILEDATA[1][2], GetName())) or 0;
		
		if (nIsPlayer == 1) then
			Msg2Player("Nh©n vËt nµy cña b¹n hiÖn ®ang bÞ khãa, kh«ng thÓ tham gia vµo game.")
			SetTaskTemp(TASKTEMP_KICKOUT, GetCurServerTime());
			SetTimer(1*FRAME2TIME, TIMETASK_ID);
		end
		
		local nIsAccount = tonumber(self:FileSystem_GetData(TAB_LINKFILEDATA[2][1], TAB_LINKFILEDATA[2][2], GetAccount())) or 0;
		
		if (nIsAccount == 1) then
			Msg2Player("Tµi kho¶n nµy cña b¹n hiÖn ®ang bÞ khãa, kh«ng thÓ tham gia vµo game.")
			SetTaskTemp(TASKTEMP_KICKOUT, GetCurServerTime());
			SetTimer(1*FRAME2TIME, TIMETASK_ID);
		end
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--															T×m hiÓu vÒ tÝnh n¨ng LBGM																		--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:GMHelp()
	Describe("GM muèn t×m hiÓu vÒ tÝnh n¨ng qu¶n trÞ nµo d­íi ®©y?", 8,
	"T×m hiÓu vÒ tÝnh n¨ng “LÊy vËt phÈm bÊt kú”/TakeSpecifiedItem",
	"T×m hiÓu vÒ tÝnh n¨ng “DÞch chuyÓn ®Õn vÞ trÝ…”/MoveToPosition",
	"§ãng./OnCancel")
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--														Thao t¸c víi ng­êi ch¬i ®ang online																	--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:ManagePlayerAccountSystem()
	local szTitle = format("<npc>Mêi GM <color=red>%s<color> lùa chän chøc n¨ng hç trî qu¶n trÞ:", GetName());
	local tbOption = {}
		tinsert(tbOption, {"T×m ng­êi ch¬i 8GS", self.TimNguoiChoi2, {self}})
		tinsert(tbOption, {"T×m ng­êi ch¬i söa Task", self.TimNguoiChoi, {self}})
		tinsert(tbOption, {"KÝch nh©n vËt", self.KichNhanVat, {self}})
		tinsert(tbOption, {"KÝch tµi kho¶n", self.KichTaiKhoan, {self}})
		tinsert(tbOption, {"N¹p thÎ cho ng­êi ch¬i", self.NapTheGamer, {self}})
		tinsert(tbOption, {"Thao t¸c tªn ng­êi ch¬i", self.ManipulationOnPlayer, {self}})
		tinsert(tbOption, {"Thao t¸c tµi kho¶n ng­êi ch¬i", self.TimTenTaiKhoan2, {self}})
		tinsert(tbOption, {"Khãa tµi kho¶n vµ nh©n vËt", self.ManageSystemGlobal, {self}})
		tinsert(tbOption, {"Më khãa trang bÞ vµ khãa b¶o hiÓm cho Gamer", self.MoKhoaTrangBiBaoHiem, {self}})
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle..INFORMATION_DEVELOPER, tbOption)
end
------------------------------------------------------------------------------------------------------------------------------------------
--													KÝch Tµi Kho¶n																		--
------------------------------------------------------------------------------------------------------------------------------------------

function tbAloneScript:KichTaiKhoan()
	g_AskClientStringEx("", 0, 200, "Tµi kho¶n nh©n vËt:", {self.KichTaiKhoan2, {self}})
 
end 

function tbAloneScript:KichTaiKhoan2(szPlayer)
local GMPlayer = PlayerIndex;
	local szName, szAccount, szIP;
	local nLevel, nCash;
	nPlayerIndex= self:SearchAccount(szPlayer)
	if nPlayerIndex <= 0 then
		Talk(1, "", "Nh©n vËt nµy ®· rêi m¹ng hoÆc kh«ng tån t¹i!")
		return
	end
	OfflineLive(nPlayerIndex); 
end
------------------------------------------------------------------------------------------------------------------------------------------
--													KÝch Ng­êi Ch¬i																		--
------------------------------------------------------------------------------------------------------------------------------------------

function tbAloneScript:KichNhanVat()
	g_AskClientStringEx("", 1, 200, "Tªn muèn KÝch:", {self.KichNhanVatDangOnline, {self, nType}})
end

function tbAloneScript:KichNhanVatDangOnline(szPlayer)
	local GMPlayer = PlayerIndex;
	local szName, szAccount, szIP;
	local nLevel, nCash;
	nPlayerIndex = SearchPlayer(szPlayer)
	if nPlayerIndex <= 0 then
		Talk(1, "", "Nh©n vËt nµy ®· rêi m¹ng hoÆc kh«ng tån t¹i!")
		return
	end
	OfflineLive(nPlayerIndex); 
end
------------------------------------------------------------------------------------------------------------------------------------------
--													T×m Ng­¬i ch¬i	2																	--
------------------------------------------------------------------------------------------------------------------------------------------

function tbAloneScript:TimNguoiChoi2()
	w,x,y=GetWorldPos()
	SubWorld = SubWorldID2Idx(w)
	SubName=SubWorldName(SubWorld)
	local szTitle = "<VÞ TrÝ<color>:<color=orange>ID:<color><color=orange>"..w.."<color>-<color=red>"..SubName.."<color>-Täa ®é X/Y:<color=yellow> "..x.."<color>/<color=cyan>"..y.."<color>"
		local tbOpt =
	{
		{"T×m vÞ trÝ nh©n vËt", g_AskClientStringEx, {GetName(), 0, 300, "Tªn nh©n vËt", {self.FindRole, {self}} }}, 
		{"KÕt Thóc Hç Trî"}
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function tbAloneScript:NewWorld(szPos) 
local tbPos = lib:Split(szPos, ",") 
local nMapId = GetWorldPos()
local m = tonumber(tbPos[1]) 
local x =  tonumber(tbPos[2]) 
local y =  tonumber(tbPos[3]) 
if nMapId == m then 
SetPos(x, y) 
else 
NewWorld(m, x, y)
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)  
end 
end 



function tbAloneScript:FindRole(szName) 
local nPlayerIndex = PlayerIndex 
local nPak = usepack(self.nPak) 
CallPlayerFunction(nPlayerIndex, QueryWiseManForSB, "tbGmRole_Finded", "tbGmRole_UnFind", 0, szName); 
usepack(nPak) 
end 

function tbAloneScript:Finded(szTargetName, szMapName, nSubWorldID, nPosX, nPosY)
local toadox = nPosX/8
local toadoy = nPosY/16 
local szTitle = format("<color=yellow>%s<color>: §ang ë <color=yellow>%s<color>-<color=red>%d/%d<color>", szTargetName, szMapName,toadox,toadoy,nSubWorldID) 
local tbOpt = 
{ 
{"§­a ta ®Õn ng­êi ®ã",self.NewWorld, {self, format("%d,%d,%d",nSubWorldID, nPosX, nPosY)}},
{"KÕt thóc ®èi tho¹i"} 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 


function tbGmRole_Finded(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	tbAloneScript:Finded(TargetName, MapName, nSubWorldID, nPosX, nPosY)
end

function tbGmRole_UnFind(TargetName, MoneyToPay)
	Talk(1, "", format("<#16082>%s", TargetName))
end
------------------------------------------------------------------------------------------------------------------------------------------
--													T×m Ng­¬i ch¬i																		--
------------------------------------------------------------------------------------------------------------------------------------------
function CheckPlayerWithRolename(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5998) == 1 then
		local PlayerOfflineLive_W, PlayerOfflineLive_X, PlayerOfflineLive_Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		Say("Nh©n vËt ®ang <color=yellow>ñy th¸c<color><enter>Tµi kho¶n ng­êi ch¬i: <color=yellow>"..CallPlayerFunction(SearchPlayer(Name), GetAccount).."<color><enter>VÞ trÝ: "..PlayerOfflineLive_W.." - "..PlayerOfflineLive_X.." - "..PlayerOfflineLive_Y.."<enter>Kh«ng thÓ hiÓn thÞ thªm!", 3, "§­a ta ®Õn ngay vÞ trÝ ng­êi nµy!/#PlayerOfflineLive_Go2Pos_OK("..PlayerOfflineLive_W..", "..PlayerOfflineLive_X..", "..PlayerOfflineLive_Y..")", "KÝch Out ng­êi nµy ra khái game!/#PlayerOfflineLive_KichOutPl("..Name..")", "Th«i kh«ng cÇn!/OnCancel")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "Lçi hoÆc tªn nh©n vËt kh«ng tån t¹i <enter>kh«ng thÓ lÊy PlayerIndex")
		return 1
	else
		return nil
	end
end

function tbAloneScript:TimNguoiChoi()
	return AskClientForString("ProcNameInput4AllInformation", "", 1, 20, "NhËp tªn nh©n vËt");
end

function ProcNameInput4AllInformation(Name)
	local Keywk1 = strfind(Name, "/")
	if FALSE(Keywk1) then
		return AllInformationForInputName(Name)
	end
	local Name = strsub(Name, Keywk1 + 1)
	return AllInformationForInputName(Name)
end

function NamePlayer(Name)
	if Name == GetNameAdmin then
		return "Tªn nh©n vËt: <color=black><bclr=red>"..Name.."<bclr><color> - "..GetAccountWithNameInput(Name).."";
	else
		return "Tªn nh©n vËt: <color=black><bclr=green>"..Name.."<bclr><color> - "..GetAccountWithNameInput(Name).."";
	end
end

function GetAccountWithNameInput(Name)
	if SearchPlayer(Name) == 0 then
		return "Tªn tµi kho¶n: <color=red>Offline<color>";
	else
		return "Tªn tµi kho¶n: <color=green>"..callPlayerFunction(SearchPlayer(Name), GetAccount).."<color>";
	end
end

function GetLevelWithNameInput(Name)
	if SearchPlayer(Name) == 0 then
		return "§¼ng cÊp    : <color=red>Offline<color> - Exp: <color=red>Offline<color>";
	else
		return "§¼ng cÊp    : <color=green>"..callPlayerFunction(SearchPlayer(Name), GetLevel).."<color> - Exp: <color=green>"..(callPlayerFunction(SearchPlayer(Name), GetExpPercent)).."%<color>";
	end
end

function GetTongNameWithName(Name)
	if SearchPlayer(Name) == 0 then
		return "Bang héi: <color=red>Offline<color>";
	else
		local tongname, _ = CallPlayerFunction(SearchPlayer(Name), GetTong)
		return "Bang héi: <color=green>"..tongname.."<color>";
	end
end

function GetLocationWithName(Name)
	if SearchPlayer(Name) == 0 then 
		return "VÞ trÝ      : <color=red>Offline<color>";
	else
		W,X,Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		return "VÞ trÝ      : MapID: <color=green>"..W.."<color> X: <color=green>"..floor(X/8).."<color> Y: <color=green>"..floor(Y/16).."<color> - <color=violet>H¹ng: <color><color=green>"..CallPlayerFunction(SearchPlayer(Name), GetEnergy).."<color>"
	end
end

function GetCashWithName(Name)
	local AllCash
	if SearchPlayer(Name) == 0 then
		return "Tµi  s¶n    : <color=red>Offline<color> - TiÒn §ång: <color=red>Offline<color>";
	else
		AllCash = CallPlayerFunction(SearchPlayer(Name), GetCash) + CallPlayerFunction(SearchPlayer(Name), GetBoxMoney)
		return "Tµi s¶n     : <color=green>"..floor(AllCash/10000).."<color><color=yellow> v¹n<color> <color=green>"..mod(AllCash, 10000).."<color><color=yellow> l­îng<color> - TiÒn §ång: <color=Orange>"..CallPlayerFunction(SearchPlayer(Name), GetCashCoin).."<color>";
	end
end


function AllInformationForInputName(rolename)
	if (FALSE(rolename)) then rolename = GetName();end
	if CheckPlayerWithRolename(rolename) then return end
	SetTaskTemp(245, SearchPlayer(rolename));
	
	local szTitle = NamePlayer(rolename).."<enter>"..GetLevelWithNameInput(rolename).." - "..GetTongNameWithName(rolename).."<enter>"..GetLocationWithName(rolename).."<enter>"..GetCashWithName(rolename)..""
	local tbOpt = 
	{
		{"Di chuyÓn ®Õn chç "..rolename.."",Go2MapOfPlayer},		
		{"Gäi nh©n vËt "..rolename.." ®Õn chç nµy",CallPlayer2Here},
		{"Msg2Player tíi "..rolename.."",InputString2Msg},
		{"Qu¶n lý danh hiÖu cña "..rolename.."",TitleManager4Player},
		{"§iÒu chØnh Task cho nh©n vËt "..rolename.."",GetASetTask2Player},
		{"KÕt thóc ®èi tho¹i.", OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
------------
function Go2MapOfPlayer()
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then 
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		W,X,Y = CallPlayerFunction(PlayerIndex, GetWorldPos)
		return NewWorld(W, X, Y);
	end
end
------------
function InputString2Msg()
	if GetTaskTemp(245) == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		return AskClientForString("Msg2PlayerWithName", "", 1, (255-51), "<#>NhËp th«ng b¸o");
	end
end

function Msg2PlayerWithName(msg)
	local StringMsg = "<bclr=yellow><color=black>GameMaster<bclr><color> <pic=139> "..msg..""
	return callPlayerFunction(GetTaskTemp(245), Msg2Player, StringMsg);
end
------------
function CallPlayer2Here()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		local W,X,Y = GetWorldPos();
		CallPlayerFunction(PlayerIndexGamer, NewWorld, W, X, Y)
		CallPlayerFunction(PlayerIndexGamer, Msg2Player, "<color=yellow>B¹n ®· ®­îc triÖu håi ®Õn ®©y!")
	end
end
------------
function GetASetTask2Player()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		AskClientForString("GetASetTask2Player_Step2", "",0,500,"<#>NhËp Task,Value!")	
	end
end

function GetASetTask2Player_Step2(StringTaskID)
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("Lçi, Nh©n vËt ®ang Offline!");
	else
		local String1 = strfind(StringTaskID, ",")
		if(FALSE(String1)) then return Msg2Player("Khai b¸o lçi!") end
		local TaskID = tonumber(strsub(StringTaskID, 1, String1 - 1))
		if(FALSE(TaskID)) then return Msg2Player("Khai b¸o lçi TaskID!") end
		local Value = tonumber(strsub(StringTaskID, String1 + 1, strlen(StringTaskID)))
		if((Value == nil)) then return Msg2Player("Khai b¸o lçi Value!") end
		local GamerTaksValueOld = CallPlayerFunction(PlayerIndexGamer, GetTask, TaskID)
		return Say("ChØnh söa gi¸ trÞ Task cho ng­êi ch¬i.<enter>TaskID: <color=green>"..TaskID.."<color><enter>Gi¸ trÞ cò: <color=green>"..GamerTaksValueOld.."<color><enter>Gi¸ trÞ míi: <color=yellow>"..Value.."<color><enter>B¹n ch¾c ch¾n chØnh söa gi¸ trÞ chø?", 2, "Ch¾c råi!/#GetASetTask2Player_Step3("..TaskID..","..Value..")", "Th«i ta nhÇm!/OnCancel")
	end
end

function GetASetTask2Player_Step3(TaskID, Value)
	local PlayerIndexGamer = GetTaskTemp(245);
	CallPlayerFunction(PlayerIndexGamer, SetTask, TaskID, Value)
	Msg2Player("<color=yellow>§· SetTask "..TaskID..": "..Value.." - cho: "..CallPlayerFunction(PlayerIndexGamer, GetName))
end
--------------
function TitleManager4Player()
	if FALSE(CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle)) or CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle) == nil then
		CheckTitleActive = "<color=red>NULL<color>";
		CheckNameTitleActive = "<color=red>NULL<color>";
	else 
		CheckTitleActive = "<color=green>"..CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle).."<color>"
		CheckNameTitleActive = "<color=green>"..Title_GetTitleName(CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle)).."<color>"
	end
	local szTitle = "Danh hiÖu ®ang kÝch ho¹t: "..CheckTitleActive.."<enter>Title Name - "..CheckNameTitleActive.."<enter>GetTask(1122): <color=green>"..CallPlayerFunction(GetTaskTemp(245), GetTask, 1122).."<color>"
	local tbOpt = 
	{
		{"Thªm vµ kÝch ho¹t danh hiÖu míi cho "..CallPlayerFunction(GetTaskTemp(245), GetName).."",TitleManager4Player_EditTitle},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function TitleManager4Player_EditTitle()
	Say("B¹n cã ch¾c vÒ ®iÒu nµy? <enter><color=red>Thªm, söa, xãa danh hiÖu cho<color><color=yellow> "..CallPlayerFunction(GetTaskTemp(245), GetName).."", 2, "Ch¾c råi/TitleManager4Player_EditTitle_Sure", "Ta nhÇm/OnCancel")
end
function TitleManager4Player_EditTitle_Sure()
	return AskClientForString("TitleManager4Player_EditTitle_Sure_Input", "", 1, 500, "ID,Time")
end
function TitleManager4Player_EditTitle_Sure_Input(StrTitleID)
	local String1 = strfind(StrTitleID, ",")
	if(FALSE(String1)) then return Msg2Player("Khai b¸o lçi!") end
	local TitleID = tonumber(strsub(StrTitleID, 1, String1 - 1))
	if(FALSE(TitleID)) then return Msg2Player("Khai b¸o lçi TitleID!") end
	local TitleTime = tonumber(strsub(StrTitleID, String1 + 1, strlen(StrTitleID)))
	local nServerTime = GetCurServerTime()+ (TitleTime*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	CallPlayerFunction(GetTaskTemp(245), Title_AddTitle, TitleID, 2, nTime)
	CallPlayerFunction(GetTaskTemp(245), Title_ActiveTitle, TitleID)
	CallPlayerFunction(GetTaskTemp(245), SetTask, 1122, TitleID)
	Msg2Player("GM: §· thªm vµ kÝch ho¹t danh hiÖu <color=yellow>"..Title_GetTitleName(TitleID).."<color> cho <color=green>"..CallPlayerFunction(GetTaskTemp(245), GetName).." trong "..TitleTime.." ngµy!")
end
----------
function PlayerOfflineLive_Go2Pos_OK(W, X, Y)
	NewWorld(W, X, Y)
	return Msg2Player("<color=yellow>§· ®Õn vÞ trÝ cña ng­êi ch¬i!")
end

function PlayerOfflineLive_KichOutPl(Name)
		Msg2Player("<color=yellow>TÝnh n¨ng hiÖn t¹i vÉn ch­a thÓ sö dông!")
		--if Sel then
		--CallPlayerFunction(SearchPlayer(NameGamer), KickOutSelf)
		--return Msg2Player("<color=yellow>Ng­êi ch¬i ®· ®­îc ®­a ra khái game!")
	--end
	--return Say("ViÖc KÝch ng­êi ch¬i ra khái game lóc ®ang ñy th¸c sÏlµm sai lÖch th«ng sè b¶ng ng­êi ch¬i online vµ ng­êich¬i ®ang ñy th¸c, ng­êi thËt sù muèn thùc hiÖn thao t¸c nµy chø?", 2, "Ta ch¾c råi!/#PlayerOfflineLive_KichOutPl("..NameGamer..", 1)", "Th«i ta nhÇm!/OnCancel")
end
----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:NapTheGamer()
thongtingamer()
end

function tbAloneScript:MoKhoaTrangBiBaoHiem()
AskClientForString("TenNhanVatKhoaBaoHiem", "", 0,5000,"Tªn Nh©n VËt") 
end

function TenNhanVatKhoaBaoHiem(nNameChar)
Msg2Player("§· Xong")
for i=1,1200 do
PlayerIndex = i
if GetName()==""..nNameChar.."" then
local tbEquip  = GetRoomItems(0)
for _,v in tbEquip do
SetItemBindState(v ,0)
end
end
end
end
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------Tim Theo Ten Tai Khoan------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:TimTenTaiKhoan2() 
	if (GetLevel() < 5) then
		Talk(1, "", "Nh©n vËt ®¹t cÊp 5 trë lªn míi cã thÓ sö dông tÝnh n¨ng nµy")
	return end
	
	g_AskClientStringEx("", 0, 200, "Tµi kho¶n nh©n vËt:", {self.SearchAccOnline, {self}})
 
end 

function tbAloneScript:SearchAccOnline(szPlayer)
local GMPlayer = PlayerIndex;
	local szName, szAccount, szIP;
	local nLevel, nCash;
	nPlayerIndex= self:SearchAccount(szPlayer)
	if nPlayerIndex <= 0 then
		Talk(1, "", "Nh©n vËt nµy ®· rêi m¹ng hoÆc kh«ng tån t¹i!")
		return
	end
	
	local szFactionName = {
		["shaolin"] 		= "ThiÕu L©m ph¸i",
		["tianwang"] 	= "Thiªn V­¬ng bang",
		["tangmen"] 	= "§­êng M«n ph¸i",
		["wudu"] 			= "Ngò §éc gi¸o",
		["emei"] 			= "Nga My ph¸i",
		["cuiyan"] 		= "Thóy Yªn m«n",
		["gaibang"] 		= "C¸i Bang ph¸i",
		["tianren"] 		= "Thiªn NhÉn gi¸o",
		["wudang"] 		= "Vâ §ang ph¸i",
		["kunlun"] 		= "C«n L«n ph¸i",
		["huashan"] 	= "Hoa S¬n ph¸i",
	}
	
	PlayerIndex = nPlayerIndex;
		szName = GetName();
		szAccount = GetAccount();
		szFaction = GetFaction();
		nLevel = GetLevel();
		nCash = GetCash();
		szIP = self:GetIP();
		nRepute = GetRepute();
		nWorld, nPosX, nPosY = GetWorldPos();
		nLead = GetLeadLevel();
		nFight = GetFightState();
		nCamp = GetCamp();
		nFaction = GetLastFactionNumber();
		nPK = GetPK();
		nSex = GetSex();
		nFuYuan = GetTask(151);
		nBattle = GetTask(747);
		nLeague = GetTask(2501);
		nRespect = GetRespect();
		nCoin = GetExtPoint(1);
		
		nLife = GetLife(0);
		nMana = GetMana(0);
		nStamina = GetStamina(0);
		nDefend = GetDefend(0);
		nColdR = GetColdR(0);
		nLightR = GetLightR(0);
		nFireR = GetFireR(0);
		nPoisonR = GetPoisonR(0);
		nPhyR = GetPhyR(0);
		nLucky = GetLucky();
		
		nEng =  GetEng(0);
		nDex = GetDex(0);
		nStr = GetStrg(0);
		nVit = GetVit(0);
		nAP = GetRestAP();
		nSP = GetRestSP();
	PlayerIndex = GMPlayer;
		Describe(format(strfill_center(" Th«ng tin ng­êi ch¬i ", 50, "-").."\n"
		.."\n+ Tªn ng­êi ch¬i: %s"
		.."\n+ Tªn tµi kho¶n: %s"
		.."\n+ §Þa chØ IP: %s"
		.."\n+ VÞ trÝ hiÖn t¹i: B¶n ®å: %d - Täa ®é: %d,%d"
		.."\n+ M«n ph¸i: %s"
		.."\n+ §¼ng cÊp: %d"
		.."\n+ TiÒn v¹n: %d"
		.."\n+ TiÒn ®ång: %d"

		.."\n+ §iÓm danh väng: %d"
		.."\n+ §iÓm phóc duyªn: %d"
		.."\n+ §iÓm uy danh: %d"
		.."\n+ §iÓm tÝch lòy Tèng Kim: %d"
		.."\n+ §iÓm tÝch lòy Liªn §Êu: %d"
		
		.."\n------------------------------------------------"		
		.."\n+ Sinh lùc: %d"
		.."\n+ Néi lùc: %d"
		.."\n+ ThÓ lùc: %d"
		.."\n+ NÐ tr¸nh: %d"
		
		.."\n+ Kh¸ng b¨ng: %d"
		.."\n+ Kh¸ng l«i: %d"
		.."\n+ Kh¸ng háa: %d"
		.."\n+ Kh¸ng ®éc: %d"
		.."\n+ Phßng thñ vËt lý: %d"
		
		.."\n+ Søc m¹nh: %d"
		.."\n+ Sinh khÝ: %d"
		.."\n+ Th©n ph¸p: %d"
		.."\n+ Néi c«ng: %d"
		.."\n+ TiÒm n¨ng cßn l¹i: %d"
		.."\n+ Kü n¨ng cßn l¹i: %d"
		.."\n------------------------------------------------"
		
		, szName or ""
		, szAccount or ""
		, szIP or ""
		, nWorld or 0, nPosX or 0, nPosY or 0
		, szFactionName[szFaction] or "Ch­a gia nhËp"
		, nLevel or 0
		, nCash or 0
		, nCoin or 0
		
		, nRepute or 0
		, nFuYuan or 0
		, nRespect or 0
		, nBattle or 0
		, nLeague or 0
		-------------------------------------------------
		, nLife or 0
		, nMana or 0
		, nStamina or 0
		, nDefend or 0
		
		, nColdR or 0
		, nLightR or 0
		, nFireR or 0
		, nPoisonR or 0
		, nPhyR or 0
		, nStr or 0
		, nVit or 0
		, nDex or 0
		, nEng or 0
		, nAP or 0
		, nSP or 0
		-------------------------------------------------
		)
		,8,
		"GM di chuyÓn ®Õn ng­êi ch¬i nµy/#tbAloneScript:GMMoveToPlayer("..nPlayerIndex..")",
		"Ng­êi ch¬i nµy di chuyÓn ®Õn GM/#tbAloneScript:PlayerMoveToGM("..nPlayerIndex..")",
		"TÆng ®iÓm cho ng­êi ch¬i nµy/#tbAloneScript:GivePoints("..nPlayerIndex..")",
		"TÆng vËt phÈm, ®¹o cô, trang bÞ cho ng­êi ch¬i nµy/#tbAloneScript:GiveItemForPlayer("..nPlayerIndex..")",
		"TÆng tiÒn v¹n (v¹n l­îng) cho ng­êi ch¬i ngµy/#tbAloneScript:GiveCash("..nPlayerIndex..")",
		"TÆng tiÒn ®ång cho ng­êi ch¬i ngµy/#tbAloneScript:GiveCoin("..nPlayerIndex..")",
		"TÆng KNB cho ng­êi ch¬i ngµy/#tbAloneScript:GiveKNB("..nPlayerIndex..")",
		"§ãng./OnCancel")
 
end

----------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:ManipulationOnPlayer()
	if (GetLevel() < 5) then
		Talk(1, "", "Nh©n vËt ®¹t cÊp 5 trë lªn míi cã thÓ sö dông tÝnh n¨ng nµy")
	return end
	
	g_AskClientStringEx("", 0, 200, "Tªn nh©n vËt:", {self.SearchPlayerOnline, {self}})
end

function tbAloneScript:SearchPlayerOnline(szPlayer)
	local GMPlayer = PlayerIndex;
	local szName, szAccount, szIP;
	local nLevel, nCash;
	nPlayerIndex = SearchPlayer(szPlayer)
	if nPlayerIndex <= 0 then
		Talk(1, "", "Nh©n vËt nµy ®· rêi m¹ng hoÆc kh«ng tån t¹i!")
		return
	end
	
	local szFactionName = {
		["shaolin"] 		= "ThiÕu L©m ph¸i",
		["tianwang"] 	= "Thiªn V­¬ng bang",
		["tangmen"] 	= "§­êng M«n ph¸i",
		["wudu"] 			= "Ngò §éc gi¸o",
		["emei"] 			= "Nga My ph¸i",
		["cuiyan"] 		= "Thóy Yªn m«n",
		["gaibang"] 		= "C¸i Bang ph¸i",
		["tianren"] 		= "Thiªn NhÉn gi¸o",
		["wudang"] 		= "Vâ §ang ph¸i",
		["kunlun"] 		= "C«n L«n ph¸i",
		["huashan"] 	= "Hoa S¬n ph¸i",
	}
	
	PlayerIndex = nPlayerIndex;
		szName = GetName();
		szAccount = GetAccount();
		szFaction = GetFaction();
		nLevel = GetLevel();
		nCash = GetCash();
		szIP = self:GetIP();
		nRepute = GetRepute();
		nWorld, nPosX, nPosY = GetWorldPos();
		nLead = GetLeadLevel();
		nFight = GetFightState();
		nCamp = GetCamp();
		nFaction = GetLastFactionNumber();
		nPK = GetPK();
		nSex = GetSex();
		nFuYuan = GetTask(151);
		nBattle = GetTask(747);
		nLeague = GetTask(2501);
		nRespect = GetRespect();
		nCoin = GetExtPoint(1);
		
		nLife = GetLife(0);
		nMana = GetMana(0);
		nStamina = GetStamina(0);
		nDefend = GetDefend(0);
		nColdR = GetColdR(0);
		nLightR = GetLightR(0);
		nFireR = GetFireR(0);
		nPoisonR = GetPoisonR(0);
		nPhyR = GetPhyR(0);
		nLucky = GetLucky();
		
		nEng =  GetEng(0);
		nDex = GetDex(0);
		nStr = GetStrg(0);
		nVit = GetVit(0);
		nAP = GetRestAP();
		nSP = GetRestSP();
	PlayerIndex = GMPlayer;
		Describe(format(strfill_center(" Th«ng tin ng­êi ch¬i ", 50, "-").."\n"
		.."\n+ Tªn ng­êi ch¬i: %s"
		.."\n+ Tªn tµi kho¶n: %s"
		.."\n+ §Þa chØ IP: %s"
		.."\n+ VÞ trÝ hiÖn t¹i: B¶n ®å: %d - Täa ®é: %d,%d"
		.."\n+ M«n ph¸i: %s"
		.."\n+ §¼ng cÊp: %d"
		.."\n+ TiÒn v¹n: %d"
		.."\n+ TiÒn ®ång: %d"

		.."\n+ §iÓm danh väng: %d"
		.."\n+ §iÓm phóc duyªn: %d"
		.."\n+ §iÓm uy danh: %d"
		.."\n+ §iÓm tÝch lòy Tèng Kim: %d"
		.."\n+ §iÓm tÝch lòy Liªn §Êu: %d"
		
		.."\n------------------------------------------------"		
		.."\n+ Sinh lùc: %d"
		.."\n+ Néi lùc: %d"
		.."\n+ ThÓ lùc: %d"
		.."\n+ NÐ tr¸nh: %d"
		
		.."\n+ Kh¸ng b¨ng: %d"
		.."\n+ Kh¸ng l«i: %d"
		.."\n+ Kh¸ng háa: %d"
		.."\n+ Kh¸ng ®éc: %d"
		.."\n+ Phßng thñ vËt lý: %d"
		
		.."\n+ Søc m¹nh: %d"
		.."\n+ Sinh khÝ: %d"
		.."\n+ Th©n ph¸p: %d"
		.."\n+ Néi c«ng: %d"
		.."\n+ TiÒm n¨ng cßn l¹i: %d"
		.."\n+ Kü n¨ng cßn l¹i: %d"
		.."\n------------------------------------------------"
		
		, szName or ""
		, szAccount or ""
		, szIP or ""
		, nWorld or 0, nPosX or 0, nPosY or 0
		, szFactionName[szFaction] or "Ch­a gia nhËp"
		, nLevel or 0
		, nCash or 0
		, nCoin or 0
		
		, nRepute or 0
		, nFuYuan or 0
		, nRespect or 0
		, nBattle or 0
		, nLeague or 0
		-------------------------------------------------
		, nLife or 0
		, nMana or 0
		, nStamina or 0
		, nDefend or 0
		
		, nColdR or 0
		, nLightR or 0
		, nFireR or 0
		, nPoisonR or 0
		, nPhyR or 0
		, nStr or 0
		, nVit or 0
		, nDex or 0
		, nEng or 0
		, nAP or 0
		, nSP or 0
		-------------------------------------------------
		)
		,8,
		"GM di chuyÓn ®Õn ng­êi ch¬i nµy/#tbAloneScript:GMMoveToPlayer("..nPlayerIndex..")",
		"Ng­êi ch¬i nµy di chuyÓn ®Õn GM/#tbAloneScript:PlayerMoveToGM("..nPlayerIndex..")",
		"TÆng ®iÓm cho ng­êi ch¬i nµy/#tbAloneScript:GivePoints("..nPlayerIndex..")",
		"TÆng vËt phÈm, ®¹o cô, trang bÞ cho ng­êi ch¬i nµy/#tbAloneScript:GiveItemForPlayer("..nPlayerIndex..")",
		"TÆng tiÒn v¹n (v¹n l­îng) cho ng­êi ch¬i ngµy/#tbAloneScript:GiveCash("..nPlayerIndex..")",
		"TÆng tiÒn ®ång cho ng­êi ch¬i ngµy/#tbAloneScript:GiveCoin("..nPlayerIndex..")",
		"TÆng KNB cho ng­êi ch¬i ngµy/#tbAloneScript:GiveKNB("..nPlayerIndex..")",
		"§ãng./OnCancel")
end
------------------------------------------------------------------------------------------------------------
--															 --
------------------------------------------------------------------------------------------------------------
function tbAloneScript:GivePoints(nPlayerIndex)
	local szTitle = "GM muèn tÆng ®iÓm g× cho ng­êi ch¬i nµy?";
	local tbOpt = {}
		tinsert(tbOpt, {"CÊp ®é", g_AskClientNumberEx, {0,200, "NhËp cÊp ®é:", {self.SetLevelPlayer, {self, nPlayerIndex}}}})
		tinsert(tbOpt, {"Kinh nghiÖm", g_AskClientNumberEx, {0,9999999999, "NhËp sè ®iÓm:", {self.SetExpPlayer, {self, nPlayerIndex}}}})
		tinsert(tbOpt, {"Danh väng", g_AskClientNumberEx, {0,9999999999, "NhËp sè ®iÓm:", {self.SetReputePlayer, {self, nPlayerIndex}}}})
		tinsert(tbOpt, {"Phóc duyªn", g_AskClientNumberEx, {0,9999999999, "NhËp sè ®iÓm:", {self.SetFuYuanPlayer, {self, nPlayerIndex}}}})
		tinsert(tbOpt, {"Tèng kim", g_AskClientNumberEx, {0,9999999999, "NhËp sè ®iÓm:", {self.SetBattlePointPlayer, {self, nPlayerIndex}}}})
		tinsert(tbOpt, {"Liªn ®Êu", g_AskClientNumberEx, {0,9999999999, "NhËp sè ®iÓm:", {self.SetLeaguePointPlayer, {self, nPlayerIndex}}}})
		tinsert(tbOpt, {"§ãng."})
	CreateNewSayEx(szTitle, tbOpt)
end

function tbAloneScript:SetLevelPlayer(nPlayerIndex, nLevel)
	local szPlayerName, szGMName = "", "";
	local nGMPlayer = PlayerIndex;
		szGMName = GetName();
	PlayerIndex = nPlayerIndex;
		szPlayerName = GetName();
		ST_LevelUp(nLevel-GetLevel());
		Msg2Player(format("B¹n ®· nhËn ®­îc <color=yellow>%d<color> cÊp ®é bëi GM %s", nLevel, szGMName))
	PlayerIndex = nGMPlayer;
		Msg2Player(format("B¹n ®· tÆng cho ng­êi ch¬i %s <color=yellow>%d<color> cÊp ®é", szPlayerName, nLevel))
end

function tbAloneScript:SetExpPlayer(nPlayerIndex, nExp)
	local szPlayerName, szGMName = "", "";
	local nGMPlayer = PlayerIndex;
		szGMName = GetName();
	PlayerIndex = nPlayerIndex;
		szPlayerName = GetName();
		tl_addPlayerExp(nExp);
		Msg2Player(format("B¹n ®· nhËn ®­îc <color=yellow>%d<color> ®iÓm kinh nghiÖm bëi GM %s", nExp, szGMName))
	PlayerIndex = nGMPlayer;
		Msg2Player(format("B¹n ®· tÆng cho ng­êi ch¬i %s <color=yellow>%d<color> ®iÓm kinh nghiÖm", szPlayerName, nExp))
end

function tbAloneScript:SetReputePlayer(nPlayerIndex, nPoint)
	local szPlayerName, szGMName = "", "";
	local nGMPlayer = PlayerIndex;
		szGMName = GetName();
	PlayerIndex = nPlayerIndex;
		szPlayerName = GetName();
		AddRepute(nPoint);
		Msg2Player(format("B¹n ®· nhËn ®­îc <color=yellow>%d<color> danh väng bëi GM %s", nPoint, szGMName))
	PlayerIndex = nGMPlayer;
		Msg2Player(format("B¹n ®· tÆng cho ng­êi ch¬i %s <color=yellow>%d<color> danh väng", szPlayerName, nPoint))
end

function tbAloneScript:SetFuYuanPlayer(nPlayerIndex, nPoint)
	local szPlayerName, szGMName = "", "";
	local nGMPlayer = PlayerIndex;
		szGMName = GetName();
	PlayerIndex = nPlayerIndex;
		szPlayerName = GetName();
		SetTask(151, GetTask(151)+nPoint)
		Msg2Player(format("B¹n ®· nhËn ®­îc <color=yellow>%d<color> phóc duyªn bëi GM %s", nPoint, szGMName))
	PlayerIndex = nGMPlayer;
		Msg2Player(format("B¹n ®· tÆng cho ng­êi ch¬i %s <color=yellow>%d<color> phóc duyªn", szPlayerName, nPoint))
end

function tbAloneScript:SetBattlePointPlayer(nPlayerIndex, nPoint)
	local szPlayerName, szGMName = "", "";
	local nGMPlayer = PlayerIndex;
		szGMName = GetName();
	PlayerIndex = nPlayerIndex;
		szPlayerName = GetName();
		SetTask(747, GetTask(747)+nPoint);
		Msg2Player(format("B¹n ®· nhËn ®­îc <color=yellow>%d<color> ®iÓm Tèng Kim bëi GM %s", nPoint, szGMName))
	PlayerIndex = nGMPlayer;
		Msg2Player(format("B¹n ®· tÆng cho ng­êi ch¬i %s <color=yellow>%d<color> ®iÓm Tèng Kim", szPlayerName, nPoint))
end

function tbAloneScript:SetLeaguePointPlayer(nPlayerIndex, nPoint)
	local szPlayerName, szGMName = "", "";
	local nGMPlayer = PlayerIndex;
		szGMName = GetName();
	PlayerIndex = nPlayerIndex;
		szPlayerName = GetName();
		SetTask(2501, GetTask(2501)+nPoint);
		Msg2Player(format("B¹n ®· nhËn ®­îc <color=yellow>%d<color> ®iÓm Liªn §Êu bëi GM %s", nPoint, szGMName))
	PlayerIndex = nGMPlayer;
		Msg2Player(format("B¹n ®· tÆng cho ng­êi ch¬i %s <color=yellow>%d<color> ®iÓm Liªn §Êu", szPlayerName, nPoint))
end

function tbAloneScript:GiveCash(nPlayerIndex)
	g_AskClientNumberEx(1, 20000, "NhËp sè l­îng:", {self.GiveCashNow, {self, nPlayerIndex}})
end

function tbAloneScript:GiveCashNow(nPlayerIndex, nCount)
	local szPlayer, szGMName = "", "";
	local szGMName = GetName();
	local nGMPlayer = PlayerIndex;
	PlayerIndex = nPlayerIndex;
		szPlayer = GetName();
		Earn(nCount*10000)
		Msg2Player(format("<color=green>B¹n nhËn ®­îc <color=yellow>%d<color> v¹n l­îng tõ GM %s<color>", nCount, szGMName))
	PlayerIndex = nGMPlayer;
		Msg2Player(format("<color=green>B¹n ®· tÆng ng­êi ch¬i %s <color=yellow>%d<color> v¹n l­îng<color>", szPlayer, nCount))
end

function tbAloneScript:GiveCoin(nPlayerIndex)
	g_AskClientNumberEx(1, 1000000, "NhËp sè l­îng:", {self.GiveCoinNow, {self, nPlayerIndex}})
end

function tbAloneScript:GiveCoinNow(nPlayerIndex, nCount)
	local szPlayer, szGMName = "", "";
	local szGMName = GetName();
	local nGMPlayer = PlayerIndex;
	PlayerIndex = nPlayerIndex;
		for i = 1, nCount do
			AddItem(4,417,1,0,0,0)
		end
		Msg2Player(format("<color=green>B¹n nhËn ®­îc <color=yellow>%d<color> TiÒn §ång tõ GM %s", nCount, szGMName))
	PlayerIndex = nGMPlayer;
		Msg2Player(format("<color=green>B¹n ®· tÆng ng­êi ch¬i %s <color=yellow>%d<color> TiÒn §ång.", szPlayer, nCount))
end

function tbAloneScript:GiveKNB(nPlayerIndex)
	g_AskClientNumberEx(1, 1000000, "NhËp sè l­îng:", {self.GiveKNBNow, {self, nPlayerIndex}})
end

function tbAloneScript:GiveKNBNow(nPlayerIndex, nCount)
	local szPlayer, szGMName = "", "";
	local szGMName = GetName();
	local nGMPlayer = PlayerIndex;
	PlayerIndex = nPlayerIndex;
		for i = 1, nCount do
			AddItem(4,343,1,0,0,0)
		end
		Msg2Player(format("<color=green>B¹n nhËn ®­îc <color=yellow>%d<color> KNB tõ GM %s", nCount, szGMName))
	PlayerIndex = nGMPlayer;
		Msg2Player(format("<color=green>B¹n ®· tÆng ng­êi ch¬i %s <color=yellow>%d<color> KNB.", szPlayer, nCount))
end

function tbAloneScript:GiveItemForPlayer(nPlayerIndex)
	local GMPlayer = PlayerIndex;
		PlayerIndex = GMPlayer;
			self:TakeSpecifiedItem()
		PlayerIndex = nPlayerIndex;
end

function tbAloneScript:GMMoveToPlayer(nPlayerIndex)
	local nWorld, nX, nY;
	local szName = "";
	local GMPlayer = PlayerIndex;
		PlayerIndex = nPlayerIndex;
			nWorld, nX, nY = GetWorldPos();
			szName = GetName();
		PlayerIndex = GMPlayer;
			local nWorldIdx = NewWorld(nWorld, nX, nY);
			if nWorldIdx ~= 1 then
				GMMsg2Player(szName, "DÞch chuyÓn ®Õn ng­êi ch¬i nµy thÊt b¹i!")
				return 0
			end
			GMMsg2Player(szName, "<color=yellow>DÞch chuyÓn ®Õn ng­êi ch¬i nµy thµnh c«ng!")
end

function tbAloneScript:PlayerMoveToGM(nPlayerIndex)
	local nWorld, nX, nY;
	local szPlayerName = "";
	local szGMName = "";
	local GMPlayer = PlayerIndex;
		PlayerIndex = GMPlayer;
			szGMName = GetName();
			nWorld, nX, nY = GetWorldPos();
		PlayerIndex = nPlayerIndex;
			szPlayerName = GetName();
			local nWorldIdx = NewWorld(nWorld, nX, nY)
			if nWorldIdx ~= 1 then
				PlayerIndex = GMPlayer;
					GMMsg2Player(szPlayerName, "DÞch chuyÓn ®Õn ng­êi ch¬i nµy thÊt b¹i!")
				return 0
			end
			GMMsg2Player("Th«ng b¸o triÖu tËp", "B¹n ®­îc GM ra lÖnh triÖu tËp!")
		PlayerIndex = GMPlayer;
			GMMsg2Player(szPlayerName, "<color=yellow>B¹n ®· triÖu tËp ng­êi ch¬i nµy thµnh c«ng!")
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--																	LÊy vËt phÈm chØ ®Þnh																			--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:GMLoginInGame()
	if (self:CheckGameMaster() == 2) then
		if (CalcEquiproomItemCount(6,1,4850,-1) == 0) then
			local nItemIndex = AddItem(6,1,4850,1,0,0);
			SetItemBindState(nItemIndex, -1);
		end
		if (CalcEquiproomItemCount(6,1,1266,-1) == 0) then
			local nItemIndex = AddItem(6,1,1266,1,0,0);
			SetItemBindState(nItemIndex, -1);
		end
		if (GetLevel() < 5) then
			ST_LevelUp(5-GetLevel())
		end

		AddSkillState(733,1,0,777600);
		
		SetFightState(0); 
		
		if (Title_GetActiveTitle() ~= 5000) then
			SetTask(1122, 5000)
			Title_AddTitle(5000, 1, 30*24*60*60*18);
			Title_ActiveTitle(5000);
		end
	end
end

function tbAloneScript:Write()
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
function tbAloneScript:CheckGameMaster()
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

function tbAloneScript:StartGameServer()
	for i = 1, getn(TAB_LINKFILEDATA) do
		self:FileSystem_LoadFile(TAB_LINKFILEDATA[i][1])
	end
end

-- ThiÕt lËp d÷ liÖu
--		+ szLinkFile: ®­êng dÉn file d¹ng "\\data\\log.txt"
--		+ szSection: "SECTION"
--		+ szKey: Tõ khãa cÇn load
--		+ szValue: Gi¸ trÞ cña tõ khãa ®ã
function tbAloneScript:FileSystem_SetData(szLinkFile, szSection, szKey, szValue)
	IniFile_SetData(szLinkFile, szSection, szKey, szValue)
end

function tbAloneScript:FileSystem_SaveData(szLinkFile)
	IniFile_Save(szLinkFile, szLinkFile)
end

-- LÊy d÷ liÖu
--		+ szLinkFile: ®­êng dÉn file d¹ng "\\data\\log.txt"
--		+ szSection: "SECTION"
--		+ szKey: Tõ khãa cÇn load
function tbAloneScript:FileSystem_GetData(szLinkFile, szSection, szKey)
	return IniFile_GetData(szLinkFile, szSection, szKey)
end

-- Load d÷ liÖu
--		+ szLinkFile: ®­êng dÉn file d¹ng "\\data\\log.txt"
function tbAloneScript:FileSystem_LoadFile(szLinkFile)
	File_Create(szLinkFile)
	return IniFile_Load(szLinkFile, szLinkFile)
end

-- LÊy danh s¸ch trong file:
--		+ szLinkFile: ®­êng dÉn file d¹ng "\\data\\log.txt"
--		+ szSection = "TABLE"
--> Gi¸ trÞ tr¶ vÒ: Sè l­îng dßng, danh s¸ch table
function tbAloneScript:FileSystem_GetCount(szLinkFile, szSection)
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

function tbAloneScript:GetIP()
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

-----------------------------------------------------------------------------------------------------------------------------------------------------
--																	LÊy vËt phÈm chØ ®Þnh																			--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:TakeSpecifiedItem()
	g_AskClientStringEx(GetStringTask(TASKS_GETITEM), 0, 256, "Th«ng sè item:", {self.TakeSpecifiedItemParam, {self}})
end

function tbAloneScript:TakeSpecifiedItemParam(szParam)
	if not szParam then
		Talk(1, "", "GM ch­a nhËp th«ng sè cña mét item bÊt kú, vui lßng thö l¹i.")
		return 0
	end
	
	local nType, tbParam = self:GetTypeParam(szParam)
	if (nType == 0) then
		GMMsg2Player("LÊy vËt phÈm chØ ®Þnh", "ThÊt b¹i! Tèi ®a cho phÐp lµ 16 th«ng sè.")
		return 0
	end
	local nIsParam = self:IsParamNumber(tbParam[2])
	if nIsParam ~= 1 then
		GMMsg2Player("LÊy vËt phÈm chØ ®Þnh", "ThÊt b¹i! ChØ sö dông c¸c ký tù sè tõ 0-9 vµ dÊu phÈy “,”.")
		return 0
	end
	
	self:SetCountSpecifiedItem(nType, tbParam)
end

function tbAloneScript:SetCountSpecifiedItem(nType, tbParam)
	local tbOptionSelected = {}
	g_AskClientNumberEx(1, 500, "NhËp sè l­îng:", {self.CountSpecifiedItem, {self, {nType, tbParam, tbOptionSelected}}})
end

function tbAloneScript:CountSpecifiedItem(tbSpecifiedItem, nCount, nOptionSelected)
	local szTitle = "H·y thiÕt lËp thªm option nÕu muèn.\n\n* Option GM ®· chän:"
	local nIsTable = self:IsOption(tbSpecifiedItem[3], "table")
	if nIsTable then
		for x, y in tbSpecifiedItem[3] do
			szTitle = szTitle..format("\n"..strfill_right("+", 5, " ").." <color=green>%s<color>",y[1])
		end
	end
	
	local tbOpt = {}
		local nBind = self:GetTypeOption(tbSpecifiedItem[3], 1)
		if nBind ~= 1 then
			tinsert(tbOpt, {"+ Thªm option khãa b¶o hiÓm vÜnh viÔn", self.AddOptionInItem, {self, tbSpecifiedItem, nCount, 1}})
			tinsert(tbOpt, {"+ Thªm option khãa b¶o hiÓm", self.AddOptionInItem, {self, tbSpecifiedItem, nCount, 2}})
		end
		
		local nExpired = self:GetTypeOption(tbSpecifiedItem[3], 2)
		if nExpired ~= 2 then
			tinsert(tbOpt, {"+ Thªm option thêi h¹n sö dông", self.AddOptionInItem, {self, tbSpecifiedItem, nCount, 3}})
		end
		
		tinsert(tbOpt, {"§· xong, ta muèn lÊy ngay b©y giê", self.CreateItemSpecified, {self, tbSpecifiedItem, nCount}})
		tinsert(tbOpt, {"Chän l¹i option", self.ReselectOption, {self, tbSpecifiedItem, nCount}})

		tinsert(tbOpt, {"§ãng."})
	CreateNewSayEx(szTitle, tbOpt)
end

function tbAloneScript:CreateItemSpecified(tbSpecifiedItem, nCount)
	local GMPlayer = PlayerIndex;
	local szPlayerName = "";
	local szGMName = "";
	if nPlayerIndex then
		PlayerIndex = nPlayerIndex;
		szPlayerName = GetName();
	end
	
	local nItemIndex = 0;
	local szItemName = "";
	local tbItem = self:GetParamItem(tbSpecifiedItem)
		for i = 1, nCount do
			nItemIndex = self:NewItemEx(tbItem)
			
			if (nItemIndex <= 0) then
				break
			end
				
			szItemName = GetItemName(nItemIndex)
			
			if (IsItemStackable(nItemIndex) == 1) then
				SetItemStackCount(nItemIndex, 1)
			end
			
			for x, y in tbSpecifiedItem[3] do
				if y[3] == 1 then
					SetItemBindState(nItemIndex, y[2])
				end
				if y[3] == 2 then
					ITEM_SetExpiredTime(nItemIndex,y[2]*24*60)
				end
			end
			
			AddItemByIndex(nItemIndex)
		end
	
	SetStringTask(TASKS_GETITEM, tbSpecifiedItem[2][1])

	if nPlayerIndex then
		PlayerIndex = GMPlayer;
			szGMName = GetName()
			Msg2Player(format("B¹n ®· tÆng cho ng­êi ch¬i <color=yellow>%s<color> nµy %d %s", szPlayerName, nCount, szItemName))
		PlayerIndex = nPlayerIndex;
			Msg2Player(format("B¹n ®· ®­îc GM <color=yellow>%s<color> tÆng %d %s", szGMName, nCount, szItemName))
		nPlayerIndex = nil;
	else
		Msg2Player(format("B¹n nhËn ®­îc %d %s", nCount, szItemName))
	end
end

function tbAloneScript:GetParamItem(tbSpecifiedItem)
	local nType = tbSpecifiedItem[1]
	local tbParam = tbSpecifiedItem[2][2]
	local nVersion, nQuality;
	local nGenre, nDetailType, nParcular, nLevel, nSeries, nMagic;
	local MagicIndex1, MagicIndex2, MagicIndex3, MagicIndex4, MagicIndex5, MagicIndex6;
	
	if (nType == 1) then
		if (getn(tbParam) == 1) then
			nQuality, nDetailType = 1, (tbParam[1] -1)
		elseif (getn(tbParam) == 2) then
			nQuality, nDetailType = tbParam[1], (tbParam[2] -1);
		end
	elseif (nType == 2) then
		nGenre, nDetailType, nParcular, nLevel, nSeries, nMagic = tbParam[1],tbParam[2],tbParam[3],tbParam[4],tbParam[5],tbParam[6];
	elseif (nType == 3) then
		nGenre, nDetailType, nParcular, nLevel, nSeries, nMagic = tbParam[1],tbParam[2],tbParam[3],tbParam[4],tbParam[5],tbParam[6];
		MagicIndex1, MagicIndex2, MagicIndex3, MagicIndex4, MagicIndex5, MagicIndex6 = tbParam[7],tbParam[8],tbParam[9],tbParam[10],tbParam[11],tbParam[12];
	end
	
	return {
		nVersion or 4,
		nQuality or 2,
		nGenre or 0,
		nDetailType or 0,
		nParcular or 0,
		nLevel or 0,
		nSeries or 0,
		nMagic or 0,
		MagicIndex1 or 0,
		MagicIndex2 or 0,
		MagicIndex3 or 0,
		MagicIndex4 or 0,
		MagicIndex5 or 0,
		MagicIndex6 or 0
	}
end

function tbAloneScript:NewItemEx(tbItem)
	return NewItemEx(
		tbItem[1],
		0,
		tbItem[2],
		tbItem[3],
		tbItem[4],
		tbItem[5],
		tbItem[6],
		tbItem[7],
		tbItem[8],
		tbItem[9],
		tbItem[10],
		tbItem[11],
		tbItem[12],
		tbItem[13],
		tbItem[14],
		0)
end

function tbAloneScript:ReselectOption(tbSpecifiedItem, nCount)
	tbSpecifiedItem[3] = {}
	self:CountSpecifiedItem(tbSpecifiedItem, nCount)
end

function tbAloneScript:GetTypeOption(tbOption, nType)
	for x, y in tbOption do
		if tbOption[x][3] == nType then
			return nType
		end
	end
	return 0
end

function tbAloneScript:AddOptionInItem(tbSpecifiedItem, nCount, nOptionSelected)
	local tbListOption =
	{
		[1] = {"Khãa b¶o hiÓm vÜnh viÔn", 1},
		[2] = {"Khãa b¶o hiÓm", 1},
		[3] = {"Thêi h¹n sö dông", 2},
	};
	
	if (nOptionSelected == 1) then
		tbSpecifiedItem[3][nOptionSelected] = {tbListOption[nOptionSelected][1], -2, tbListOption[nOptionSelected][2]};
		self:CountSpecifiedItem(tbSpecifiedItem, nCount)
	elseif (nOptionSelected == 2) then
		tbSpecifiedItem[3][nOptionSelected] = {tbListOption[nOptionSelected][1], -1, tbListOption[nOptionSelected][2]};
		self:CountSpecifiedItem(tbSpecifiedItem, nCount)
	elseif (nOptionSelected == 3) then
		self:SetTimeInItem(tbSpecifiedItem, nCount, nOptionSelected, tbListOption[nOptionSelected]);
	end
end

function tbAloneScript:SetTimeInItem(tbSpecifiedItem, nCount, nOptionSelected, tbListOption)
	g_AskClientNumberEx(1,999999, "Thêi h¹n sö dông:", {self.SetTimeOptionInItem, {self, tbSpecifiedItem, nCount, nOptionSelected, tbListOption}})
end

function tbAloneScript:SetTimeOptionInItem(tbSpecifiedItem, nCount, nOptionSelected, tbListOption, nTimer)
	tbSpecifiedItem[3][nOptionSelected] = {tbListOption[1], nTimer, tbListOption[2]};
	self:CountSpecifiedItem(tbSpecifiedItem, nCount)
end

function tbAloneScript:IsOption(tbOpt, nType)
	if (type(tbOpt) == nType) then
		return 1
	else
		return
	end
end

function tbAloneScript:GetTypeParam(szParam)
	local nTypeParam = 0;
	local nMaxParam = 16;
	local tbParam = split(szParam)
	if (getn(tbParam) < 3) then
		nTypeParam = 1;
	elseif (getn(tbParam) == 6) then
		nTypeParam = 2;
	elseif (getn(tbParam) > 6) and (getn(tbParam) < 13) then
		nTypeParam = 3;
	-- elseif (getn(tbParam) >= 13) and (getn(tbParam) =< nMaxParam) then
		-- nTypeParam = 4;
	end
	return nTypeParam, {szParam, tbParam};
end

function tbAloneScript:IsParamNumber(tbParam)
	for i = 1, getn(tbParam) do
		local IsNumber = tonumber(tbParam[i])
		if not IsNumber then
			return 0;
		end
	end
	return 1;
end

-----------------------------------------------------------------------------------------------------------------------------------------------------
--																	HÖ thèng lÊy kü n¨ng																			--
-----------------------------------------------------------------------------------------------------------------------------------------------------
function tbAloneScript:SkillsSystem()
	local szTitle = "HÖ thèng kü n¨ng bao gåm thªm kü n¨ng vµ xãa kü n¨ng, b¹n muèn sö dông hÖ thèng kü n¨ng nµo?"
	local tbOpt = {}
		tinsert(tbOpt, {"NhËn skill hæ trî vµ t¨ng dame cho GM test game", self.DamVaSkill, {self}})		
		tinsert(tbOpt, {"Thªm kü n¨ng", g_AskClientStringEx, {"", 0,256,"Néi dung th«ng b¸o:", {self.AddSkills, {self}}}})
		tinsert(tbOpt, {"Xãa kü n¨ng", g_AskClientStringEx, {"", 0,256,"Néi dung th«ng b¸o:", {self.DeleteSkills, {self}}}})
		tinsert(tbOpt, {"§ãng."})
	CreateNewSayEx(szTitle, tbOpt)
end

function tbAloneScript:DamVaSkill()
	AskClientForNumber("DamVaSkill2",0,50000,"NhËp ®iÓm tiÒm n¨ng:")
end

function DamVaSkill2(n_key)
AddProp(n_key)
AddMagic(150,50)
AddMagic(362,50)
AddMagic(360,50)
AddMagic(376,50)
AddMagic(365,50)
AddMagic(380,50)
AddMagic(353,50)
AddMagic(69,50)
AddMagic(16,50)
AddMagic(318,50)
AddMagic(275,50)
AddMagic(48,50)
AddMagic(36,50)
AddMagic(73,50)
AddMagic(111,50)
AddMagic(357,50)
AddMagic(128,50)
AddMagic(109,50)
AskClientForNumber("DamVaSkill3",0,50000,"NhËp ®iÓm t¨ng søc m¹nh:")
end

function DamVaSkill3(n_key2)
AddStrg(n_key2);
AskClientForNumber("DamVaSkill4",0,50000,"NhËp ®iÓm t¨ng th©n ph¸p:")
AddProp(n_key2)
end

function DamVaSkill4(n_key3)
AskClientForNumber("DamVaSkill5",0,50000,"NhËp ®iÓm t¨ng néi c«ng:")
AddProp(n_key3)
AddDex(n_key3);
end

function DamVaSkill5(n_key4)
AddEng(n_key4);
AddProp(6000)
AskClientForNumber("DamVaSkill6",0,6000,"NhËp ®iÓm t¨ng sinh khÝ:")
end

function DamVaSkill6(n_key5)
AddVit(n_key5);
end

function tbAloneScript:AddSkills(szSkills)
	local _,_, nStart, nEnd, _, nPoint = self:GetSplitSkills(szSkills)
	for i = nStart, nEnd do
		AddMagic(i, nPoint)
		GMMsg2Player("Thªm kü n¨ng", "Thªm kü n¨ng “"..GetSkillName(i).."” ®¼ng cÊp "..nPoint.."!")
	end
end

function tbAloneScript:DeleteSkills(szSkills)
	local tbSkills, nCount, nStart, _, nEnd, _ = self:GetSplitSkills(szSkills)
	if nCount > 2 then
		GMMsg2Player("Xãa kü n¨ng", "NhËp th«ng sè bÞ lçi, chØ cã thÓ nhËp tèi ®a 2 th«ng sè trë xuèng.")
		return 0
	end
	for i = nStart, nEnd do
		DelMagic(i)
		GMMsg2Player("Xãa kü n¨ng", "Kü n¨ng “"..GetSkillName(i).."” ®· ®­îc xãa bá!")
	end
end

function tbAloneScript:GetSplitSkills(szString)
	local nStartSkill, nEndSkill, nEndSkill2, nPointSkill;
	local tbString = split(szString, ",")
	local nType = self:IsParamNumber(tbString)
	if nType ~= 1 then
		GMMsg2Player("Thªm kü n¨ng", "NhËp th«ng sè bÞ lçi, chØ sö dông c¸c ký tù sè tõ 0-9 vµ dÊu phÈy “,”.")
		return 0
	end
	
	if (getn(tbString) == 1) then
		nStartSkill = tbString[1];
		nEndSkill = tbString[1];
		nEndSkill2 = tbString[1];
		nPointSkill = 0;
	elseif (getn(tbString) == 2) then
		nStartSkill = tbString[1];
		nEndSkill = tbString[1];
		nEndSkill2 = tbString[2];
		nPointSkill = tbString[2];
	elseif (getn(tbString) == 3) then
		nStartSkill = tbString[1];
		nEndSkill = tbString[2];
		nPointSkill = tbString[3];
	end

	return tbString, getn(tbString), nStartSkill, nEndSkill, nEndSkill2, nPointSkill;
end

tbAloneScript:StartGameServer();