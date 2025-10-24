IncludeLib("SETTING");
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\global\\pgaming\\xephang\\awardplayerstop.lua");
Include("\\script\\global\\pgaming\\xephang\\worldrank.lua");
Include("\\script\\global\\pgaming\\xephang\\bangxephang.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\task\\task_addplayerexp.lua")
IL("TITLE");
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\lib\\common.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
function main()
	dofile("script/global/pgaming/npc/lequan.lua");

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	local tbDailog = DailogClass:new(szNpcName)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	tbDailog.szTitleMsg = "<npc>KiÕm hiÖp quÇn hïng chiÕn Nam H¶i, long tranh hæ ®Êu diÖu Cöu Ch©u. Bæn sø gi¶ lµ ®¹i biÓu T©y S¬n c­ sÜ t¹i ®©y hoan nghªnh c¸c anh hïng hµo kiÖt."
	tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg , "<dec>", "")
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if (nDate > ThoiGianNhanThuongDuaTop and ThoiGianKetThucNhanThuongDuaTop > nDate) then
	tbDailog:AddOptEntry("NhËn th­ëng TOP", GetAwardTOPPlayers)
	end
	--tbDailog:AddOptEntry("CËp nhËt b¶n xÕp h¹ng", capnhatbangxephang)
------------------------------------
	if GetTask(5899,1) == 0 then		
	--tbDailog:AddOptEntry("NhËn code", CheckGIFTCODE4Player2Suport)
	end
------------------------------------
	if HaveCommonItem(6,1,4851)<1 and GetTask(5751,1) == 1 then
		tbDailog:AddOptEntry("NhËn l¹i lÖnh bµi t©n thñ", lbtanthu)
	end
------------------------------------
	--tbDailog:AddOptEntry("Test", test1234)
------------------------------------
	--tbDailog:AddOptEntry("Test2", test1234)
------------------------------------
	tbDailog:AddOptEntry("Hñy vËt phÈm", DisposeItem)
-------------------------------------
--tbDailog:AddOptEntry("NhËn vßng s¸ng GM", vongsanggm)
-----------------------------------
	tbDailog:Show()
end


function test1234()
AddItemEx(0,random(),0,0,0,2,10,2,127,10)
end
function test12342222()
AddMagic(318,1)
AddMagic(319,1)
AddMagic(321,1)
AddMagic(322,1)
AddMagic(323,1)
AddMagic(325,1)
AddMagic(339,1)
AddMagic(302,1)
AddMagic(342,1)
AddMagic(353,1)
AddMagic(355,1)
AddMagic(328,1)
AddMagic(380,1)
AddMagic(336,1)
AddMagic(337,1)
AddMagic(357,1)
AddMagic(359,1)
AddMagic(361,1)
AddMagic(362,1)
AddMagic(365,1)
AddMagic(368,1)
AddMagic(375,1)
AddMagic(372,1)
end


function test123()

end

function test123444()
for i = 297,297 do
AddItem(6,1,i,1,0,0,0)
end
for i = 1,10 do
AddItem(6,1,147,10,0,0,0)
AddEventItem(1317)
end
end	



function vongsanggm()
	if (Title_GetActiveTitle() ~= 5000) then
			SetTask(1122, 5000)
			Title_AddTitle(5000, 1, 30*24*60*60*18);
			Title_ActiveTitle(5000);
		else
			Title_RemoveTitle(5000)
		end
end

function Remove()
	local tbItem = GetRoomItems(0);
	for i = 1, getn(tbItem) do
		local nG,nD,nP = GetItemProp(tbItem[i]);
			RemoveItemByIndex(tbItem[i])
	end
end

function capnhatbangxephang()
	RemoteExc("\\script\\xephang\\worldrank_hook.lua", "RankHook:UpdateRank",{})
	Talk(1, "", "CËp NhËt xÕp h¹ng thµnh c«ng !!");
	return
end

-----------------------------------------------------
----------------------------------
TanThuGiftCode = "VLTK"
----------------------------------

