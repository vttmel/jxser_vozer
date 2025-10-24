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

-----------------------------------------------------------------------tbFaction------------------------------------------------------------------------
local tbFaction =
{
	[1] =
	{
		szShowName = "ThiÕu L©m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709},
		tbRank={72},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708},
		tbRank={69},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710},
		tbRank={76},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
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
		szShowName = "Thóy Yªn",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713},
		tbRank={67},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714},
		tbRank={78},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715},
		tbRank={81},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716},
		tbRank={73},
	},
	[10] =
	{
		szShowName = "C«n L«n",
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

TITLEDIALOG = "Tªn nh©n vËt: <color=green>%s<color>\n".."Tªn tµi kho¶n: <color=green>%s<color>\n".."Thêi gian: <color=green>Ngµy <color=yellow>%s<color> Th¸ng <color=yellow>%s<color> N¨m <color=yellow>20%s<color>, <color=yellow>%s<color> giê <color=yellow>%s<color> phót<color>\n".."Täa ®é: <color=green>%d, %d/%d<color>" 
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
			--tinsert(tbSay,"§æi tiÒn tÖ/doitien_main")
			tinsert(tbSay,"N©ng cÊp Ên/melnangcapan")
			tinsert(tbSay,"N©ng cÊp trang søc/melnangcaptrangsuc")
			tinsert(tbSay,"N©ng cÊp Ên vµ trang søc Hoµng Kim/melantrangsuchoangkim")
			tinsert(tbSay,"N©ng cÊp ngùa Hoµng Kim/nguahoangkim")
			tinsert(tbSay,"N©ng cÊp Phi Phong/melnangcapphiphong")
			tinsert(tbSay,"N©ng cÊp Phi Phong V« Cùc Hoµng Kim/phiphonghoangkim")
			tinsert(tbSay,"ChÕ t¹o TuyÖt §Ønh Giíi ChØ/tuyetdinhgioichi")
			tinsert(tbSay, "KÕt thóc ®èi tho¹i./no")
		CreateTaskSay(tbSay)
	return 1;
end