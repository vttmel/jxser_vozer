IncludeLib("NPCINFO");
IncludeLib("SETTING");
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\general\\hotrotanthu\\vongsangtanthu.lua")
Include("\\script\\global\\general\\hotrotanthu\\giaiketnhanvat.lua")
Include("\\script\\global\\general\\hotrotanthu\\nhanskillhotro.lua")
Include("\\script\\global\\general\\thunghiem\\trangbixanh.lua")
Include("\\script\\global\\general\\thunghiem\\doiten.lua")
Include("\\script\\global\\general\\thunghiem\\kynangmonphai.lua")
Include("\\script\\global\\general\\thunghiem\\trangsuc.lua")
Include("\\script\\global\\general\\thunghiem\\nguhanhan.lua")
Include("\\script\\global\\general\\thunghiem\\phiphong.lua")
Include("\\script\\global\\general\\thunghiem\\point.lua")
Include("\\script\\global\\general\\thunghiem\\taytuynhanh.lua")
Include("\\script\\global\\general\\thunghiem\\thucuoi.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxop.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim_caocap.lua")
Include("\\script\\global\\general\\thunghiem\\trangbitim.lua")
Include("\\script\\global\\general\\thunghiem\\vatphamhotro.lua")
Include("\\script\\global\\general\\thunghiem\\dieukientaobanghoi.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\testserver.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\systemconfig.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\mel\\doitienvan.lua")
Include("\\script\\global\\mel\\thanbidochi.lua")
Include("\\script\\global\\general\\morongruong.lua")
Include("\\script\\global\\mel\\autoexec_mel.lua")

-----------------------------------------------------------------------tbFaction------------------------------------------------------------------------
local tbFaction =
{
	[1] =
	{
		szShowName = "Thi�u L�m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709},
		tbRank={72},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708},
		tbRank={69},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710},
		tbRank={76},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711},
		tbRank={80},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712},
		tbRank={64},
	},
	[6] =
	{
		szShowName = "Th�y Y�n",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713},
		tbRank={67},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714},
		tbRank={78},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715},
		tbRank={81},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716},
		tbRank={73},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717},
		tbRank={75},
	},
}
local tbFactionSeries =
{
[1] = {1, 2},
[2] = {3, 4},
[3] = {5, 6},
[4] = {7, 8},
[5] = {9, 10},
}
------------------------------------------------------------------------------------------------

