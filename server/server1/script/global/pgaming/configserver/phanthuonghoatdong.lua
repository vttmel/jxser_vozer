---------------Youtube PGaming---------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

SoLuongRuongTrongNhanThuong = 10

if ChinhServerPkNhanFullDoVaCap == 0 then
--------------------------------------------------------------------------------------------------------------------------------
--												Phong L�ng ��																  --
--------------------------------------------------------------------------------------------------------------------------------
function PhanThuong_BossThuyTacPhongLangDo()
local nRuong = CalcFreeItemCellCount() 
if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
end
			tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4903,1,0,0}, nCount = 10}, "test", 1);
end
--Ph�n th��ng k�t th�c Phong L�ng �� b�ng l�nh b�i phong l�ng ��
TAB_LBPLD = {
			{szName="<color=pink>V� L�m L�nh", tbProp={6,1,4903,1,0,0}, nCount = 10},
		}
--Ph�n th��ng k�t th�c Phong L�ng �� b�ng l�nh b�i th�y t�c
TAB_LBTT = {
			{szName="<color=pink>V� L�m L�nh", tbProp={6,1,4903,1,0,0}, nCount = 20},
		}
--------------------------------------------------------------------------------------------------------------------------------
--													V��t �i																	  --
--------------------------------------------------------------------------------------------------------------------------------
function PhanThuong_VuotAi()
local nRuong = CalcFreeItemCellCount() 
if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
end
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4903,1,0,0}, nCount = 25}, "test", 1);
end
--------------------------------------------------------------------------------------------------------------------------------
--													T�ng Kim																  --
--------------------------------------------------------------------------------------------------------------------------------
-- TOp T�ng Kim 9h00 t�i
tbThuongTop21 = 
	{
		[1]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=500,nBindState = -2},},
		[2]={
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=300,nBindState = -2},},
		[3]={
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=200,nBindState = -2},},
		[4]={
		   {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[5]={		             
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[6]={		             
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[7]={		             
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[8]={		             
			{szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[9]={		             
			{szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[10]={		             
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},
		},
	}
-- TOp T�ng Kim C��i tu�n
tbThuongTopT7 = 
	{
		[1]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=500,nBindState = -2},},
		[2]={
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=300,nBindState = -2},},
		[3]={
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=200,nBindState = -2},},
		[4]={
		   {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[5]={		             
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[6]={		             
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[7]={		             
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[8]={		             
			{szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[9]={		             
			{szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},},
		[10]={		             
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=100,nBindState = -2},
		},
	}
--V�ng S�ng
function vongsangtop1()
n_title = 5001 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
Msg2Player("<color=pink>B�n nh�n ���c v�ng s�ng danh hi�u �� Nh�t T�ng Kim xin h�y tho�t game �� hi�n v�ng")
end

function vongsangtop2()
n_title = 5002 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
Msg2Player("<color=pink>B�n nh�n ���c v�ng s�ng danh hi�u �� Nh�t T�ng Kim xin h�y tho�t game �� hi�n v�ng")
end

function vongsangtop3()
n_title = 5003 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
Msg2Player("<color=pink>B�n nh�n ���c v�ng s�ng danh hi�u �� Nh�t T�ng Kim xin h�y tho�t game �� hi�n v�ng")
end	
--------------------------------------------------------------------------------------------------------------------------------
--													Boss S�t Th�														   	  --
--------------------------------------------------------------------------------------------------------------------------------
function bosssatthu2x()
--local nRuong = CalcFreeItemCellCount() 
--if nRuong < SoLuongRuongTrongNhanThuong then
--		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
--		return 1
--end
AddOwnExp(10000)
end

function bosssatthu3x()
--local nRuong = CalcFreeItemCellCount() 
--if nRuong < SoLuongRuongTrongNhanThuong then
--		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
--		return 1
--end
AddOwnExp(30000)
end

function bosssatthu4x()
--local nRuong = CalcFreeItemCellCount() 
--if nRuong < SoLuongRuongTrongNhanThuong then
--		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
--		return 1
--end
AddOwnExp(50000)
end

function bosssatthu5x()
--local nRuong = CalcFreeItemCellCount() 
--if nRuong < SoLuongRuongTrongNhanThuong then
--		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
--		return 1
--end
AddOwnExp(100000)
end

function bosssatthu6x()
--local nRuong = CalcFreeItemCellCount() 
--if nRuong < SoLuongRuongTrongNhanThuong then
--		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
--		return 1
--end
AddOwnExp(300000)
end

function bosssatthu7x()
--local nRuong = CalcFreeItemCellCount() 
--if nRuong < SoLuongRuongTrongNhanThuong then
--		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
--		return 1
--end
AddOwnExp(500000)
end

function bosssatthu8x()
local nRuong = CalcFreeItemCellCount() 
if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
end
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,123,0,0,0}, nCount = 1}, "Ph�c Duy�n Ti�u", 1);
AddOwnExp(5000000)
end

function bosssatthu9x()
local nRuong = CalcFreeItemCellCount() 
if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
end
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,124,0,0,0}, nCount = 1}, "Ph�c Duy�n ��i", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4903,1,0,0}, nCount = 1}, "test", 1);
AddOwnExp(10000000)
end
--------------------------------------------------------------------------------------------------------------------------------
--														T�n S�															 	  --
--------------------------------------------------------------------------------------------------------------------------------
function PhanThuong_TinSu()
	local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
	end
	local nTodayTaskCount = GetTask(5749)
	if nTodayTaskCount == 1 then
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4903,1,0,0}, nCount = 5,nBindState = -2}, "test", 1);
	end
	if nTodayTaskCount == 2 then
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4903,1,0,0}, nCount = 5,nBindState = -2}, "test", 1);
	end
