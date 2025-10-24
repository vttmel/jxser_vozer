---------------Youtube PGaming---------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuongeventcacthang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--------------------------------------------------------
NGUOITUYETKHANCHOANGDODB = 5808
NHANTHUONGMOC1			 = 5806
NHANTHUONGMOC2			 = 5805
NHANTHUONGMOC3			 = 5804
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
dofile("script/vng_event/eventpgaming/thang12/npc_sukien.lua")

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc>C∏c v‚ l©m nh©n s‹ Æ∏nh qu∏i nh∆t Æ≠Óc <color=yellow> Gi∏ng sinh hÈp quµ <color>, mÎ ra Gi∏ng sinh hÈp quµ nhÀn Æ≠Óc nguy™n li÷u lµm ng≠Íi tuy’t. Thu tÀp ÆÒ nguy™n li÷u sau , c„ th” Æ’n ch’ tπo <color=yellow> c∏c loπi ng≠Íi tuy’t.<color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime  = "20"..nYear2..""
local nTime1 = "20"..nYear.."12010000"
local nTime2 = "20"..nYear2.."01010000"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow >= nTime1) and (nDayNow <= nTime2) then
		tbDailog:AddOptEntry("NhÀn Th≠Îng ßπt MËc",NhanMoc);
		tbDailog:Show();
	else
		Talk(1,"","<color=green>Hoπt ßÈng Di‘n Ra Tı:\n\n <color=red>0h Ngµy 01 - 12 - 20"..nYear.." ß’n 0h Ngµy 01 - 01 - 20"..nYear2.."<color><color>")
	end
end				
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbOpt = {
		{"NhÀn Th≠Îng MËc "..nGioiHanMoc1.." Ng≠Íi tuy’t kh®n choµng Æ· Æ∆c bi÷t",PhanThuong1},
		{"NhÀn Th≠Îng MËc "..nGioiHanMoc2.." Ng≠Íi tuy’t kh®n choµng Æ· Æ∆c bi÷t",PhanThuong2},
		{"NhÀn Th≠Îng MËc "..nGioiHanMoc3.." Ng≠Íi tuy’t kh®n choµng Æ· Æ∆c bi÷t",PhanThuong3},
		{"HÒy B·",},
	}
	CreateNewSayEx("<npc><color=green>"..myplayersex().." MuËn NhÀn MËc Nµo<color>\n<color=red>Hi÷n Tπi Ng≠¨i ß∑ Sˆ DÙng <color=yellow>"..GetTask(NGUOITUYETKHANCHOANGDODB).."<color> Ng≠Íi tuy’t kh®n choµng Æ· Æ∆c bi÷t<color>", tbOpt)
end	
-----------------------------------------------------Moc 500-------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuong1()
	if (GetTask(NHANTHUONGMOC1) == 0) then
		if (GetTask(NGUOITUYETKHANCHOANGDODB) < nGioiHanMoc1) then
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
		if (GetTask(NGUOITUYETKHANCHOANGDODB) < nGioiHanMoc2) then
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
		if (GetTask(NGUOITUYETKHANCHOANGDODB) < nGioiHanMoc3) then
			Say("<color=green>Ph«n Th≠Îng MËc "..nGioiHanMoc3..":<color>\n<bclr=blue>+"..nTienVanMoc3HienThi.." vπn<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc3HienThi.." tri÷u kinh nghi÷m<bclr><color=orange>\n+Trang Bﬁ ho∆c vÀt ph»m ng»u nhi™n<color>")
		else
			Say("<color=green>Ph«n Th≠Îng MËc "..nGioiHanMoc3..":<color>\n<bclr=blue>+"..nTienVanMoc3HienThi.." vπn<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc3HienThi.." tri÷u kinh nghi÷m<bclr><color=orange>\n+Trang Bﬁ ho∆c vÀt ph»m ng»u nhi™n<color>",2,"NhÀn Th≠Îng/Moc1500","Th´i Ta Quay Lπi Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." ß∑ NhÀn Ph«n Th≠Îng Nµy RÂi")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------