THONGTINSERVER_DIALOG = "S� anh em n�m th�ng: <color=green>%s<color>\n"
TITLE_DIALOG = "T�n nh�n v�t: <color=green>%s<color> "
TITLE_DIALOG  = TITLE_DIALOG.."TTK: <color=green>%s<color>/<color=red>%s<color>, VLMT: <color=green>%s<color>/<color=red>%s<color>\n"
DOCHI_DIALOG = "�� ch�: <color=green>%s<color>\n"
DIEMTK_DIALOG = "�i�m t�ch l�y T�ng Kim: <color=green>%s<color>\n"
BOSS_SATTHU_DIALOG = "Boss s�t th�: <color=green>%s<color>/<color=red>%s<color>\n"
THONGTINNHANVAT_DIALOG = "May m�n: <color=green>%s<color>"
function main(nItemIndex)
	dofile("script/global/general/lenhbaitanthu.lua")
	local strFaction = GetFaction()
	local nW,nX,nY = GetWorldPos();
	local year = tonumber(date( "%y"))
	local mm = tonumber(date( "%m"))
	local day = tonumber(date( "%d"))
	local hour = tonumber(GetLocalDate("%H"))
	local mmin = tonumber(GetLocalDate("%M"))
	local nDate = tonumber(GetLocalDate("%y%m%d"));	
	local nDochi = nt_getTask(1027)
	local myDateBossST = nt_getTask(1192);
	local nTTK = nt_getTask(81);
	local nVLMT = nt_getTask(80);
	if myDateBossST ~= nDate then
		nt_setTask(1193, 0);
		nt_setTask(1192, nDate);
	end
	local nBossST = nt_getTask(1193)

	local nDiemTK = nt_getTask(747)
	local szThongTin = format(THONGTINSERVER_DIALOG, GetPlayerCount());
	szThongTin = szThongTin..format(TITLE_DIALOG, GetName(), nTTK, GioiHanTTK, nVLMT, GioiHanVLMT);
	szThongTin = szThongTin..format(DOCHI_DIALOG, nDochi);
	szThongTin = szThongTin..format(BOSS_SATTHU_DIALOG, nBossST,SoLuongBossSatThuTrongNgay);
	szThongTin = szThongTin..format(DIEMTK_DIALOG, nDiemTK);
	szThongTin = szThongTin..format(THONGTINNHANVAT_DIALOG, GetLucky(0));
	local tbSay = {szThongTin};
	if HoTroTestGame == 1 then
	--tinsert(tbSay, "Test Server/testserver");
	--tinsert(tbSay, "X�a to�n b� item trong h�nh trang/xoatoanboitem");
	--tinsert(tbSay, "H� tr� l�m nhi�m v� ho�ng kim nhanh/helpgoldquest");
	end
	tinsert(tbSay, "M� Shop Ti�n V�n/shoptienvan")
	tinsert(tbSay,"��i ti�n t�/doitien_main")
	tinsert(tbSay,"��i Th�n B� �� Ch� th�nh ti�n v�n/thanbidochi")
	if VongSangHoTroTanThu ==1 and GetSkillState(314) < 0 and GetLevel() < GioiHanCapNhanHoTroVongSang then
	--tinsert(tbSay, "V�ng s�ng h� tr� t�n th�/VongSangTanThu");
	end
	if NhanHoTroKyNang1xDen6x ==1 and GetTask(5744) == 0 then
	tinsert(tbSay, "Nh�n h� tr� skill 1x-6x/HoTroSkill2");
	end
	if ChinhServerPkNhanFullDoVaCap == 1 then
	--tinsert(tbSay, "X�a to�n b� item trong h�nh trang/xoatoanboitem");
	--tinsert(tbSay, "Nh�n h� tr�/nhanhotropk");
	end
	--tinsert(tbSay, "Thay ��i danh hi�u/change_title");
	tinsert(tbSay, "M� r�ng r��ng/MoRongRuong");
	tinsert(tbSay, "Nh�n Tr�ng Th�i Phi Chi�n ��u/phichiendau");
	tinsert(tbSay, "Gi�i k�t nh�n v�t/KetAcc");
	--tinsert(tbSay, "Fix/ChangeKNBToCoin_FixBug");			
	tinsert(tbSay,"H�y v�t ph�m/DisposeItem")
	--tinsert(tbSay,"T�o b�i qu�i/meltaobai")
	--tinsert(tbSay,"X�a b�i qu�i/melxoabai")
	--tinsert(tbSay,"T�m ID NPC/LietKeNPCXungQuanh")
	--tinsert(tbSay,"Ghi b�i qu�i/ghi_bai_quai")
	tinsert(tbSay, "K�t th�c ��i tho�i./no")
			
	CreateTaskSay(tbSay)
	return 1;
end

-----------------------------------------------
function phichiendau()
SetFightState(0); 
end

-----------------------------------------------


function LietKeNPCXungQuanh()
    local tbNpcList = GetAroundNpcList(60)
    
    -- Ki�m tra danh s�ch NPC
    if not tbNpcList or type(tbNpcList) ~= "table" or getn(tbNpcList) == 0 then
        print("Kh�ng t�m th�y NPC n�o trong ph�m vi")
        return 0
    end

    local total = getn(tbNpcList)
    print("T�m th�y " .. total .. " NPC trong ph�m vi:")

    -- In ID c�a NPC
    for i = 1, total do
        local nNpcIdx = tbNpcList[i]
        local npcId = GetNpcSettingIdx(nNpcIdx)
        if npcId then
            print("NPC " .. i .. ": ID=" .. tostring(npcId))
        else
            print("NPC " .. i .. ": ID kh�ng h�p l� (nil)")
        end
    end

    return total
end

----------------------------------------------------------------------------------------------------
--						Shop Ti�n V�n						--
----------------------------------------------------------------------------------------------------
function shoptienvan()
Sale(185); 
end

