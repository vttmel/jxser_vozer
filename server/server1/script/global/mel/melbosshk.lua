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
	local szTitle = format("Xin chµo");
	local tbOption = {}
		tinsert(tbOption, {"G‰i Boss Hoµng Kim", GoiBossHoangKim})	
		tinsert(tbOption, {"ß„ng."})
	CreateNewSayEx(szTitle, tbOption)
end

function GoiBossHoangKim()
BossHK(f_bossx,f_bossy)
end

TBBOSS  = 
{ --t™n boss,id boss, t˚ l÷ r¨i ÆÂ,series boss,nLevel
	[1]={	szName = "Huy“n Gi∏c ßπi S≠",		nBossId = 740,	nRate = 322,	nSeries = 0,	nLevel = 95},
	[2]={	szName = "ß≠Íng B t Nhi‘m",			nBossId = 741,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[3]={	szName = "Bπch Doanh Doanh",		nBossId = 742,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[4]={	szName = "Thanh Tuy÷t S≠ Th∏i",		nBossId = 743,	nRate = 341,	nSeries = 2,	nLevel = 95},
	[5]={	szName = "Y™n Hi”u Tr∏i",			nBossId = 744,	nRate = 336,	nSeries = 2,	nLevel = 95},
	[6]={	szName = "Hµ Nh©n Ng∑",				nBossId = 745,	nRate = 321,	nSeries = 3,	nLevel = 95},
	[7]={	szName = "Tı ßπi Nhπc",				nBossId = 746,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[8]={	szName = "Tuy“n C¨ Tˆ",				nBossId = 747,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[9]={	szName = "ßoπn MÈc Du÷",			nBossId = 565,	nRate = 227,	nSeries = 3,	nLevel = 95},
	[10]={	szName = "CÊ B∏ch",					nBossId = 566,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[11]={	szName = "ß≠Íng Phi Y’n",			nBossId = 1366,	nRate = 200,	nSeries = 1,	nLevel = 95},	
	[12]={	szName = "Hµ Linh Phi™u",			nBossId = 568,	nRate = 200,	nSeries = 2,	nLevel = 95},
	[13]={	szName = "Lam Y Y",					nBossId = 582,	nRate = 200,	nSeries = 1,	nLevel = 95},
	[14]={	szName = "Mπnh Th≠¨ng L≠¨ng",		nBossId = 583,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[15]={	szName = "Gia LuÀt Tﬁ Ly",			nBossId = 563,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[16]={	szName = "ßπo Thanh Ch©n Nh©n",		nBossId = 562,	nRate = 200,	nSeries = 4,	nLevel = 95},
	[17]={	szName = "V≠¨ng T∏",				nBossId = 739,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[18]={	szName = "Huy“n Nan ßπi S≠",		nBossId = 1365,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[19]={	szName = "Chung Linh TÛ",			nBossId = 567,	nRate = 200,	nSeries = 2,	nLevel = 95},
	[20]={	szName = "Thanh Li™n Tˆ",			nBossId = 1368,	nRate = 200,	nSeries = 4,	nLevel = 95},
	
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
	
	tb = {GetName().." bπn muËn th∂ boss nµo?"}
	
	for i = f_bossx1, f_bossy1 do
		tinsert(tb,format("%s/#PickBoss(%d)",TBBOSS[i].szName,i));
	end

	if (f_bossx1 ~= 1) then
		tinsert(tb, "Trang tr≠Ìc/#BossHK( 1,"..(f_bossx1-1)..")");
	end
	
	if (f_bossy1 < n_count) then
		tinsert(tb, "Trang sau/#BossHK( "..(f_bossy1+1)..","..n_count..")");
	end
	tinsert(tb,"ß” ta suy ngh‹ Æ∑/cancel");
	CreateTaskSay(tb)
	
end

function PickBoss(nIndex)
	if GetFightState() == 0 then 
		Talk(1,"","Kh´ng th” th∂ boss Î nh˜ng n¨i phi chi’n Æ u Æ≠Óc.")
		return 
	end
	local item = TBBOSS[nIndex];
	local nw,nx,ny = GetWorldPos();
	local index = AddNpcEx(item.nBossId,item.nLevel,item.nSeries,SubWorldID2Idx(nw),nx*32,ny*32,1,item.szName,1);
	SetNpcDeathScript(index,"\\script\\global\\pgaming\\missions\\bosshoangkim\\bossdai\\goldboss_death.lua")		
	SetNpcParam(index,1,item.nBossId); --l≠u id boss.
	SetNpcTimer(index,120*60*18)
	local W,X,Y = GetWorldPos();
	str = format("<color=yellow>%s<color> Æ∑ xu t hi÷n tπi <color=yellow>%s(%d,%d)<color>",item.szName,SubWorldName(SubWorld),floor(X/8),floor((Y+5)/16))
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, str)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

function cancel()
end