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
Include("\\script\\global\\findboss.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")

function main()
	-- Call bosshoangkim
	PickBoss()
	-- local szTitle = format("Xin ch�o");
	-- local tbOption = {}
	-- 	tinsert(tbOption, {"G�i Boss Ho�ng Kim", GoiBossHoangKim})	
	-- 	tinsert(tbOption, {"��ng."})
	-- CreateNewSayEx(szTitle, tbOption)
end

function GoiBossHoangKim()
BossHK(f_bossx,f_bossy)
end

TBBOSS  = 
{ --t�n boss,id boss, t� l� r�i ��,series boss,nLevel
	[1]={	szName = "Huy�n Gi�c ��i S�",		nBossId = 740,	nRate = 322,	nSeries = 0,	nLevel = 95},
	[2]={	szName = "���ng B�t Nhi�m",			nBossId = 741,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[3]={	szName = "B�ch Doanh Doanh",		nBossId = 742,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[4]={	szName = "Thanh Tuy�t S� Th�i",		nBossId = 743,	nRate = 341,	nSeries = 2,	nLevel = 95},
	[5]={	szName = "Y�n Hi�u Tr�i",			nBossId = 744,	nRate = 336,	nSeries = 2,	nLevel = 95},
	[6]={	szName = "H� Nh�n Ng�",				nBossId = 745,	nRate = 321,	nSeries = 3,	nLevel = 95},
	[7]={	szName = "T� ��i Nh�c",				nBossId = 746,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[8]={	szName = "Tuy�n C� T�",				nBossId = 747,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[9]={	szName = "�o�n M�c Du�",			nBossId = 565,	nRate = 227,	nSeries = 3,	nLevel = 95},
	[10]={	szName = "C� B�ch",					nBossId = 566,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[11]={	szName = "���ng Phi Y�n",			nBossId = 1366,	nRate = 200,	nSeries = 1,	nLevel = 95},	
	[12]={	szName = "H� Linh Phi�u",			nBossId = 568,	nRate = 200,	nSeries = 2,	nLevel = 95},
	[13]={	szName = "Lam Y Y",					nBossId = 582,	nRate = 200,	nSeries = 1,	nLevel = 95},
	[14]={	szName = "M�nh Th��ng L��ng",		nBossId = 583,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[15]={	szName = "Gia Lu�t T� Ly",			nBossId = 563,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[16]={	szName = "��o Thanh Ch�n Nh�n",		nBossId = 562,	nRate = 200,	nSeries = 4,	nLevel = 95},
	[17]={	szName = "V��ng T�",				nBossId = 739,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[18]={	szName = "Huy�n Nan ��i S�",		nBossId = 1365,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[19]={	szName = "Chung Linh T�",			nBossId = 567,	nRate = 200,	nSeries = 2,	nLevel = 95},
	[20]={	szName = "Thanh Li�n T�",			nBossId = 1368,	nRate = 200,	nSeries = 4,	nLevel = 95},
	
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
	
	tb = {GetName().." b�n mu�n th� boss n�o?"}
	
	for i = f_bossx1, f_bossy1 do
		tinsert(tb,format("%s/#PickBoss(%d)",TBBOSS[i].szName,i));
	end

	if (f_bossx1 ~= 1) then
		tinsert(tb, "Trang tr��c/#BossHK( 1,"..(f_bossx1-1)..")");
	end
	
	if (f_bossy1 < n_count) then
		tinsert(tb, "Trang sau/#BossHK( "..(f_bossy1+1)..","..n_count..")");
	end
	tinsert(tb,"�� ta suy ngh� ��/cancel");
	CreateTaskSay(tb)
	
end

function PickBoss(nIndex)
	if GetFightState() == 0 then 
		Talk(1,"","Kh�ng th� th� boss � nh�ng n�i phi chi�n ��u ���c.")
		return 
	end
	-- Random chance not to spawn a boss
	local nChance = random(1, 100);
	if nChance <= 10 then
		Talk(1,"","T��ng g�i Boss m� d� �, h�y c�i thi�n kh� n�ng gacha �i")
		return
	end
	
	local nBossCount = getn(TBBOSS);
	local nRandomIndex = random(1, nBossCount);
	local item = TBBOSS[nRandomIndex];

	local nw,nx,ny = GetWorldPos();
	local index = AddNpcEx(item.nBossId,item.nLevel,item.nSeries,SubWorldID2Idx(nw),nx*32,ny*32,1,item.szName,1);
	SetNpcDeathScript(index,"\\script\\global\\pgaming\\missions\\bosshoangkim\\bossdai\\goldboss_death.lua")		
	SetNpcParam(index,1,item.nBossId); --l�u id boss.
	SetNpcTimer(index,120*60*18)
	local W,X,Y = GetWorldPos();
	str = format("<color=yellow>%s<color> �� xu�t hi�n t�i <color=yellow>%s(%d,%d)<color>",item.szName,SubWorldName(SubWorld),floor(X/8),floor((Y+5)/16))
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, str)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

function cancel()
end