end
--------------------------------------------------------------------------------------------------------------------------------
--													Boss Ho�ng Kim															  --
--------------------------------------------------------------------------------------------------------------------------------
tbVnNewItemDropBossAward = {
	{{szName="V� L�m L�nh",tbProp={6,1,4903,1,0,0}, nCount = 10},},
	--{{szName="B�c ��u Thu�n M� Thu�t",tbProp={6,1,4894,1,0,0},nCount=1,nRate=3},},
	--{{szName="M�nh Kim B�i",tbProp={6,1,1774,1,0,0},nCount=1,nRate=0.003},},
	--{{szName="M�nh Ng�c B�i",tbProp={6,1,1775,1,0,0},nCount=1,nRate=0.001},},
}
--------------------------------------------------------------------------------------------------------------------------------
--													Lo�n Chi�n C�u Ch�u C�c															  --
--------------------------------------------------------------------------------------------------------------------------------
--M�i m�c ph�n th��ng radom 1 m�n
--Ph�n th��ng m�i tr�n
PhanThuongMoiTranLoanChien = 
{
	[1] = 1000000,
}
--Ph�n th��ng cu�i c�ng
PhanThuongNguoiCuoiCungLoanChien = 
{
	[1]={szName="V� L�m L�nh",tbProp={6,1,4903,1,0,0}, nCount = 10,nBindState = -2},	
}
--------------------------------------------------------------------------------------------------------------------------------
--													��u Ng�u															  --
--------------------------------------------------------------------------------------------------------------------------------
--Ph�n th��ng r��ng ��u ng�u
PhanThuongRuongDauNguu = 
{
	{nExp = 5000000},
	{			
		{szName="V� L�m L�nh", tbProp={6,1,4903,1,0,0}, nCount = 20,nBindState = -2},
	}
}
--Ph�n th��ng ng��i th�ng cu�c
PhanThuongNguoiThangCuocDauNguu = 
{
	{nExp = 10000000},
	{
		{szName="V� L�m L�nh", tbProp={6,1,4903,1,0,0}, nCount = 50,nBindState = -2},
	}
}
--------------------------------------------------------------------------------------------------------------------------------
--													Ph�n th��ng �ua Top															  --
--------------------------------------------------------------------------------------------------------------------------------
_TitleTopLvl = 
{
	{TitleID = 212, TitleName = "Duy Ng� ��c T�n", Xu = 500,},
	{TitleID = 213, TitleName = "H�nh Gi� V� Song", Xu = 400,},
	{TitleID = 214, TitleName = "��c B� Thi�n H�", Xu = 300,},
}

tbAwardRank = {
		[1] = {
			{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=5,nBindState = -2},			
		},
		[2] = {
			{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=3,nBindState = -2},
		},
		[3] = {
			{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=2,nBindState = -2},
		},
	}
--------------------------------------------------------------------------------------------------------------------------------
--													L� Bao C�ng Th�nh															  --
--------------------------------------------------------------------------------------------------------------------------------
CongThanhLeBao = {
{szName="V� L�m L�nh", tbProp={6,1,4903,1,0,0}, nRate=60, nCount = 2,nBindState = -2},
}

VuTruLeBao = {
{szName="V� L�m L�nh", tbProp={6,1,4903,1,0,0}, nRate=60, nCount = 2,nBindState = -2},
}

--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--															Ph�n th��ng ch� �� B�nh Th��ng											   			  --
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

