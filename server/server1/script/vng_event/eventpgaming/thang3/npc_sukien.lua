---------------Youtube PGaming---------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuongeventcacthang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--------------------------------------------------------
BOHOAHONG 		 = 5853
NHANTHUONGMOC1	 = 5851
NHANTHUONGMOC2	 = 5850
NHANTHUONGMOC3	 = 5849
---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N˜ Hi÷p";
	else
		return "ßπi Hi÷p";
	end
end
--------------------------------------------------------------
function main()
dofile("script/vng_event/eventpgaming/thang3/npc_sukien.lua")

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<color=green>8/3 lµ dﬁp Æ” c∏c Æπi hi÷p th” hi÷n t m lﬂng m◊nh ÆËi vÌi c∏c vﬁ n˜ hi÷p.<color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

local nYear  = tonumber(date("%y"));
local nTime  = "20"..nYear..""
local nTime1 = "20"..nYear.."03010000"
local nTime2 = "20"..nYear.."04010000"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow >= nTime1) and (nDayNow <= nTime2) then
		tbDailog:AddOptEntry("NhÀn Th≠Îng ßπt MËc",NhanMoc);
		tbDailog:Show();
	else
		Talk(1,"","<color=green>Hoπt ßÈng Di‘n Ra Tı:\n\n <color=red>0h Ngµy 01 - 03 - 20"..nYear.." ß’n 0h Ngµy 01 - 04 - 20"..nYear.."<color><color>")
	end
end				
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbOpt = {
		{"NhÀn Th≠Îng MËc "..nGioiHanMoc1.." G„i b„ hoa hÂng",PhanThuong1},
		{"NhÀn Th≠Îng MËc "..nGioiHanMoc2.." G„i b„ hoa hÂng",PhanThuong2},
		{"NhÀn Th≠Îng MËc "..nGioiHanMoc3.." G„i b„ hoa hÂng",PhanThuong3},
		{"HÒy B·",},
	}
	CreateNewSayEx("<npc><color=green>"..myplayersex().." MuËn NhÀn MËc Nµo<color>\n<color=red>Hi÷n Tπi Ng≠¨i ß∑ Sˆ DÙng <color=yellow>"..GetTask(BOHOAHONG).."<color> G„i b„ hoa hÂng<color>", tbOpt)
end	
-----------------------------------------------------Moc 500-------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuong1()
	if (GetTask(NHANTHUONGMOC1) == 0) then
		if (GetTask(BOHOAHONG) < nGioiHanMoc1) then
			Say("<color=green>Ph«n Th≠Îng MËc "..nGioiHanMoc1..":<color>\n<bclr=blue>+"..nTienVanMoc1HienThi.." vπn<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc1HienThi.." tri÷u kinh nghi÷m<bclr><color=orange>\n+Trang Bﬁ ho∆c vÀt ph»m ng»u nhi™n<color>")
		else
			Say("<color=green>Ph«n Th≠Îng MËc "..nGioiHanMoc1..":<color>\n<bclr=blue>+"..nTienVanMoc1HienThi.." vπn<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc1HienThi.." tri÷u kinh nghi÷m<bclr><color=orange>\n+Trang Bﬁ ho∆c vÀt ph»m ng»u nhi™n<color>",2,"NhÀn Th≠Îng/Moc500","Th´i Ta Quay Lπi Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." ß∑ NhÀn Ph«n Th≠Îng Nµy RÂi")
	end
end
--------------------------------------------------------Moc 1000---------------------------------------------------------------------------------------
function PhanThuong2()
	if (GetTask(NHANTHUONGMOC2) == 0) then
		if (GetTask(BOHOAHONG) < nGioiHanMoc2) then
			Say("<color=green>Ph«n Th≠Îng MËc "..nGioiHanMoc2..":<color>\n<bclr=blue>+"..nTienVanMoc2HienThi.." vπn<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc2HienThi.." tri÷u kinh nghi÷m<bclr><color=orange>\n+Trang Bﬁ ho∆c vÀt ph»m ng»u nhi™n<color>")
		else
			Say("<color=green>Ph«n Th≠Îng MËc "..nGioiHanMoc2..":<color>\n<bclr=blue>+"..nTienVanMoc2HienThi.." vπn<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc2HienThi.." tri÷u kinh nghi÷m<bclr><color=orange>\n+Trang Bﬁ ho∆c vÀt ph»m ng»u nhi™n<color>",2,"NhÀn Th≠Îng/Moc1000","Th´i Ta Quay Lπi Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." ß∑ NhÀn Ph«n Th≠Îng Nµy RÂi")
	end
end
----------------------------------------------------------Moc 2000--------------------------------------------------------------------------------
function PhanThuong3()
	if (GetTask(NHANTHUONGMOC3) == 0) then
		if (GetTask(BOHOAHONG) < nGioiHanMoc3) then
			Say("<color=green>Ph«n Th≠Îng MËc "..nGioiHanMoc3..":<color>\n<bclr=blue>+"..nTienVanMoc3HienThi.." vπn<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc3HienThi.." tri÷u kinh nghi÷m<bclr><color=orange>\n+Trang Bﬁ ho∆c vÀt ph»m ng»u nhi™n<color>")
		else
			Say("<color=green>Ph«n Th≠Îng MËc "..nGioiHanMoc3..":<color>\n<bclr=blue>+"..nTienVanMoc3HienThi.." vπn<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc3HienThi.." tri÷u kinh nghi÷m<bclr><color=orange>\n+Trang Bﬁ ho∆c vÀt ph»m ng»u nhi™n<color>",2,"NhÀn Th≠Îng/Moc1500","Th´i Ta Quay Lπi Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." ß∑ NhÀn Ph«n Th≠Îng Nµy RÂi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------