Include("\\script\\global\\pgaming\\missions\\bosshoangkim\\bosstieu\\lib\\serverlib.lua")


SMALLBOSS_SERVER_INFO  = 
{ --tªn boss,id boss, tû lÖ r¬i ®å,series boss,nLevel
	[1]={	szName = "LiÔu Thanh Thanh",		nBossId = 523,	nRate = 322,	nSeries = 1,	nLevel = 90},
	[2]={	szName = "DiÖu Nh­",			nBossId = 513,	nRate = 336,	nSeries = 2,	nLevel = 90},
	[3]={	szName = "Tr­¬ng Tèng ChÝnh",		nBossId = 511,	nRate = 336,	nSeries = 4,	nLevel = 90},
}

SMALLBOSS_FILE_POS = 
{
	"\\settings\\bosshoangkim\\maps\\bigboss\\bienkinh.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\daily.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\duongchau.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\laman.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\phuongtuong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\tuongduong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\thanhdo.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\duongtrungdong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\khoalangdong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\luongthuydong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\maccaoquat.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\nhanthachdong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\phithiendong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\phonglangdo.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\phudungdong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\samac1.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\samac2.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\samac3.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\samacdiabieu.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\sonbaodong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\thanhkhedong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\truongbachsonbac.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\truongbachsonnam.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\vodanhdong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\vulangdong.txt",
}

SMALLBOSS_AWARD = 
{
	
	[511]= --Vâ §ang
	{	---"Tr­¬ng Tèng ChÝnh",511,341
		szName = {"Vâ §ang MËt TÞch","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","Bµn Nh­îc T©m Kinh","Tr­êng MÖnh Hoµn","Phi Phong"},
		nProp = {{6,1,24,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,12,1,0,0},{6,0,1,1,0,0},{6,1,15,1,0,0}},
		nCount = 2,
		nRate = 90,
	},
	[513]= ---Nga My.
	{--"DiÖu Nh­",513,322
		szName = {"Nga My MËt TÞch","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","Bµn Nh­îc T©m Kinh","Tr­êng MÖnh Hoµn","Phi Phong"},
		nProp = {{6,1,21,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,12,1,0,0},{6,0,1,1,0,0},{6,1,15,1,0,0}},
		nCount = 2,
		nRate = 90,
	},
	[523]= ---®­êng m«n.
	{ --"LiÔu Thanh Thanh",523,336
		szName = {"§­êng M«n MËt TÞch","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","Bµn Nh­îc T©m Kinh","Tr­êng MÖnh Hoµn","Phi Phong"},
		nProp = {{6,1,25,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,12,1,0,0},{6,0,1,1,0,0},{6,1,15,1,0,0}},
		nCount = 2,
		nRate = 90,
	},
}


BOSS_DEATH_SCRIPT = "\\script\\global\\pgaming\\missions\\bosshoangkim\\bosstieu\\smallboss_death.lua";
TIME_SMALLBOSS_REMOVE = 60*60*18;
SmallBoss_DataSave = {};

function smallboss_toworld(nNumBoss)
	if not nNumBoss then 
		return 
	end
	

	local nTime = tonumber(GetLocalDate("%H"));
	for k=1,nNumBoss do 
		boss_pak = smallboss_getaboss(k);
		if not boss_pak then 
			_Write2File("Script_Error_SmallBoss",format("[%s] Time %d bug boss pak",nTime,GetLocalDate("%m/%d/%Y_%H:%M:%S")))
			return 
		end
		local nNpcIndex = AddNpcEx(unpack(boss_pak));
		SetNpcParam(nNpcIndex,1,boss_pak[1]); --l­u id boss.
		SetNpcDeathScript(nNpcIndex,BOSS_DEATH_SCRIPT);
		SetNpcTimer(nNpcIndex, TIME_SMALLBOSS_REMOVE);
		local map_name = SmallBoss_DataSave[nTime].record_boss[boss_pak[4] * 1000];
		local szMsg = format("Nghe nãi %s ®· xuÊt hiÖn ë %s g©y sãng giã cho vâ l©m.",boss_pak[8],map_name);
		---floor((boss_pak[5]/32)/8),floor((boss_pak[6]/32)/16)
		Msg2SubWorld(format("<color=yellow>%s<color> xuÊt hiÖn t¹i <color=green>%s (%d,%d) <color>. C¸c nh©n sü h·y nhanh chãng thu thËp h¾n.",boss_pak[8],map_name,floor((boss_pak[5]/32)/8),floor((boss_pak[6]/32)/16)));
		AddGlobalNews(szMsg)
	end