----------------------------------------------------------------------------------------------------
--						H� tr� server PK						--
----------------------------------------------------------------------------------------------------
function nhanhotropk()
		local szTitle = "Ng��i mu�n nh�n g� n�o?"
		local tbOpt = {}
		if check_faction() ~= 1 then
		else
		tinsert(tbOpt, {"V�o ph�i v� h�c full skill", choose_faction})
		end
		if GetTask(5734) == 0 then
		tinsert(tbOpt, {"Nh�n trang b� ho�ng kim Max Op", TRANGBIHOANGKIMMAXKHOA})
		end
		tinsert(tbOpt, {"Th� C��i", ThuCuoi2})
		tinsert(tbOpt, {"Trang B� T�m", TrangBiTim2})
		tinsert(tbOpt, {"Trang B� Xanh", TrangBiXanh})
		tinsert(tbOpt, {"Nh�n c�c lo�i �i�m", CacLoaiDiem2})
		tinsert(tbOpt, {"�i�n Ki�n T�o Bang H�i", DieuKienTaoBangHoi})
		tinsert(tbOpt, {"��i m�u", trangthai22})
		tinsert(tbOpt, {"�� ta suy ngh� l�i", no})		
		CreateNewSayEx(szTitle, tbOpt)
end

---------Trang Thai--------------
function trangthai22()
local szTitle = "Xin ch�o <color=red>"..GetName().."<color>"
local tbOpt =
	{
		{"Ch�nh Ph�i",chinhphai},
		{"Trung L�p",trunglap},
		{"T� Ph�i",taphai},
		{"S�t Th�",satthu},
		{"Tr� L�i",main},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function chinhphai()
SetCurCamp(1)
SetCamp(1)
end
function trunglap()
SetCurCamp(3)
SetCamp(3) 
end
function taphai()
SetCurCamp(2)
SetCamp(2) 
end
function satthu()
SetCurCamp(4)
SetCamp(4) 
end

------------------------V�o ph�i full skill-----------------------------
function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nSeries = GetSeries() + 1
	local szTitle = "Xin ch�o <color=red>"..GetName().."<color>. M�t khi gia nh�p m�n ph�i kh�ng th� thay ��i, h�y suy ngh� k�"
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Tr� V�", dialog_main})
	tinsert(tbOpt, {"Tho�t"})
	CreateNewSayEx(szTitle, tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<color=red>"..GetName().."<color> C� ch�c ch�n mu�n gia nh�p ph�i <color=yellow>%s<color> kh�ng?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X�c nh�n!", do_set_faction, {nIndex}},
		{"Tr� V�.", choose_faction},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do--Add Skill 90-120-150-180
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	for i=1, getn(%tbFaction[nIndex].tbRank) do--Add X�ng Hi�u
		SetRank(%tbFaction[nIndex].tbRank[i])
	end
	SetCurCamp(4)----M�u ch� ��
	SetCamp(4) 
	Talk(1, "KickOutSelf", format("Ng��i �� gia nh�p th�nh c�ng ph�i <color=yellow>%s", %tbFaction[nIndex].szShowName))
end
----------------------------------------------------------------------------------------------------

-------------------------------------------------------------------


function xoatoanboitem()
	Say("B�n c� mu�n x�a to�n b� kh�ng?", 2, "��ng v�y!/xoatoanbo", "Ta nh�m./no")
end

function xoatoanbo()
--Msg2Player("X�a th�nh c�ng!")
local tbEquip  = GetRoomItems(0)
for _,v in tbEquip do
RemoveItemByIndex(v)
end
ItemIndex = AddItem(6,1,4851,0,0,0)
ItemIndex2 = AddItem(6,1,1266,0,0,0)
ItemIndex3 = AddItem(6,1,438,0,0,0)
SetItemBindState(ItemIndex, -2)
SetItemBindState(ItemIndex2, -2)
SetItemBindState(ItemIndex3, -2)
end


function KetAcc()
	Say("B�n c� ch�c ch�n r�ng b�n �ang b� k�t acc kh�ng?", 2, "��ng v�y!/GiaiKetNhanVat", "Ta nh�m./no")
end

function ChangeKNBToCoin_FixBug()
	local nCount = CountFreeRoomByWH(2,3);
	print(nCount)
end;

---------------------------------nhiem vu hoang kim nhanh-------------------------------------------------------
tb_HelpGoldQuest = {
--=========================================================Ho�ng Kim Ch�nh Tuy�n START
	[1] = { --Chinh tuyen
		[1] = { --Chinh phai OK
			[1] = { --Cap 20
				[1] = {"��n ��i L� g�p L� M�c S�u",0,1,162,1470,3170},
				[2] = {"Ra b�n t�u ��nh b�i M�c S�u",1,1,162,1636,2984},
				[3] = {"V� th�nh g�p M�c S�u",0,1,162,1470,3170},
			},
			[2] = { --Cap 30
				[1] = {"T�m C�ng T� Ti�u",0,1,11,3223,5118},
				[2] = {"��nh b�i Gi�i L�u Phong",1,1,141,1544,3323},
				[3] = {"V� g�p M�c S�u",0,1,162,1470,3170},
			},
			[3] = { --Cap 40
				[1] = {"T�m g�p H� V� Th�",0,1,80,1705,3119},
				[2] = {"��nh b�i T� �ao Hi�p",1,1,173,1557,3049},
				[3] = {"Quay v� g�p M�c S�u",0,1,162,1470,3170},
			},
			[4] = { --Cap 50
				[1] = {"T�m g�p M�nh Ph�m",0,1,176,1626,2990},
				[2] = {"Ti�u di�t O�n ��c",1,1,24,2109,3322},
				[3] = {"Quay v� g�p M�nh Ph�m",0,1,176,1626,2990},
			},
			[5] = { --Cap 60
				[1] = {"Ti�u di�t Th�n b� nam nh�n",1,1,79,1681,3142},
				[2] = {"Quay v� g�p M�c S�u",0,1,162,1470,3170},
			},
		},
		[2] = { --Trung lap OK
			[1] = { --Cap 20 OK
				[1] = {"T�m g�p Ph� Nam B�ng",0,1,37,1699,3161},
				[2] = {"��nh Ninh T��ng Qu�n",1,1,179,2033,2755},
				[3] = {"T�m g�p Ph� Nam B�ng",0,1,37,1699,3161},
			},
			[2] = { --Cap 30 OK
				[1] = {"T�m g�p Ph� Nam B�ng",0,1,37,1699,3161},
				[2] = {"��nh L� Thi�n T��ng",1,1,136,1602,3197},
				[3] = {"T�m g�p Ph� Nam B�ng",0,1,37,1699,3161},
			},
			[3] = { --Cap 40 OK
				[1] = {"G�p L� Thu Thu�",0,1,154,343,1346},
				[2] = {"��nh T� T� L�c",1,1,5,1476,3433},
				[3] = {"G�p L� Thu Thu�",0,1,154,343,1346},
			},
			[4] = { --Cap 50 OK
				[1] = {"T�m g�p Ph� Nam B�ng",0,1,37,1699,3161},
				[2] = {"T�m ��c �i�u T�u",0,1,59,1642,3188},
				[3] = {"Ti�u di�t ��c �i�u T�u",1,1,66,1596,3307},
				[4] = {"Quay l�i g�p Ph� Nam B�ng",0,1,37,1699,3161},
			},
			[5] = { --Cap 60 -OK
				[1] = {"T�m g�p Ph� Nam B�ng",0,1,37,1699,3161},
				[2] = {"G�p ��i s� Kh�ng T�ch",0,1,103,1776,2843},
				[3] = {"��nh b�i Kh�ng T�ch",1,1,103,1744,2662},
				[4] = {"V� g�p Ph� Nam B�ng",0,1,37,1699,3161},
			},
		},
		[3] = { --Ta phai OK
			[1] = { --Cap 20 OK
				[1] = {"G�p V�n Nhi",0,1,100,1729,3173},
				[2] = {"G�p Th�i C�ng C�ng",0,1,176,1625,3203},
				[3] = {"��nh b�i Ti�u K� Nhi",1,1,90,1798,3284},
				[4] = {"G�p Th�i C�ng C�ng",0,1,176,1625,3203},
				[5] = {"G�p V�n Nhi",0,1,100,1729,3173},
			},
			[2] = { --Cap 30 OK
				[1] = {"G�p Ti�u S�",0,1,80,1597,3117},
				[2] = {"��nh b�i H� H�u Ph�c",1,1,21,2720,3956},
				[3] = {"G�p V�n Nhi",0,1,100,1729,3173},
				[4] = {"G�p Ph� L�i Th�",0,1,174,199*8,203*16},
				[5] = {"G�p M�c Th� H��ng Ch�",0,1,186,1600,3196},
				[6] = {"G�p Ph� L�i Th�",0,1,174,199*8,203*16},
			},
			[3] = { --Cap 40 OK
				[1] = {"G�p ��o Th�ch M�n",0,1,86,1606,3190},
				[2] = {"��nh Ti�u V� Th��ng",1,1,92,1948,3233},
				[3] = {"G�p ��o Th�ch M�n",0,1,86,1606,3190},
				[4] = {"G�p Ph� L�i Th�",0,1,174,199*8,203*16},
				[5] = {"G�p Nh� Ng�c",0,1,37,1681,3139},
			},
			[4] = { --Cap 50 OK
				[1] = {"G�p Tr�n Tam B�o",0,1,37,1756,2995},
				[2] = {"Ti�u di�t ��o T�c L�c Phi",1,1,195,599,3068},
				[3] = {"G�p Tr�n Tam B�o",0,1,37,1756,2995},
				[4] = {"��nh t��ng Kim �� Lan � T�ng 3 Thi�t Th�p",1,1,40,1699,3044},
				[5] = {"G�p �o�n M�c Du�",0,1,49,1801,3183},
				[6] = {"G�p �o�n M�c Thanh",0,1,121,2013,4490},
			},
			[5] = { --Cap 60 -OK
				[1] = {"G�p �o�n M�c Thanh",0,1,121,2013,4490},
				[2] = {"Ti�u anh h�ng kh�ng Kim, Li�u ��nh",1,1,94,1565,3141},
				[3] = {"G�p �o�n M�c Thanh",0,1,121,2013,4490},
			},
		},
	},
--=========================================================Ho�ng Kim Ch�nh Tuy�n END
--=========================================================Ho�ng Kim Ph� Tuy�n START
	[2] = { --Ph� tuy�n
		[1] = { --------------------------------------------Ph� tuy�n Chinh phai OK
			[1] = { --Cap 20-29 OK
				[1] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
				[2] = {"G�p Si T�ng",0,1,332,167*8,176*16},
				[3] = {"��nh T�ng B�o Kh�ch l�y 5 �� ph�",1,1,332,156*8,188*16},
				[4] = {"G�p Si T�ng",0,1,332,167*8,176*16},
				[5] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
				[6] = {"G�p Ti�n ��u",0,1,333,1246,3267},
				[7] = {"G�p S�m H�ng",0,1,1,192*8,201*16},
				[8] = {"��nh b�i Phan Nh� Long",1,1,1,220*8,190*16},
				[9] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
			},
			[2] = { --Cap 30-39 OK
				[1] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
				[2] = {"G�p H� Lan Chi",0,1,11,3085,5191},
				[3] = {"G�p Ng� L�o Th�i",0,1,20,3465,6195},
				[4] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
				[5] = {"��nh 50 S�i Xanh",1,1,90,1639,3511},
				[6] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
				[7] = {"G�p Cung A Ng�u",0,1,78,1551,3191},
				[8] = {"��nh �c Lang",1,1,90,1789,3140},
				[9] = {"G�p Cung A Ng�u",0,1,78,1551,3191},
				[10] = {"G�p Ng� L�o Th�i",0,1,20,3465,6195},
				[11] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
			},
			[3] = { --Cap 40-49 OK
				[1] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
				[2] = {"G�p C�ng B�nh T� ��nh l�i ��i l�n 1",0,1,11,3165,5194},
				[3] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
				[4] = {"G�p H�n H�n",0,1,80,1846,3046},
				[5] = {"G�p C�ng B�nh T� ��nh l�i ��i l�n 2",0,1,11,3165,5194},
				[6] = {"G�p H�n H�n",0,1,80,1846,3046},
				[7] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
				[8] = {"��nh Du S��ng T�n",1,1,11,3371,4889},
				[9] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
			},
			[4] = { --Cap 50-59 OK
				[1] = {"G�p H�n H�n",0,1,80,1846,3046},
				[2] = {"Ho�n th�nh t�ng kim v� g�p H�n H�n",1,1,24,2109,3322},
				[3] = {"��nh T� T�c Phong",1,1,176,1680,2575},
				[4] = {"G�p Ng�o V�n T�ng",0,1,1,1587,3303},
			},
		},
		[2] = { --------------------------------------------Ph� tuy�n Trung l�p OK
			[1] = { --Cap 20 OK
				[1] = {"G�p Li�u Nam V�n",0,1,176,1368,3050},
				[2] = {"��nh 50 nh�m T�n L�ng",1,1,7,2277,2824},
				[3] = {"G�p Giang Nh�t Ti�u",0,1,80,204*8,192*16},
				[4] = {"G�p L�c Thanh Thu",0,1,80,1694,3129},
				[5] = {"G�p b�o k� s�ng b�c",0,1,80,1744,3151},
				[6] = {"��nh L� Tr��ng Thi�n",1,1,80,1999,2882},
				[7] = {"G�p b�o k� s�ng b�c",0,1,80,1744,3151},
				[8] = {"G�p L�c Thanh Thu",0,1,80,1694,3129},
				[9] = {"��nh nh�n v�t v� l�m l�y b�o ki�m",1,1,80,1396,3397},
				[10] = {"G�p L�c Thanh Thu",0,1,80,1694,3129},
			},
			[2] = { --Cap 30 OK
				[1] = {"G�p Li�u Nam V�n",0,1,176,1368,3050},
				[2] = {"G�p ch� ti�u c�c Song �ng",0,1,1,1543,3191},
				[3] = {"G�p A Ng�u",0,1,1,1567,3253},
				[4] = {"G�p H� L�o B�n (Ch� ti�u c�c)",0,1,11,3011,5057},
				[5] = {"��nh 50 kh� x�m",1,1,92,1977,3116},
				[6] = {"G�p H� L�o B�n (Ch� ti�u c�c)",0,1,11,3011,5057},
				[7] = {"��nh B�ch Ng�c, Nh� Y�n, T�ng M�ng",1,1,131,1872,3392},
				[8] = {"G�p H� L�o B�n (Ch� ti�u c�c)",0,1,11,3011,5057},
				[9] = {"G�p Li�u Nam V�n",0,1,176,1368,3050},
			},
			[3] = { --Cap 40 OK
				[1] = {"G�p Li�u Nam V�n",0,1,176,1368,3050},
				[2] = {"G�p C�ng B�nh T� ��nh l�i ��i l�n 1",0,1,11,3165,5194},
				[3] = {"Th�ng l�i ��i v� g�p Li�u Nam V�n",0,1,176,1368,3050},
				[4] = {"G�p C�ng B�nh T� ��nh l�i ��i l�n 2",0,1,11,3165,5194},
				[5] = {"G�p Li�u Nam V�n",0,1,176,1368,3050},
				[6] = {"��nh Du S��ng T�n",1,1,11,3371,4889},
				[7] = {"G�p Li�u Nam V�n",0,1,176,1368,3050},
			},
			[4] = { --Cap 50 OK
				[1] = {"G�p Li�u Nam V�n",0,1,176,1368,3050},
				[2] = {"Ho�n th�nh t�ng kim v� g�p Li�u Nam V�n",0,1,176,1368,3050},
				[3] = {"��nh b�i Long Truy V�",1,1,162,1723,2987},
				[4] = {"G�p Li�u Nam V�n",0,1,176,1368,3050},
			},
		},
		[3] = { --------------------------------------------Ph� tuy�n t� ph�i OK
			[1] = { --Cap 20 OK
				[1] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[2] = {"��nh 50 H�c Di�p H�u",1,1,25,3952,5284},
				[3] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[4] = {"G�p Ch�u Tr��ng C�u",0,1,11,3139,5086},
				[5] = {"G�p Th�m Phong",0,1,80,1684,3078},
				[6] = {"��nh Th�m Phong",1,1,80,1788,3383},
				[7] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
			},
			[2] = { --Cap 30 OK
				[1] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[2] = {"��nh 50 con s�i v�ng",1,1,193,1560,3188},
				[3] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[4] = {"G�p L�u U�n C�",0,1,78,1611,3185},
				[5] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[6] = {"G�p Tu� H�n (T�u Qu�)",0,1,176,1691,3033},
				[7] = {"��nh Thi Nghi Sinh",1,1,176,1701,3388},
				[8] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
			},
			[3] = { --Cap 40 OK
				[1] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[2] = {"G�p L�u U�n C�",0,1,78,1611,3185},
				[3] = {"G�p C�ng B�nh T� ��nh l�i ��i l�n 1",0,1,11,3165,5194},
				[4] = {"G�p L�u U�n C�",0,1,78,1611,3185},
				[5] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[6] = {"G�p C�ng B�nh T� ��nh l�i ��i l�n 2",0,1,11,3165,5194},
				[7] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[8] = {"��nh Nguy�n Minh Vi�n",1,1,78,1788,3189},
				[9] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
			},
			[4] = { --Cap 50 OK
				[1] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[2] = {"Ho�n th�nh t�ng kim v� g�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
				[3] = {"��nh S� Th�nh Do�n",1,1,78,1372,3500},
				[4] = {"G�p Th�c B�t Ho�i Xuy�n",0,1,37,1677,3040},
			},
		},
	},
}
--=========================================================Ho�ng Kim Ph� Tuy�n END

function helpgoldquest()
	if GetLevel() < 20 then
		Msg2Player("<color=yellow>H�y ��t ��n c�p 20 h�y s� d�ng ch�c n�ng n�y")
		return
	end
	local tb = {
	"Ch�nh tuy�n/#gquest(1)",
	"Ph� tuy�n/#gquest(2)",
	"Quay l�i./main",
	"Tho�t./Quit",
	}
	Say("",getn(tb),tb)
end
function gquest(ID)
	local MissType = ID --Lo�i nv ch�nh hay ph� tuy�n. Ch�nh l� 1 ph� l� 2
	local tb = {
	"Ch�nh ph�i - B� m�t T�m Long H�i/#gquest_step1("..MissType..",1)",
	"Trung l�p - C�u chuy�n L�m Uy�n Nhai/#gquest_step1("..MissType..",2)",
	"T� ph�i - Long kh� chi ho�/#gquest_step1("..MissType..",3)",
	"Quay l�i/character",
	"K�t th�c ��i tho�i/Quit"
	}
	Say("",getn(tb),tb)
end
function gquest_step1(ID1,ID2)
	local MissType = ID1 --Lo�i NV ch�nh hay ph�
	local PheType = ID2 --Nhi�m v� ch�nh - trung - t�
	if MissType == 1 then --ch�nh tuy�n
		local tab_Content = {
		"Ch�nh tuy�n c�p 20/#gquest_step2("..MissType..","..PheType..",1)",
		"Ch�nh tuy�n c�p 30/#gquest_step2("..MissType..","..PheType..",2)",
		"Ch�nh tuy�n c�p 40/#gquest_step2("..MissType..","..PheType..",3)",
		"Ch�nh tuy�n c�p 50/#gquest_step2("..MissType..","..PheType..",4)",
		"Ch�nh tuy�n c�p 60/#gquest_step2("..MissType..","..PheType..",5)",
		"Quay l�i/character",
		"K�t th�c ��i tho�i/Quit"
		}
		Say("H� tr� l�m nhi�m v� ho�ng kim Ch�nh Tuy�n. ", getn(tab_Content), tab_Content);
	elseif MissType == 2 then --ph� tuy�n
		local tab_Content = {
		"Ph� tuy�n c�p 20 - 29/#gquest_step2("..MissType..","..PheType..",1)",
		"Ph� tuy�n c�p 30 - 39/#gquest_step2("..MissType..","..PheType..",2)",
		"Ph� tuy�n c�p 40 - 49/#gquest_step2("..MissType..","..PheType..",3)",
		"Ph� tuy�n c�p 50 - 59/#gquest_step2("..MissType..","..PheType..",4)",
		"Quay l�i/character",
		"K�t th�c ��i tho�i/Quit"
		}
		Say("H� tr� l�m nhi�m v� ho�ng kim Ch�nh Tuy�n. ", getn(tab_Content), tab_Content);
	end
end
function gquest_step2(ID1,ID2,ID3)
	local MissType = ID1 --Lo�i NV ch�nh hay ph�
	local PheType = ID2 --Nhi�m v� ch�nh - trung - t�
	local CapDo = ID3
	local strDesc = tb_HelpGoldQuest[MissType][PheType][CapDo][1][1]
	local tbOpt = {}
	local TotalSelect = getn(tb_HelpGoldQuest[MissType][PheType][CapDo]) --T�ng c�ng c� bao nhi�u l�a ch�n.
	for i=1,TotalSelect do
		local FightState = tb_HelpGoldQuest[MissType][PheType][CapDo][i][2]
		local MapId = tb_HelpGoldQuest[MissType][PheType][CapDo][i][4]
		local nX =tb_HelpGoldQuest[MissType][PheType][CapDo][i][5]
		local nY = tb_HelpGoldQuest[MissType][PheType][CapDo][i][6]
		tinsert(tbOpt, {tb_HelpGoldQuest[MissType][PheType][CapDo][i][1],gquest_step3,{FightState,MapId,nX,nY}})
	end
	tinsert(tbOpt, {"Quay l�i",gquest_step1})
	tinsert(tbOpt, {"Tho�t."})
	CreateNewSayEx(strDesc, tbOpt);
end
function gquest_step3(ID1,ID2,ID3,ID4)
	local FightState = ID1
	local MapId = ID2
	local nX = ID3
	local nY = ID4
	NewWorld(MapId,nX,nY)
	SetFightState(FightState)
end
----------------------------------------------------------------------------------------------------------

function meltaobai()
local tbNpcList = GetAroundNpcList(60)
local pW, pX, pY = GetWorldPos()
local tmpFound = {}
local nNpcIdx
for i=1,getn(tbNpcList) do
nNpcIdx = tbNpcList[i]
local nSettingIdx = GetNpcSettingIdx(nNpcIdx)
local name = GetNpcName(nNpcIdx)
local level = NPCINFO_GetLevel(nNpcIdx)
local kind = GetNpcKind(nNpcIdx)
if nSettingIdx > 0 and kind == 0 then
tinsert(tmpFound, {nSettingIdx, name, level})
end
end
local total = getn(tmpFound)
if total == 0 then
return 0
end
local j = 0
while j < 20 do
local data = tmpFound[random(1, total)]
local isBoss = 0
if (j==10) then
isBoss = 2
end
local nNpcIndex = AddNpcEx(data[1], data[3], random(0,4), SubWorldID2Idx(pW),(pX + random(-5,5)) * 32, (pY + random(-5,5)) * 32, 0, data[2] , isBoss)
if nNpcIndex > 0 then
j = j + 1
end
end
return 0
end


function melxoabai()
    local tbNpcList = GetAroundNpcList(30)
    local pW, pX, pY = GetWorldPos()
    local tmpFound = {}
    local nNpcIdx
    for i=1,getn(tbNpcList) do
        nNpcIdx = tbNpcList[i]
        local kind = GetNpcKind(nNpcIdx)


        local nSettingIdx = GetNpcSettingIdx(nNpcIdx)

        local nNpcType = GetNpcPowerType(nNpcIdx)

        if nSettingIdx > 0 and kind == 0 and nNpcType ~= 3 then
            DelNpc(nNpcIdx)
        end
    end
    return 0
end