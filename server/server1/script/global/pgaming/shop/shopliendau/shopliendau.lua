Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")


function shopliendau22()
	local tbOpt = {
		{"Më An Bang Liªn §Êu",anbangliendau},
		{"Mua §Þnh Quèc Liªn §Êu",dinhquocliendau},
		{"Mua B«n Tiªu",muabontieu},
		{"Mua LÖnh Bµi Vinh Dù",mualenhbaivinhdu},
		{"Mua V« Danh",muavodanh},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua thuèc g×?<color>", tbOpt)
end;
--------------------------------------------------------------------------------
function muavodanh()
local szTitle = "Ng­¬i muèn ®æi trang bÞ nµo?";
	local tbOption = {}
		tinsert(tbOption, {"Mua V« Danh ChØ Hoµn", vodanhchihoan })
		tinsert(tbOption, {"Mua V« Danh Giíi ChØ", vodanhgioichi })
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end

function vodanhchihoan()
local nDiemVinhDu=GetTask(2501)
	Describe("§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/1000000<color>",11,
	"Ta ®ång ý ®æi/vodanhchihoan2",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function vodanhchihoan2()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 1000000) then
	Say("Ch­a ®ñ 1000000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end
AddGoldItem(0, 141)
SetTask(2501,GetTask(2501)-1000000)
end

function vodanhgioichi()
local nDiemVinhDu=GetTask(2501)
	Describe("§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/1000000<color>",11,
	"Ta ®ång ý ®æi/vodanhgioichi2",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function vodanhgioichi2()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 1000000) then
	Say("Ch­a ®ñ 1000000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end
AddGoldItem(0, 142)
SetTask(2501,GetTask(2501)-1000000)
end
--------------------------------------------------------------------------------
function mualenhbaivinhdu()
local szTitle = "Ng­¬i muèn ®æi trang bÞ nµo?";
	local tbOption = {}
		tinsert(tbOption, {"LÖnh Bµi Vinh Dù Hµn ThiÕt", hanthietlenh })
		tinsert(tbOption, {"LÖnh Bµi Vinh Dù Thanh §ång", thanhdonglenh })
		tinsert(tbOption, {"LÖnh Bµi Vinh Dù B¹ch Ng©n", bachnganlenh })
		tinsert(tbOption, {"LÖnh Bµi Vinh Dù Hoµng Kim", vinhduhoangkim })
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end

function vinhduhoangkim()
local nDiemVinhDu=GetTask(2501)/600
	AskClientForNumber("vinhduhoangkim2",0,nDiemVinhDu, "600/1: ")
end

function vinhduhoangkim2(n_key)
for k=1,n_key do
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1254,0,0,0}}, "test", 1);	
SetTask(2501,GetTask(2501)-600)
end
end

function bachnganlenh()
local nDiemVinhDu=GetTask(2501)/120
	AskClientForNumber("bachnganlenh2",0,nDiemVinhDu, "120/1: ")
end

function bachnganlenh2(n_key)
for k=1,n_key do
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1255,0,0,0}}, "test", 1);	
SetTask(2501,GetTask(2501)-120)
end
end

function thanhdonglenh()
local nDiemVinhDu=GetTask(2501)/60
	AskClientForNumber("thanhdonglenh2",0,nDiemVinhDu, "60/1: ")
end

function thanhdonglenh2(n_key)
for k=1,n_key do
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1256,0,0,0}}, "test", 1);	
SetTask(2501,GetTask(2501)-60)
end
end

function hanthietlenh()
local nDiemVinhDu=GetTask(2501)/12
	AskClientForNumber("hanthietlenh2",0,nDiemVinhDu, "12/1: ")
end

function hanthietlenh2(n_key)
for k=1,n_key do
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1257,0,0,0}}, "test", 1);	
SetTask(2501,GetTask(2501)-12)
end
end

