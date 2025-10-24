---------------Youtube PGaming---------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuongeventcacthang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
----Th¸ng 1-------------====-----Th¸ng 2------------====--------Th¸ng 3------====-------Th¸ng 4------====-------Th¸ng 5------====------Th¸ng 6------====--------Th¸ng 7-----====------Th¸ng 8-------====------Th¸ng 9----------====-------Th¸ng 10----------====-------Th¸ng 11--------====-------Th¸ng 12-------------------===
BANHCHUNGTHUONGHAN = 5862; PHONGPHAODAIDB		= 5858; BOHOAHONG 		= 5853; LACOCHIENTHANG  = 5848; BANHCHAYDB      = 5843; BANHKEMCATTUONG = 5838; THUYTUHOTIEN    = 5833; HOANGKIMBAOHAP  = 5828; HUYCHUONGQUOCKHANH = 5823; BANHTRUNGTHUCONHEO    = 5818; BIKIEP 	     = 5813; NGUOITUYETKHANCHOANGDODB   = 5808;--=== 
BANHCHUNGTHUONG    = 5781; PHONGPHAODAITHUONG 	= 5857;	BOHOACUC   		= 5852; 					    BANHCHAYTHUONG  = 5842; BANHKEMNHUY     = 5837;                         RUONGBAC        = 5827;                            BANHTRUNGTHUHATSEN    = 5817; 					     NGUOITUYETKHANCHOANGXANHDB = 5807;--=== 
BANHCHUNGHAOHAN    = 5780; PHONGPHAOTRUNGDB   	= 5786; 																																										   BANHTRUNGTHUDB        = 5779;   						 NGUOITUYETDB			    = 5863;--=== 
PHUCLOCTHO         = 5782; PHONGPHAOTRUNGTHUONG = 5785;                                                   																														   BANHTRUNGTHUNHANTRUNG = 5778;						 								   --=== 
						   PHONGPHAOTIEUDB 		= 5784;																																											   BANHTRUNGTHUDAUXANH   = 5777;														   --=== 
						   PHONGPHAOTIEUTHUONG 	= 5783;																																											   BANHTRUNGTHUTHUONG    = 5776;														   --=== 			
NHANTHUONGMOC1a    = 5861; NHANTHUONGMOC1b	 	= 5856; NHANTHUONGMOC1c = 5851; NHANTHUONGMOC1d = 5846; NHANTHUONGMOC1e = 5841; NHANTHUONGMOC1f = 5836; NHANTHUONGMOC1g = 5831; NHANTHUONGMOC1h = 5826; NHANTHUONGMOC1i    = 5821; NHANTHUONGMOC1j 	     = 5816; NHANTHUONGMOC1k = 5811; NHANTHUONGMOC1l 		    = 5806;--=== 
NHANTHUONGMOC2a    = 5860; NHANTHUONGMOC2b 		= 5855; NHANTHUONGMOC2c = 5850; NHANTHUONGMOC2d = 5845; NHANTHUONGMOC2e = 5840; NHANTHUONGMOC2f = 5835; NHANTHUONGMOC2g = 5830; NHANTHUONGMOC2h = 5825; NHANTHUONGMOC2i    = 5820; NHANTHUONGMOC2j       = 5815; NHANTHUONGMOC2k = 5810; NHANTHUONGMOC2l			= 5805;--=== 
NHANTHUONGMOC3a    = 5859; NHANTHUONGMOC3b 		= 5854; NHANTHUONGMOC3c = 5849; NHANTHUONGMOC3d = 5844; NHANTHUONGMOC3e = 5839; NHANTHUONGMOC3f = 5834; NHANTHUONGMOC3g = 5829; NHANTHUONGMOC3h = 5824; NHANTHUONGMOC3i    = 5819; NHANTHUONGMOC3j       = 5814; NHANTHUONGMOC3k = 5809; NHANTHUONGMOC3l			= 5804;--=== 
nTSK_USE_TIMES_LIMIT  = 5794																																																																							   --=== 
--=============================--
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------------------
function main()
-------------------------------------
local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex)));
local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local nMonth = tonumber(GetLocalDate("%m"))
if (GetTask(nTSK_USE_TIMES_LIMIT) ~= nMonth) then
SetTask(nTSK_USE_TIMES_LIMIT, nMonth)
SetTask(BANHCHUNGTHUONGHAN, 0);SetTask(PHONGPHAODAIDB, 0)	   ;SetTask(BOHOAHONG, 0)     ;SetTask(LACOCHIENTHANG, 0);SetTask(BANHCHAYDB, 0)      ;SetTask(BANHKEMCATTUONG, 0) ;SetTask(THUYTUHOTIEN, 0)   ;SetTask(HOANGKIMBAOHAP, 0) ;SetTask(HUYCHUONGQUOCKHANH, 0);SetTask(BANHTRUNGTHUCONHEO, 0)   ;SetTask(BIKIEP, 0)         ;SetTask(NGUOITUYETKHANCHOANGDODB, 0)  ; 
SetTask(BANHCHUNGTHUONG, 0)   ;SetTask(PHONGPHAODAITHUONG, 0)  ;SetTask(BOHOACUC, 0)      ;                           SetTask(BANHCHAYTHUONG, 0)  ;SetTask(BANHKEMNHUY, 0)	   ;                            SetTask(RUONGBAC, 0)       ;                               SetTask(BANHTRUNGTHUHATSEN, 0)   ;                            SetTask(NGUOITUYETKHANCHOANGXANHDB, 0);
SetTask(BANHCHUNGHAOHAN, 0)   ;SetTask(PHONGPHAOTRUNGDB, 0)    ;																																																	   SetTask(BANHTRUNGTHUDB, 0)       ;							 SetTask(NGUOITUYETDB, 0)              ;
SetTask(PHUCLOCTHO, 0)		  ;SetTask(PHONGPHAOTRUNGTHUONG, 0);																																																	   SetTask(BANHTRUNGTHUNHANTRUNG, 0);
							   SetTask(PHONGPHAOTIEUDB, 0)     ;																																																	   SetTask(BANHTRUNGTHUDAUXANH, 0)  ;				
							   SetTask(PHONGPHAOTIEUTHUONG, 0) ;																																																	   SetTask(BANHTRUNGTHUTHUONG, 0)   ;