else
--------------------------------------------------------------------------------------------------------------------------------
--												Phong L�ng ��																  --
--------------------------------------------------------------------------------------------------------------------------------
function PhanThuong_BossThuyTacPhongLangDo()
local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
	end
			tbAwardTemplet:GiveAwardByList({tbProp = {6,1,71,1,0,0}, nCount = 1}, "test", 1);
end
--Ph�n th��ng k�t th�c Phong L�ng �� b�ng l�nh b�i phong l�ng ��
TAB_LBPLD = {
			{szName="<color=pink>Huy�n Tinh", tbProp={6,1,147,random(1,4),0,0}, nCount = 1},
		}
--Ph�n th��ng k�t th�c Phong L�ng �� b�ng l�nh b�i th�y t�c
TAB_LBTT = {
			{szName="<color=pink>Huy�n Tinh", tbProp={6,1,147,random(1,4),0,0}, nCount = 1},
		}
--------------------------------------------------------------------------------------------------------------------------------
--													V��t �i																	  --
--------------------------------------------------------------------------------------------------------------------------------
function PhanThuong_VuotAi()
local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
	end
	AddOwnExp(2000000)
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,147,random(1,4),0,0}, nCount = 1}, "test", 1);
end
--------------------------------------------------------------------------------------------------------------------------------
--													T�ng Kim																  --
--------------------------------------------------------------------------------------------------------------------------------
-- TOp T�ng Kim 9h00 t�i
tbThuongTop21 = 
	{
		[1]={
			{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=5,},
			{szName="T� Th�y Tinh",tbProp={4,239,1,0,0,0},nCount=3,},},
		[2]={
		    {szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=3,},
			{szName="T� Th�y Tinh",tbProp={4,239,1,0,0,0},nCount=2,},},
		[3]={
		    {szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=2,},
			{szName="T� Th�y Tinh",tbProp={4,239,1,0,0,0},nCount=1,},},
		[4]={
		    {szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,},},
		[5]={		             
		    {szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,},},
		[6]={		             
		    {szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,},},
		[7]={		             
		    {szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,},},
		[8]={		             
		    {szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,},},
		[9]={		             
		    {szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,},},
		[10]={		             
		    {szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,},
		},
	}
-- TOp T�ng Kim C��i tu�n
tbThuongTopT7 = 
	{
		[1]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=500},},
		[2]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=300},},
		[3]={
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=200},},
		[4]={
		    {szName="Ti�n ��ng",tbProp={4,417},nCount=50},},
		[5]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=50},},
		[6]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=50},},
		[7]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=50},},
		[8]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=50},},
		[9]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=50},},
		[10]={
			{szName="Ti�n ��ng",tbProp={4,417},nCount=50},},
	}
--V�ng S�ng
function vongsangtop1()
n_title = 5001 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
Msg2Player("<color=pink>B�n nh�n ���c v�ng s�ng danh hi�u �� Nh�t T�ng Kim xin h�y tho�t game �� hi�n v�ng")
end

function vongsangtop2()
n_title = 5002 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
Msg2Player("<color=pink>B�n nh�n ���c v�ng s�ng danh hi�u �� Nh�t T�ng Kim xin h�y tho�t game �� hi�n v�ng")
end

function vongsangtop3()
n_title = 5003 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
Msg2Player("<color=pink>B�n nh�n ���c v�ng s�ng danh hi�u �� Nh�t T�ng Kim xin h�y tho�t game �� hi�n v�ng")
end	
--------------------------------------------------------------------------------------------------------------------------------
--													Boss S�t Th�														   	  --
--------------------------------------------------------------------------------------------------------------------------------
function bosssatthu2x()
-- local nRuong = CalcFreeItemCellCount() 
	-- if nRuong < SoLuongRuongTrongNhanThuong then
		-- Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		-- return 1
	-- end
AddOwnExp(10000)
end

function bosssatthu3x()
-- local nRuong = CalcFreeItemCellCount() 
	-- if nRuong < SoLuongRuongTrongNhanThuong then
		-- Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		-- return 1
	-- end
AddOwnExp(30000)
end

function bosssatthu4x()
-- local nRuong = CalcFreeItemCellCount() 
	-- if nRuong < SoLuongRuongTrongNhanThuong then
		-- Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		-- return 1
	-- end
AddOwnExp(50000)
end

function bosssatthu5x()
-- local nRuong = CalcFreeItemCellCount() 
	-- if nRuong < SoLuongRuongTrongNhanThuong then
		-- Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		-- return 1
	-- end
AddOwnExp(100000)
end