--------------------------------------------------------------------------------
function muabontieu()
local nDiemVinhDu=GetTask(2501)
	Describe("§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/20000<color>",11,
	"Ta ®ång ý ®æi/muabontieu2",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function muabontieu2()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 20000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end;
AddItem(0,10,6,10,0,0)
SetTask(2501,GetTask(2501)-20000)
end
--------------------------------------------------------------------------------
function anbangliendau()
local szTitle = "Ng­¬i muèn ®æi trang bÞ nµo?";
	local tbOption = {}
		tinsert(tbOption, {"§æi An Bang Tinh Th¹ch H¹ng Liªn", anbangtinhthachhanglien })
		tinsert(tbOption, {"§æi An Bang Cóc Hoa Th¹ch ChØ Hoµn", anbanghoathachgioichi })
		tinsert(tbOption, {"§æi An Bang Kª HuyÕt Th¹ch Giíi ChØ", anbangkehuyetthachgioichi })
		tinsert(tbOption, {"§æi An Bang §iÒn Hoµng Th¹ch Ngäc Béi", anbangdienhoangthachngocboi })
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end

function dinhquocliendau()
local szTitle = "Ng­¬i muèn ®æi trang bÞ nµo?";
	local tbOption = {}
		tinsert(tbOption, {"§Þnh Quèc Thanh Sa Tr­êng Sam", dinhquocthanhsatruongsam })
		tinsert(tbOption, {"§Þnh Quèc ¤ Sa Ph¸t Qu¸n", dinhquocosaphatquan })
		tinsert(tbOption, {"§Þnh Quèc Ng©n Tµm Yªu §¸i", dinhquocngantamyeudai })
		tinsert(tbOption, {"§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa", dinhquocxichquyennhuyenngoa })
		tinsert(tbOption, {"§Þnh Quèc Tö §»ng Hé UyÓn", dinhquoctudonghouyen })
		tinsert(tbOption, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx(szTitle, tbOption)
end
--------------------------------------------------------------------------------
--=====================An Bang================================
function anbangtinhthachhanglien()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\nick\\obj-neck07.spr><link><enter>§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ®ång ý ®æi/daychuyendy",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function daychuyendy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end
AddGoldItem(0, 394)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function anbanghoathachgioichi()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\ring\\obj-ring07.spr><link><enter>§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ®ång ý ®æi/nhan1dy",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function nhan1dy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end;
AddGoldItem(0, 395)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function anbangkehuyetthachgioichi()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\ring\\obj-ring06.spr><link><enter>§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ®ång ý ®æi/nhan2dy",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function nhan2dy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end;
AddGoldItem(0, 397)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function anbangdienhoangthachngocboi()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\waist\\obj-waist18.spr><link><enter>§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ®ång ý ®æi/ngocboidy",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function ngocboidy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end;
AddGoldItem(0, 396)
SetTask(2501,GetTask(2501)-2000)
end
--=====================§Þnh QUèc================================
function dinhquocthanhsatruongsam()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\armor\\obj-ma-cloth11-3.spr><link><enter>§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ®ång ý ®æi/aody",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function aody()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end;
AddGoldItem(0, 389)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function dinhquocosaphatquan()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\cap\\obj-ma-cap12-1.spr><link><enter>§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ®ång ý ®æi/nondy",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function nondy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end
AddGoldItem(0, 390)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function dinhquocngantamyeudai()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\sash\\obj-sash17.spr><link><enter>§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ®ång ý ®æi/yeudaidy",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function yeudaidy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end;
AddGoldItem(0, 393)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function dinhquocxichquyennhuyenngoa()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\boots\\obj-shoes06.spr><link><enter>§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ®ång ý ®æi/ngoady",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function ngoady()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end
AddGoldItem(0, 391)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function dinhquoctudonghouyen()

local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\bangle\\obj-bangle13.spr><link><enter>§iÓm Vinh Dù cÇn: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ®ång ý ®æi/houyendy",
	"Ta sÏ quay l¹i sau!/no"
	);
end

function houyendy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch­a ®ñ 2000 §iÓm Vinh Dù, kh«ng thÓ trao ®æi.", 1, "å! Ta ®i chuÈn bÞ thªm!/no");
return 1
end;
AddGoldItem(0, 392)
SetTask(2501,GetTask(2501)-2000)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function no()
end;
