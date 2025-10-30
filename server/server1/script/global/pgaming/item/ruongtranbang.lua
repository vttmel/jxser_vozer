IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("LEAGUE")
IncludeLib("ITEM")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\progressbar.lua")

function main() 
dofile("script/global/pgaming/item/ruongtranbang.lua")
	local tbOpt = {
		{"Thi�u L�m",ThieuLam},
		{"Thi�n V��ng",ThienVuong},
		{"Nga My",NgaMy},
		{"Th�y Y�n",ThuyYen},
		{"Ng� ��c",NguDoc},
		{"���ng M�n",DuongMon},
		{"C�i Bang",CaiBang},
		{"Thi�n Nh�n",ThienNhan},
		{"C�n L�n",ConLon},
		{"V� �ang",VoDang},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ch�n m�n ph�i n�o?<color>", tbOpt)
return 1
end
----------------------------------------------------------------------------------------------------------------------
function VoDang() 
	local tbOpt = {
		{"V� �ang Quy�n",VoDangQuyen},
		{"V� �ang Ki�m",VoDangKiem},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ch�n m�n ph�i n�o?<color>", tbOpt)
end

function VoDangQuyen() 
ItemIndex = AddGoldItem(0,881)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function VoDangKiem() 
ItemIndex = AddGoldItem(0,888)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function ConLon() 
	local tbOpt = {
		{"C�n L�n �ao",ConLonDao},
		{"C�n L�n S�t",ConLonSet},
		{"C�n L�n B�a",ConLonBua},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ch�n m�n ph�i n�o?<color>", tbOpt)
end

function ConLonDao() 
ItemIndex = AddGoldItem(0,891)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ConLonSet() 
ItemIndex = AddGoldItem(0,898)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ConLonBua() 
ItemIndex = AddGoldItem(0,901)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function ThienNhan() 
	local tbOpt = {
		{"Thi�n Nh�n K�ch",ThienNhanKich},
		{"Thi�n Nh�n �ao",ThienNhanDao},
		{"Thi�n Nh�n B�a",ThienNhanBua},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ch�n m�n ph�i n�o?<color>", tbOpt)
end

function ThienNhanKich() 
ItemIndex = AddGoldItem(0,868)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThienNhanDao() 
ItemIndex = AddGoldItem(0,876)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThienNhanBua() 
ItemIndex = AddGoldItem(0,874)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function CaiBang() 
ItemIndex = AddGoldItem(0,855)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function DuongMon() 
	local tbOpt = {
		{"���ng M�n N�",DuongMonNo},
		{"���ng M�n B�y",DuongMonBay},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ch�n m�n ph�i n�o?<color>", tbOpt)
end

function DuongMonNo() 
ItemIndex = AddGoldItem(0,843)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function DuongMonBay() 
ItemIndex = AddGoldItem(0,854)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function NguDoc() 
	local tbOpt = {
		{"Ng� ��c �ao",NguDocDao},
		{"Ng� ��c Ch��ng",NguDocBua},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ch�n m�n ph�i n�o?<color>", tbOpt)
end

function NguDocDao() 
ItemIndex = AddGoldItem(0,829)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function NguDocBua() 
ItemIndex = AddGoldItem(0,834)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function ThuyYen() 
	local tbOpt = {
		{"Th�y Y�n �ao",ThuyYenDao},
		{"Th�y Y�n Song �ao",ThuyYenSongDao},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ch�n m�n ph�i n�o?<color>", tbOpt)
end

function ThuyYenDao() 
ItemIndex = AddGoldItem(0,811)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThuyYenSongDao() 
ItemIndex = AddGoldItem(0,816)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function NgaMy() 
	local tbOpt = {
		{"Nga My Ki�m",NgaMyKiem},
		{"NGa My Ch��ng",NgaMyChuong},
		{"NGa My Buff",NgaMyBuff},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ch�n m�n ph�i n�o?<color>", tbOpt)
end

function NgaMyKiem() 
ItemIndex = AddGoldItem(0,796)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function NgaMyChuong() 
ItemIndex = AddGoldItem(0,801)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function NgaMyBuff() 
ItemIndex = AddGoldItem(0,808)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function ThieuLam() 
	local tbOpt = {
		{"Thi�u L�m Quy�n",ThieuLamQuyen},
		{"Thi�u L�m �ao",ThieuLamDao},
		{"Thi�u L�m B�ng",ThieuLamBong},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n ch�n m�n ph�i n�o?<color>", tbOpt)
end

function ThieuLamQuyen() 
ItemIndex = AddGoldItem(0,769)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThieuLamDao() 
ItemIndex = AddGoldItem(0,776)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThieuLamBong() 
ItemIndex = AddGoldItem(0,771)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function ThienVuong() 
ItemIndex = AddGoldItem(0,793)
ITEM_SetExpiredTime(ItemIndex, 10080);
SetItemBindState(ItemIndex, -2)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------