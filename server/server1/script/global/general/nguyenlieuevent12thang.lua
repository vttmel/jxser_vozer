-------------------------------------------------------------------------------------
-- 
-------------------------------------------------------------------------------------
IL("TITLE");
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\lib\\common.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

-----------------------------------------------------------------------------------------------------------------------------------------------------
--Nguyªn liÖu event																	--
-----------------------------------------------------------------------------------------------------------------------------------------------------

function NguyenLieuEvent()
	local szTitle = format("Mêi GM <color=red>%s<color> lùa chän nguyªn liÖu:", GetName());
	local nMonth = tonumber(date("%m"));
	local tbOption = {}
	if nMonth==1 then
		tinsert(tbOption, {"NhËn tói mõng xu©n", TuiMungXuan})
		tinsert(tbOption, {"NhËn bé nguyªn liÖu ghÐp b¸nh ch­ng 6 mãn", BoNguyenLieuBanhChung})
		tinsert(tbOption, {"NhËn Phóc Léc Thä", PhucLocTho})
	end
	if nMonth==2 then
		tinsert(tbOption, {"NhËn bao l× x×", BaoLiXi})
		tinsert(tbOption, {"NhËn ph¸o tiÓu - trung - ®¹i", BoPhao})
		tinsert(tbOption, {"NhËn phong ph¸o tiÓu - trung - ®¹i th­êng", BoPhongPhaoThuong})
		tinsert(tbOption, {"NhËn phong ph¸o tiÓu - trung - ®¹i ®Æc biÖt", BoPhongPhaoDacBiet})
	end
	if nMonth==3 then
		tinsert(tbOption, {"NhËn cµnh hoa hång - cµnh hoa cóc", CanhHoaHongCuc})
		tinsert(tbOption, {"NhËn bã hoa hång - bã hoa cóc", BoHoaHongCuc})
	end
	if nMonth==4 then
		tinsert(tbOption, {"NhËn hép quµ may m¾n", HopQuaMayManT4})
		tinsert(tbOption, {"NhËn 4 m¶nh l¸ cê", ManhCoChienThang})
		tinsert(tbOption, {"NhËn l¸ cê chiÕn th¾ng", LaCoChienThang})
	end
	if nMonth==5 then
		tinsert(tbOption, {"NhËn tói hµng hãa", TuiHangHoa})
		tinsert(tbOption, {"NhËn nguyªn liÖu lµm b¸nh", NguyenLieuLamBanh})
		tinsert(tbOption, {"NhËn 3 lo¹i b¸nh chay", BanhChay})
	end
	if nMonth==6 then
		tinsert(tbOption, {"NhËn tói ®¹i hû thu", TuiDaiHyThu})
		tinsert(tbOption, {"NhËn bé ch÷ Mõng - VLTK - 3 - Tuæi vµ §¹i Hû LÔ Bao", BoChuSinhNhatVL})
		tinsert(tbOption, {"NhËn b¸nh kem Nh­ ý vµ c¸t t­êng", BanhKemNhuYCatTuong})
	end
	if nMonth==7 then
		tinsert(tbOption, {"NhËn bé nguyªn liÖu ghÐp 4 lo¹i", BoNguyenLieuVuLan})
		tinsert(tbOption, {"NhËn thóy töu hå tiªn", ThuyTuuHoTien})
	end
	if nMonth==8 then
		tinsert(tbOption, {"NhËn bé nguyªn liÖu ghÐp 2 lo¹i", BoNguyenLieuBaoRuong})
		tinsert(tbOption, {"NhËn r­¬ng vµng - r­¬ng b¹c", RuongVangBac})
	end
	if nMonth==9 then
		tinsert(tbOption, {"NhËn ng«i sao chiÕn th¾ng", NgoiSaoChienThang})
		tinsert(tbOption, {"NhËn quµ quèc kh¸nh", QuaQuocKhanh})
		tinsert(tbOption, {"NhËn huy ch­¬ng quèc kh¸nh", HuyChuongQuocKhanh})
	end
	if nMonth==10 then
		tinsert(tbOption, {"NhËn nguyªn liÖu lång ®Ìn 8 lo¹i", NguyenLieuLongDen})
		tinsert(tbOption, {"NhËn lång ®Ìn th­êng 6 lo¹i", LongDenThuong})
		tinsert(tbOption, {"NhËn lång ®Ìn ®Æc biÖ 6 lo¹i", LongDenDacBiet})
		tinsert(tbOption, {"NhËn b¸nh trung thu c¸c lo¹i 6 lo¹i", BanhTrungThu})
	end
	if nMonth==11 then
		tinsert(tbOption, {"NhËn hép quµ ngµy nhµ gi¸o viÖt nam", HopQuaNhaGiao})
		tinsert(tbOption, {"NhËn bé ch÷ T«n - S­ - Träng - §¹o", TonSuTrongDao})
		tinsert(tbOption, {"NhËn bÝ kiÕp gia truyÒn", BiKiepGiaTruyen})
	end
	if nMonth==12 then
		tinsert(tbOption, {"NhËn hép quµ gi¸ng sinh", HopQuaGiangSinh})
		tinsert(tbOption, {"NhËn nguyªn liÖu lµm ng­êi tuyÕt 7 lo¹i", NguyenLieuLamNguoiTuyet})
		tinsert(tbOption, {"NhËn ng­êi tuyÕt th­êng 3 lo¹i", NguoiTuyetThuong})
		tinsert(tbOption, {"NhËn ng­êi ®Æc biÖt 3 lo¹i", NguoiTuyetDacBiet})
	end
		tinsert(tbOption, {"§ãng."})
	CreateNewSayEx(szTitle..INFORMATION_DEVELOPER, tbOption)