SetTask(NHANTHUONGMOC1a, 0)   ;SetTask(NHANTHUONGMOC1b, 0)     ;SetTask(NHANTHUONGMOC1c, 0);SetTask(NHANTHUONGMOC1d, 0);SetTask(NHANTHUONGMOC1e, 0);SetTask(NHANTHUONGMOC1f, 0);SetTask(NHANTHUONGMOC1g, 0);SetTask(NHANTHUONGMOC1h, 0);SetTask(NHANTHUONGMOC1i, 0)   ;SetTask(NHANTHUONGMOC1j, 0)      ;SetTask(NHANTHUONGMOC1k, 0);SetTask(NHANTHUONGMOC1l, 0)           ;
SetTask(NHANTHUONGMOC2a, 0)   ;SetTask(NHANTHUONGMOC2b, 0)     ;SetTask(NHANTHUONGMOC2c, 0);SetTask(NHANTHUONGMOC2d, 0);SetTask(NHANTHUONGMOC2e, 0);SetTask(NHANTHUONGMOC2f, 0);SetTask(NHANTHUONGMOC2g, 0);SetTask(NHANTHUONGMOC2h, 0);SetTask(NHANTHUONGMOC2i, 0)   ;SetTask(NHANTHUONGMOC2j, 0)      ;SetTask(NHANTHUONGMOC2k, 0);SetTask(NHANTHUONGMOC2l, 0)           ;
SetTask(NHANTHUONGMOC3a, 0)   ;SetTask(NHANTHUONGMOC3b, 0)     ;SetTask(NHANTHUONGMOC3c, 0);SetTask(NHANTHUONGMOC3d, 0);SetTask(NHANTHUONGMOC3e, 0);SetTask(NHANTHUONGMOC3f, 0);SetTask(NHANTHUONGMOC3g, 0);SetTask(NHANTHUONGMOC3h, 0);SetTask(NHANTHUONGMOC3i, 0)   ;SetTask(NHANTHUONGMOC3j, 0)      ;SetTask(NHANTHUONGMOC3k, 0);SetTask(NHANTHUONGMOC3l, 0)           ;
end
------------------------------------
local nYear  = tonumber(date("%y"));
local nTime1 = "20"..nYear.."02010000"
local nTime2 = "20"..nYear.."03010000"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
if GetLevel() < 50 then
	Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 50 kh«ng thÓ sö dông")
return 1 end
	if (nDayNow >= nTime1) and (nDayNow <= nTime2) then
			if GetTask(PHONGPHAODAIDB) < nGioiHanEventDacBiet then
				if CalcFreeItemCellCount() >= 10 then
					tbAwardTemplet:GiveAwardByList(tbPhongPhaoDaiDB,1)
					SetTask(PHONGPHAODAIDB,GetTask(PHONGPHAODAIDB)+1)
				else
					Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y sö dông",0) return 1
				end
			else
				Say("Mçi Nh©n VËt ChØ Sö Dông Tèi §a "..nGioiHanEventDacBiet.." Phong Ph¸o §¹i §Æc biÖt Trong Suèt Thêi Gian Ho¹t §éng") return 1
			end
		else
			Talk(1,"","VËt PhÈm §· Qu¸ H¹n Sö Dông")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------