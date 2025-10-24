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
		{"ThiÕu L©m",ThieuLam},
		{"Thiªn V­¬ng",ThienVuong},
		{"Nga My",NgaMy},
		{"Thóy Yªn",ThuyYen},
		{"Ngò §éc",NguDoc},
		{"§­êng M«n",DuongMon},
		{"C¸i Bang",CaiBang},
		{"Thiªn NhÉn",ThienNhan},
		{"C«n L«n",ConLon},
		{"Vâ §ang",VoDang},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn chän m«n ph¸i nµo?<color>", tbOpt)
return 1
end
----------------------------------------------------------------------------------------------------------------------
function VoDang() 
	local tbOpt = {
		{"Vâ §ang QuyÒn",VoDangQuyen},
		{"Vâ §ang KiÕm",VoDangKiem},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn chän m«n ph¸i nµo?<color>", tbOpt)
end

function VoDangQuyen() 
ItemIndex = AddGoldItem(0,881)
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
		{"C«n L«n §ao",ConLonDao},
		{"C«n L«n SÐt",ConLonSet},
		{"C«n L«n Bïa",ConLonBua},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn chän m«n ph¸i nµo?<color>", tbOpt)
end

function ConLonDao() 
ItemIndex = AddGoldItem(0,891)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ConLonSet() 
ItemIndex = AddGoldItem(0,898)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ConLonBua() 
ItemIndex = AddGoldItem(0,901)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function ThienNhan() 
	local tbOpt = {
		{"Thiªn NhÉn KÝch",ThienNhanKich},
		{"Thiªn NhÉn §ao",ThienNhanDao},
		{"Thiªn NhÉn Bïa",ThienNhanBua},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn chän m«n ph¸i nµo?<color>", tbOpt)
end

function ThienNhanKich() 
ItemIndex = AddGoldItem(0,868)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThienNhanDao() 
ItemIndex = AddGoldItem(0,876)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThienNhanBua() 
ItemIndex = AddGoldItem(0,874)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function CaiBang() 
ItemIndex = AddGoldItem(0,855)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function DuongMon() 
	local tbOpt = {
		{"§­êng M«n Ná",DuongMonNo},
		{"§­êng M«n BÉy",DuongMonBay},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn chän m«n ph¸i nµo?<color>", tbOpt)
end

function DuongMonNo() 
ItemIndex = AddGoldItem(0,843)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function DuongMonBay() 
ItemIndex = AddGoldItem(0,854)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function NguDoc() 
	local tbOpt = {
		{"Ngò §éc §ao",NguDocDao},
		{"Ngò §éc Ch­ëng",NguDocBua},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn chän m«n ph¸i nµo?<color>", tbOpt)
end

function NguDocDao() 
ItemIndex = AddGoldItem(0,829)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function NguDocBua() 
ItemIndex = AddGoldItem(0,834)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function ThuyYen() 
	local tbOpt = {
		{"Thóy Yªn §ao",ThuyYenDao},
		{"Thóy Yªn Song §ao",ThuyYenSongDao},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn chän m«n ph¸i nµo?<color>", tbOpt)
end

function ThuyYenDao() 
ItemIndex = AddGoldItem(0,811)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThuyYenSongDao() 
ItemIndex = AddGoldItem(0,816)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function NgaMy() 
	local tbOpt = {
		{"Nga My KiÕm",NgaMyKiem},
		{"NGa My Ch­ëng",NgaMyChuong},
		{"NGa My Buff",NgaMyBuff},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn chän m«n ph¸i nµo?<color>", tbOpt)
end

function NgaMyKiem() 
ItemIndex = AddGoldItem(0,796)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function NgaMyChuong() 
ItemIndex = AddGoldItem(0,801)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function NgaMyBuff() 
ItemIndex = AddGoldItem(0,808)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function ThieuLam() 
	local tbOpt = {
		{"ThiÕu L©m QuyÒn",ThieuLamQuyen},
		{"ThiÕu L©m §ao",ThieuLamDao},
		{"ThiÕu L©m Bæng",ThieuLamBong},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn chän m«n ph¸i nµo?<color>", tbOpt)
end

function ThieuLamQuyen() 
ItemIndex = AddGoldItem(0,769)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThieuLamDao() 
ItemIndex = AddGoldItem(0,776)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end

function ThieuLamBong() 
ItemIndex = AddGoldItem(0,771)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------
function ThienVuong() 
ItemIndex = AddGoldItem(0,793)
SyncItem(ItemIndex); 
ConsumeEquiproomItem(1,6,1,4904,-1)
end
----------------------------------------------------------------------------------------------------------------------