end
-----------------Th¸ng 1------------------------
function TuiMungXuan()
	AskClientForNumber("TuiMungXuan2",0,1999,"NhËp Sè L­îng:") 
end
function TuiMungXuan2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1652,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoNguyenLieuBanhChung()
	AskClientForNumber("BoNguyenLieuBanhChung2",0,1999,"NhËp Sè L­îng:") 
end
function BoNguyenLieuBanhChung2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1653,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1654,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1655,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1656,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1660,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1661,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
end
function PhucLocTho()
	AskClientForNumber("PhucLocTho2",0,1999,"NhËp Sè L­îng:") 
end
function PhucLocTho2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1657,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1658,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1659,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 2------------------------
function BaoLiXi()
	AskClientForNumber("BaoLiXi2",0,1999,"NhËp Sè L­îng:") 
end
function BaoLiXi2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0301"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1350,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoPhao()
	AskClientForNumber("BoPhao2",0,1999,"NhËp Sè L­îng:") 
end
function BoPhao2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0301"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1351,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1352,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1353,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoPhongPhaoThuong()
	AskClientForNumber("BoPhongPhaoThuong2",0,1999,"NhËp Sè L­îng:") 
end
function BoPhongPhaoThuong2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0301"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1357,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1358,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1359,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoPhongPhaoDacBiet()
	AskClientForNumber("BoPhongPhaoDacBiet2",0,1999,"NhËp Sè L­îng:") 
end
function BoPhongPhaoDacBiet2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0301"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1354,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1355,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1356,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 3------------------------
function CanhHoaHongCuc()
	AskClientForNumber("CanhHoaHongCuc2",0,1999,"NhËp Sè L­îng:") 
end
function CanhHoaHongCuc2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0401"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1679,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1680,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoHoaHongCuc()
	AskClientForNumber("BoHoaHongCuc2",0,1999,"NhËp Sè L­îng:") 
end
function BoHoaHongCuc2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0401"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1681,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1682,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 4------------------------
function HopQuaMayManT4()
	AskClientForNumber("HopQuaMayManT42",0,1999,"NhËp Sè L­îng:") 