function bosssatthu6x()
-- local nRuong = CalcFreeItemCellCount() 
	-- if nRuong < SoLuongRuongTrongNhanThuong then
		-- Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		-- return 1
	-- end
AddOwnExp(300000)
end

function bosssatthu7x()
-- local nRuong = CalcFreeItemCellCount() 
	-- if nRuong < SoLuongRuongTrongNhanThuong then
		-- Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		-- return 1
	-- end
AddOwnExp(500000)
end

function bosssatthu8x()
-- local nRuong = CalcFreeItemCellCount() 
	-- if nRuong < SoLuongRuongTrongNhanThuong then
		-- Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		-- return 1
	-- end
AddOwnExp(1000000)
end

function bosssatthu9x()
local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
	end
AddOwnExp(2000000)
end
--------------------------------------------------------------------------------------------------------------------------------
--														T�n S�															 	  --
--------------------------------------------------------------------------------------------------------------------------------
function PhanThuong_TinSu()
local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
	end
	local nTodayTaskCount = GetTask(5749)
	if nTodayTaskCount == 1 then
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,random(122,124),0,0,0},nCount=1}, "test", 1);
	end
	if nTodayTaskCount == 2 then
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,random(122,124),0,0,0},nCount=1}, "test", 1);
	end
end
--------------------------------------------------------------------------------------------------------------------------------
--													Boss Ho�ng Kim															  --
--------------------------------------------------------------------------------------------------------------------------------
tbVnNewItemDropBossAward = {
	{{szName="Ti�n Th�o L� ��c bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nRate=10},},
	{{szName="B�c ��u Thu�n M� Thu�t",tbProp={6,1,4894,1,0,0},nCount=1,nRate=3},},
	--{{szName="M�nh Kim B�i",tbProp={6,1,1774,1,0,0},nCount=1,nRate=0.003},},
	--{{szName="M�nh Ng�c B�i",tbProp={6,1,1775,1,0,0},nCount=1,nRate=0.001},},
}
--------------------------------------------------------------------------------------------------------------------------------
--													Lo�n Chi�n C�u Ch�u C�c															  --
--------------------------------------------------------------------------------------------------------------------------------
--M�i m�c ph�n th��ng radom 1 m�n
--Ph�n th��ng m�i tr�n
PhanThuongMoiTranLoanChien = 
{
	[1] = 1000000,
}
--Ph�n th��ng cu�i c�ng
PhanThuongNguoiCuoiCungLoanChien = 
{
	[1]={szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nRate = 0.5,nCount=1},	
	[2]={szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nRate = 0.5,nCount=1},	
	[3]={szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nRate = 0.5,nCount=1},
	[4]={szName="Qu� Hoa T�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.5},
	[5]={nExp_tl=1,nRate = 98,nCount = 10000000,},	
}
--------------------------------------------------------------------------------------------------------------------------------
--													��u Ng�u															  --
--------------------------------------------------------------------------------------------------------------------------------
--Ph�n th��ng r��ng ��u ng�u
PhanThuongRuongDauNguu = 
{
	{nExp = 5000000},
	{
		{nExp = 2000000, nRate = 60},				
		{szName="V� L�m M�t T�ch", tbProp={6, 1, 26, 1, 0, 0}, nRate = 0.1},
		{szName="T�y T�y Kinh", tbProp={6, 1, 22, 1, 0, 0}, nRate = 0.1},
		{szName="Ph�c Duy�n L� Ti�u", tbProp={6, 1, 122, 1, 0, 0}, nRate = 30},
		{szName="Ph�c Duy�n L� Trung", tbProp={6, 1, 123, 1, 0, 0}, nRate = 5},
		{szName="Ph�c Duy�n L� ��i", tbProp={6, 1, 124, 1, 0, 0}, nRate = 2},
		{szName="Ti�n Th�o L�", tbProp={6, 1, 71, 1, 0, 0}, nRate = 2.7},
		{szName="Ti�n Th�o L� ��c Bi�t", tbProp={6, 1, 1181, 1, 0, 0}, nRate = 0.1},
	}
}
--Ph�n th��ng ng��i th�ng cu�c
PhanThuongNguoiThangCuocDauNguu = 
{
	{nExp = 10000000},
	{
		{szName="V� L�m M�t T�ch", tbProp={6, 1, 26, 1, 0, 0}, nRate = 0.1},
		{szName="T�y T�y Kinh", tbProp={6, 1, 22, 1, 0, 0}, nRate = 0.1},
		{szName="Ph�c Duy�n L� Ti�u", tbProp={6, 1, 122, 1, 0, 0}, nRate = 57},
		{szName="Ph�c Duy�n L� Trung", tbProp={6, 1, 123, 1, 0, 0}, nRate = 20},
		{szName="Ph�c Duy�n L� ��i", tbProp={6, 1, 124, 1, 0, 0}, nRate = 2},
		{szName="Ti�n Th�o L�", tbProp={6, 1, 71, 1, 0, 0}, nRate = 20.7},
		{szName="Ti�n Th�o L� ��c Bi�t", tbProp={6, 1, 1181, 1, 0, 0}, nRate = 0.1},
	}
}
--------------------------------------------------------------------------------------------------------------------------------
--													Ph�n th��ng �ua Top															  --
--------------------------------------------------------------------------------------------------------------------------------
_TitleTopLvl = 
{
	{TitleID = 212, TitleName = "Duy Ng� ��c T�n", Xu = 500,},
	{TitleID = 213, TitleName = "H�nh Gi� V� Song", Xu = 400,},
	{TitleID = 214, TitleName = "��c B� Thi�n H�", Xu = 300,},
}

tbAwardRank = {
		[1] = {
			{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=5,nBindState = -2},			
		},
		[2] = {
			{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=3,nBindState = -2},
		},
		[3] = {
			{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=2,nBindState = -2},
		},
	}
--------------------------------------------------------------------------------------------------------------------------------
--													L� Bao C�ng Th�nh															  --
--------------------------------------------------------------------------------------------------------------------------------
CongThanhLeBao = {
	{szName="Kinh nghi�m", nExp_tl=1000000,nCount=1, nRate=60},
	{szName="Ng�n L��ng",nJxb=10000,nCount=1,nRate = 10},
	{szName="Ph�c Duy�n L� Trung", tbProp={6,1,123,1,0,0},nCount=1, nRate=10},
	{szName="Ph�c Duy�n L� ��i", tbProp={6,1,124,1,0,0},nCount=1, nRate=10},
	{szName="L�nh b�i phong l�ng ��", tbProp={4,489},nCount=1, nRate=5},
	{szName="Ti�n Th�o L�", tbProp={6,1,71,1,0,0},nCount=1, nRate=2},
	{szName="Lam Th�y Tinh", tbProp={4,238,1,1,0,0},tbParam={60},nCount=1, nRate=0.5},
	{szName="L�c Th�y Tinh", tbProp={4,240,1,1,0,0},tbParam={60},nCount=1, nRate=0.5},
	{szName="T� Th�y Tinh", tbProp={4,239,1,1,0,0},tbParam={60},nCount=1, nRate=0.5},	
	{szName="Ti�n Th�o L� ��c Bi�t", tbProp={6,1,4650,1,0,0},nCount=1, nRate=0.5},	
	{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},nCount=1,tbParam={60}, nRate=0.5},
	{szName="Huy�n Tinh C�p 5", tbProp={6,1,147,5,0,0,0},nCount=1, nRate=0.5},	
	
}

VuTruLeBao = {
	{szName="Kinh nghi�m", nExp_tl=2000000,nCount=1, nRate=60},
	{szName="Ph�c Duy�n L� Trung", tbProp={6,1,123,1,0,0},nCount=1, nRate=20},
	{szName="Ph�c Duy�n L� ��i", tbProp={6,1,124,1,0,0},nCount=1, nRate=5},
	{szName="L�nh b�i phong l�ng ��", tbProp={4,489},nCount=1, nRate=5},
	{szName="Ti�n Th�o L�", tbProp={6,1,71,1,0,0},nCount=1, nRate=5},
	{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},nCount=1,tbParam={60}, nRate=0.5},	
	{szName="Lam Th�y Tinh", tbProp={4,238,1,1,0,0},tbParam={60},nCount=1, nRate=0.5},
	{szName="L�c Th�y Tinh", tbProp={4,240,1,1,0,0},tbParam={60},nCount=1, nRate=0.5},
	{szName="T� Th�y Tinh", tbProp={4,239,1,1,0,0},tbParam={60},nCount=1, nRate=0.5},
	{szName="Huy�n Tinh C�p 5", tbProp={6,1,147,5,0,0,0},nCount=1, nRate=1},
	{szName="Ch�a Kh�a Ho�ng Kim", tbProp={6,1,4889,1,0,0}, nRate=0.5},
	{szName="B�o r��ng trang B� ho�ng kim (Ng�u nhi�n)", tbProp={6,1,random(4879,4888),1,0,0}, nRate=0.5},		
	{szName="Ti�n Th�o L� ��c Bi�t", tbProp={6,1,4650,1,0,0},nCount=1, nRate=1},	

}
end