SupportAwardTb =
{
	[1] = {ValItem = {1, 0, 0, 1, 0, 0}, NameItem = "Kim S¸ng D­îc",},
	[2] = {ValItem = {1, 0, 0, 1, 0, 0}, NameItem = "Kim S¸ng D­îc",},
	[3] = {ValItem = {1, 0, 0, 1, 0, 0}, NameItem = "Kim S¸ng D­îc",},
	[4] = {ValItem = {1, 1, 0, 1, 0, 0}, NameItem = "Ng­ng ThÇn §an",},
	[5] = {ValItem = {1, 1, 0, 1, 0, 0}, NameItem = "Ng­ng ThÇn §an",},
	[6] = {ValItem = {1, 1, 0, 1, 0, 0}, NameItem = "Ng­ng ThÇn §an",},
	[7] = {ValItem = {6,1,71,1,0,0,0}, NameItem = "Tiªn Th¶o Lé",},
}


Ten_NPC = "<color=Orange>LÔ Quan<color>: "

function CheckGIFTCODE4Player2Suport()
	if GetTask(5899) > 0 then
	Talk(1,"","B¹n ®· nhËn th­ëng råi")
	return
	end
	if GetTask(5899) == 0 then
		Msg2Player("<color=yellow>M· th­ëng t©n thñ cña b¹n lµ: <color=green><enter>"..TanThuGiftCode.."_"..GetAccount())
		return Talk(2, "#CheckGIFTCODE4Player2Suport_InputCODE()", Ten_NPC.."M· th­ëng t©n thñ cña b¹n lµ: <enter><color=green>"..TanThuGiftCode.."_"..GetAccount(), Ten_NPC.."B¹n cÇn nhËp m· Dù th­ëng vµo ¤ nhËp m·!")
	else
		return Talk(1, "#CheckGIFTCODE4Player2Suport_InputCODE()", Ten_NPC.."B¹n cÇn nhËp m· Dù th­ëng vµo ¤ nhËp m·!")
	end

end

function CheckGIFTCODE4Player2Suport_InputCODE(Code)
	if type(Code) == "string" and Code ~= nil then
		if Code == TanThuGiftCode.."_"..GetAccount() then
			Msg2Player("<color=yellow>X¸c nhËn m· thµnh c«ng!")
			return SupportTanThuDuaTop()
		else
			return Say(Ten_NPC.."VÞ huynh ®µi ®· nhËp sai M· th­ëng hoÆcm· th­ëng kh«ng tån t¹i, ngµi cã thÓ tiÕn hµnh nhËp  l¹i!", 2, "NhËp l¹i m·!/#CheckGIFTCODE4Player2Suport_InputCODE()", "KÕt thóc ®èi tho¹i!/OnCancel")
		end
		return
	end
	return AskClientForString("CheckGIFTCODE4Player2Suport_InputCODE", "", 1, 500, "NhËp m· th­ëng!");
end

function SupportTanThuDuaTop()	
	if GetTask(5899) == 0 then
		if  CalcFreeItemCellCount() < 16 then
			return Talk(1,"","Hµnh trang kh«ng ®ñ chæ trèng")
		end
		for i = 1, 7 do
			if i == 16 then
				local nItemIndex = AddItem(unpack(SupportAwardTb[i].ValItem))
				local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
				ITEM_SetExpiredTime(nItemIndex, nExpiredDate);
				SyncItem(nItemIndex);
				SetItemBindState(nItemIndex,-2)
				Msg2Player("Chóc mõng b¹n ®· nhËn th­ëng thµnh c«ng")
				--CreateNewSayEx(SupportAwardMsg[2], {{SupportAwardMsg[13],OnCancel},})
				break
			else
				local nItemIndex = AddItem(unpack(SupportAwardTb[i].ValItem))
				SetItemBindState(nItemIndex,-2)
			end
		end	
		Earn(5000)
		SetTask(5899, 1)
		return
	end
end

----------------------------------------------
function lbtanthu()
ItemIndex = AddItem(6,1,4851,1,0,0,0)
SetItemBindState(ItemIndex, -2)
end