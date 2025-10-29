IncludeLib("ITEM");
IncludeLib("FILESYS")
IncludeLib("LEAGUE");
IncludeLib("TONG")
IncludeLib("RELAYLADDER");
IncludeLib("SETTING")
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\systemconfig.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\mel\\doitienvan.lua")
Include("\\script\\global\\mel\\nangcapan.lua")
Include("\\script\\global\\mel\\nangcaptrangsuc.lua")
Include("\\script\\global\\mel\\antrangsuchoangkim.lua")
Include("\\script\\global\\mel\\nguahoangkim.lua")
Include("\\script\\global\\mel\\nangcapphiphong.lua")
Include("\\script\\global\\mel\\phiphonghoangkim.lua")
Include("\\script\\global\\mel\\tuyetdinhgioichi.lua")
Include("\\script\\global\\mel\\donganh.lua")

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

TITLEDIALOG = "T�n nh�n v�t: <color=green>%s<color>\n".."T�n t�i kho�n: <color=green>%s<color>\n".."Th�i gian: <color=green>Ng�y <color=yellow>%s<color> Th�ng <color=yellow>%s<color> N�m <color=yellow>20%s<color>, <color=yellow>%s<color> gi� <color=yellow>%s<color> ph�t<color>\n".."T�a ��: <color=green>%d, %d/%d<color>" 
function main(nItemIndex)
	dofile("script/global/mel/annie.lua")
		local strFaction = GetFaction()
		local nW,nX,nY = GetWorldPos();
		local year = tonumber(date( "%y"))
		local mm = tonumber(date( "%m"))
		local day = tonumber(date( "%d"))
		local hour = tonumber(GetLocalDate("%H"))
		local mmin = tonumber(GetLocalDate("%M"))
		local tbSay = {format(TITLEDIALOG, GetName(), GetAccount(),day,mm,year,hour,mmin ,nW,nX,nY)};
			--tinsert(tbSay,"��i ti�n t�/doitien_main")
			tinsert(tbSay,"N�ng c�p �n/melnangcapan")
			tinsert(tbSay,"N�ng c�p trang s�c/melnangcaptrangsuc")
			tinsert(tbSay,"N�ng c�p �n v� trang s�c Ho�ng Kim/melantrangsuchoangkim")
			tinsert(tbSay,"N�ng c�p ng�a Ho�ng Kim/nguahoangkim")
			tinsert(tbSay,"N�ng c�p Phi Phong/melnangcapphiphong")
			tinsert(tbSay,"N�ng c�p Phi Phong V� C�c Ho�ng Kim/phiphonghoangkim")
			tinsert(tbSay,"Ch� t�o Tuy�t ��nh Gi�i Ch�/tuyetdinhgioichi")
			tinsert(tbSay,"Ch� t�o ��ng �nh/donganh")
			tinsert(tbSay, "K�t th�c ��i tho�i./no")
		CreateTaskSay(tbSay)
	return 1;
end