end

function smallboss_remove()
	for k,v in SmallBoss_DataSave do 
		SmallBoss_DataSave[k] = nil;
	end
end

--create new boss table
function smallboss_newboss(nTime)
	if not SmallBoss_DataSave[nTime] then 
		SmallBoss_DataSave[nTime] = {record_boss = {},new_boss = {}};
	end
end


--t¹o 1 table boss.
function smallboss_getaboss(tab_Index)
	local ncount = getn(SMALLBOSS_FILE_POS);
	local m_loop = 0;
	local szFile = "";
	local nTime = tonumber(GetLocalDate("%H"));
	
	local nTimeIndex = smallboss_newboss(nTime);

	if nTimeIndex == 0 then 
		print("BUG CREATE SMALLBOSS_NEWBOSS FUNCTION");
		return 
	end
	
	local item = SmallBoss_DataSave[nTime];
	
	--record_boss = {},new_boss = {}
	--lÊy to¹ ®é map boss, vµ map name.
	while (1) do 
		m_loop = m_loop + 1;
		if m_loop == 1000 then break end;
		local nRFile = random(1,ncount);
		if not item.record_boss[nRFile*10] then 
			item.record_boss[nRFile*10] = nRFile;
			szFile =  SMALLBOSS_FILE_POS[nRFile];
			break;
		end
	end
	
	local nMapBoss,nXBoss,nYBoss,zMapName = _getadata(szFile);
	m_loop = 0;
	
	--print(nMapBoss,nXBoss,nYBoss,zMapName,SubWorldID2Idx(nMapBoss)*1000,"show info case");
	--l­u map name.
	if not item.record_boss[SubWorldID2Idx(nMapBoss) * 1000]  then 
		item.record_boss[SubWorldID2Idx(nMapBoss) * 1000] = zMapName;
	end
	
	local boss_info = {};
	---lÊy boss info id tªn ..
	boss_info = SMALLBOSS_SERVER_INFO[tab_Index];
	--	[1]={	szName = "HuyÒn Gi¸c §¹i S­",		nBossId = 740,	nRate = 322,	nSeries = 0,	nLevel = 95},

	local nBossID,nBossLevel,nBossSeries,szBossName = boss_info.nBossId,boss_info.nLevel,boss_info.nSeries,boss_info.szName;
	return {nBossID,nBossLevel,nBossSeries,SubWorldID2Idx(nMapBoss),nXBoss*32,nYBoss*32,1,szBossName,1};
end

--/**VINA-GAME**/
function _getadata(file)
	local totalcount = _GetTabFileHeight(file) - 1;
	id = random(totalcount);
	w = tonumber(_GetTabFileData(file,id + 1,1));
	x = tonumber(_GetTabFileData(file, id + 1, 2));
	y = tonumber(_GetTabFileData(file, id + 1, 3));
	z = _GetTabFileData(file, id + 1, 4);
	--print(y,z,"get data");
	return w,x,y,z;
end

function _GetIniFileData(mapfile, sect, key)
	if (IniFile_Load(mapfile, mapfile) == 0) then 
		print("Load IniFile Error!"..mapfile)
		return ""
	else
		return IniFile_GetData(mapfile, sect, key)	
	end
end

function _GetTabFileHeight(mapfile)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFileError!"..mapfile);
		return 0
	end
	return TabFile_GetRowCount(mapfile)
end;

function _GetTabFileData(mapfile, row, col)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFile Error!"..mapfile)
		return 0
	else
		if type( tonumber(TabFile_GetCell(mapfile, row, col)) ) == "number" then --number
			return tonumber(TabFile_GetCell(mapfile, row, col));
		else --string 
			return TabFile_GetCell(mapfile, row, col);
		end
	end
end