end
function HopQuaMayManT42(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0501"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1734,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function ManhCoChienThang()
	AskClientForNumber("ManhCoChienThang2",0,1999,"NhËp Sè L­îng:") 
end
function ManhCoChienThang2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0501"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1735,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1736,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1737,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1738,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function LaCoChienThang()
	AskClientForNumber("LaCoChienThang2",0,1999,"NhËp Sè L­îng:") 
end
function LaCoChienThang2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0501"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1739,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 5------------------------
function TuiHangHoa()
	AskClientForNumber("TuiHangHoa2",0,1999,"NhËp Sè L­îng:") 
end
function TuiHangHoa2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0601"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1393,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function NguyenLieuLamBanh()
	AskClientForNumber("NguyenLieuLamBanh2",0,1999,"NhËp Sè L­îng:") 
end
function NguyenLieuLamBanh2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0601"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1394,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BanhChay()
	AskClientForNumber("BanhChay2",0,1999,"NhËp Sè L­îng:") 
end
function BanhChay2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0601"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1397,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1396,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1395,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 6------------------------
function TuiDaiHyThu()
	AskClientForNumber("TuiDaiHyThu2",0,1999,"NhËp Sè L­îng:") 
end
function TuiDaiHyThu2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0701"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1750,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoChuSinhNhatVL()
	AskClientForNumber("BoChuSinhNhatVL2",0,1999,"NhËp Sè L­îng:") 
end
function BoChuSinhNhatVL2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0701"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1752,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1753,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1754,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1755,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1760,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BanhKemNhuYCatTuong()
	AskClientForNumber("BanhKemNhuYCatTuong2",0,1999,"NhËp Sè L­îng:") 
end
function BanhKemNhuYCatTuong2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0701"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1761,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1762,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 7------------------------
function BoNguyenLieuVuLan()
	AskClientForNumber("BoNguyenLieuVuLan2",0,1999,"NhËp Sè L­îng:") 
end
function BoNguyenLieuVuLan2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0801"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30131,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30132,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30129,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30128,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function ThuyTuuHoTien()
	AskClientForNumber("ThuyTuuHoTien2",0,1999,"NhËp Sè L­îng:") 
end
function ThuyTuuHoTien2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0801"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30130,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 8------------------------
function BoNguyenLieuBaoRuong()
	AskClientForNumber("BoNguyenLieuBaoRuong2",0,1999,"NhËp Sè L­îng:") 
end
function BoNguyenLieuBaoRuong2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0901"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,196,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1376,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function RuongVangBac()
	AskClientForNumber("RuongVangBac2",0,1999,"NhËp Sè L­îng:") 
end
function RuongVangBac2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0901"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1378,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1377,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 9------------------------
function NgoiSaoChienThang()
	AskClientForNumber("NgoiSaoChienThang2",0,1999,"NhËp Sè L­îng:") 
end
function NgoiSaoChienThang2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1001"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1494,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function QuaQuocKhanh()
	AskClientForNumber("QuaQuocKhanh2",0,1999,"NhËp Sè L­îng:") 
end
function QuaQuocKhanh2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1001"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1495,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function HuyChuongQuocKhanh()
	AskClientForNumber("HuyChuongQuocKhanh2",0,1999,"NhËp Sè L­îng:") 
end
function HuyChuongQuocKhanh2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1001"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1496,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 10------------------------
function NguyenLieuLongDen()
	AskClientForNumber("NguyenLieuLongDen2",0,1999,"NhËp Sè L­îng:") 
end
function NguyenLieuLongDen2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1221,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1222,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1223,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1224,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1225,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1226,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1227,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1228,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function LongDenThuong()
	AskClientForNumber("LongDenThuong2",0,1999,"NhËp Sè L­îng:") 
end
function LongDenThuong2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1241,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1242,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1243,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1244,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1245,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1246,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function LongDenDacBiet()
	AskClientForNumber("LongDenDacBiet2",0,1999,"NhËp Sè L­îng:") 
end
function LongDenDacBiet2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1229,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1230,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1231,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1232,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1233,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1234,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BanhTrungThu()
	AskClientForNumber("BanhTrungThu2",0,1999,"NhËp Sè L­îng:") 
end
function BanhTrungThu2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1235,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1236,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1237,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1238,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1239,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1240,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 11------------------------
function HopQuaNhaGiao()
	AskClientForNumber("HopQuaNhaGiao2",0,1999,"NhËp Sè L­îng:") 
end
function HopQuaNhaGiao2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1598,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function TonSuTrongDao()
	AskClientForNumber("TonSuTrongDao2",0,1999,"NhËp Sè L­îng:") 
end
function TonSuTrongDao2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1599,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1600,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1601,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1602,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,0,20,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BiKiepGiaTruyen()
	AskClientForNumber("BiKiepGiaTruyen2",0,1999,"NhËp Sè L­îng:") 
end
function BiKiepGiaTruyen2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1603,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th¸ng 12------------------------
function HopQuaGiangSinh()
	AskClientForNumber("HopQuaGiangSinh2",0,1999,"NhËp Sè L­îng:") 
end
function HopQuaGiangSinh2(num)
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1311,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function NguyenLieuLamNguoiTuyet()
	AskClientForNumber("NguyenLieuLamNguoiTuyet2",0,1999,"NhËp Sè L­îng:") 
end
function NguyenLieuLamNguoiTuyet2(num)
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1312,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1313,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1314,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1315,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1316,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1317,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1318,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function NguoiTuyetThuong()
	AskClientForNumber("NguoiTuyetThuong2",0,1999,"NhËp Sè L­îng:") 
end
function NguoiTuyetThuong2(num)
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1324,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1322,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1323,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function NguoiTuyetDacBiet()
	AskClientForNumber("NguoiTuyetDacBiet2",0,1999,"NhËp Sè L­îng:") 
end
function NguoiTuyetDacBiet2(num)
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1321,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1319,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1320,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end