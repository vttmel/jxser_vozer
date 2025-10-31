Include("\\script\\global\\pgaming\\missions\\bosshoangkim\\bossdai\\lib\\serverlib.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
BIGBOSS_SERVER_INFO  = 
{ --tªn boss,id boss, tû lÖ r¬i ®å,series boss,nLevel
	[1]={	szName = "HuyÒn Gi¸c §¹i S­",		nBossId = 740,	nRate = 322,	nSeries = 0,	nLevel = 95},
	[2]={	szName = "§­êng BÊt NhiÔm",			nBossId = 741,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[3]={	szName = "B¹ch Doanh Doanh",		nBossId = 742,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[4]={	szName = "Thanh TuyÖt S­ Th¸i",		nBossId = 743,	nRate = 341,	nSeries = 2,	nLevel = 95},
	[5]={	szName = "Yªn HiÓu Tr¸i",			nBossId = 744,	nRate = 336,	nSeries = 2,	nLevel = 95},
	[6]={	szName = "Hµ Nh©n Ng·",				nBossId = 745,	nRate = 321,	nSeries = 3,	nLevel = 95},
	[7]={	szName = "Tõ §¹i Nh¹c",				nBossId = 1367,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[8]={	szName = "TuyÒn C¬ Tö",				nBossId = 747,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[9]={	szName = "Thanh Liªn Tö",			nBossId = 1368,	nRate = 200,	nSeries = 4,	nLevel = 95},
	[10]={	szName = "§o¹n Méc DuÖ",			nBossId = 565,	nRate = 227,	nSeries = 3,	nLevel = 95},
	[11]={	szName = "Cæ B¸ch",					nBossId = 566,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[12]={	szName = "§­êng Phi YÕn",			nBossId = 1366,	nRate = 200,	nSeries = 1,	nLevel = 95},	
	[13]={	szName = "Hµ Linh Phiªu",			nBossId = 568,	nRate = 200,	nSeries = 2,	nLevel = 95},
	[14]={	szName = "Lam Y Y",					nBossId = 582,	nRate = 200,	nSeries = 1,	nLevel = 95},
	[15]={	szName = "M¹nh Th­¬ng L­¬ng",		nBossId = 583,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[16]={	szName = "Gia LuËt TÞ Ly",			nBossId = 563,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[17]={	szName = "§¹o Thanh Ch©n Nh©n",		nBossId = 562,	nRate = 200,	nSeries = 4,	nLevel = 95},
	[18]={	szName = "V­¬ng T¸",				nBossId = 739,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[19]={	szName = "HuyÒn Nan §¹i S­",		nBossId = 1365,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[20]={	szName = "Chung Linh Tó",			nBossId = 567,	nRate = 200,	nSeries = 2,	nLevel = 95},
}

BIGBOSS_FILE_POS = 
{
	"\\settings\\bosshoangkim\\maps\\bigboss\\bienkinh.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\daily.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\duongchau.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\laman.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\phuongtuong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\tuongduong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\thanhdo.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\balanghuyen.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\giangtanthon.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\vinhlactran.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\chutientran.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\daohuongthon.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\longmontran.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\thachcotran.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\duocvuong4.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\samac1.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\samac2.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\samac3.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\samacdiabieu.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\tiencucdong.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\longtuyenthon.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\truongbachsonbac.txt",
	"\\settings\\bosshoangkim\\maps\\bigboss\\truongbachsonnam.txt",
}


BIGBOSS_AWARD = 
{	
	[739]= --Thiªn v­¬ng.
	{	---"V­¬ng T¸",739,341
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy","§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p","§å phæ Hoµng Kim - H¸m Thiªn Uy Vò Thóc Yªu §¸i","§å phæ Hoµng Kim - H¸m Thiªn Hæ §Çu KhÈn Thóc UyÓn","§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa",
			"§å phæ Hoµng Kim - KÕ NghiÖp B«n L«i Toµn Long Th­¬ng","§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i","§å phæ Hoµng Kim - KÕ NghiÖp B¹ch Hæ V« Song KhÊu","§å phæ Hoµng Kim - KÕ NghiÖp Háa V©n Kú L©n thñ ","§å phæ Hoµng Kim - KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",
			"§å phæ Hoµng Kim - Ngù Long L­îng Ng©n B¶o §ao","§å phæ hoµng kim - Ngù Long ChiÕn ThÇn Qua Trôy","§å phæ Hoµng Kim - Ngù Long Thiªn M«n Thóc Yªu Hoµn","§å phæ Hoµng Kim - Ngù Long TÊn Phong Ph¸t C¬","§å phæ Hoµng Kim - Ngù Long TuyÖt MÖnh ChØ Hoµn",
		},
		tbPropDoPho = 
		{
			{6,1,254,1,0,0},{6,1,255,1,0,0},{6,1,256,1,0,0},{6,1,257,1,0,0},{6,1,258,1,0,0},
			{6,1,259,1,0,0},{6,1,260,1,0,0},{6,1,261,1,0,0},{6,1,262,1,0,0},{6,1,263,1,0,0},
			{6,1,264,1,0,0},{6,1,265,1,0,0},{6,1,266,1,0,0},{6,1,267,1,0,0},{6,1,268,1,0,0},
		},
		tbItemIDTime = {15,16,17,18,19,20,21,22,23,24,25,26,27,28,29},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Thiªn V­¬ng Chïy Ph¸p. QuyÓn 1","Thiªn V­¬ng Th­¬ng Ph¸p. QuyÓn 2","Thiªn V­¬ng §ao Ph¸p","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,37,1,0,0},{6,1,38,1,0,0},{6,1,39,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[740]= ---thiÕu l©m.
	{--"HuyÒn Gi¸c §¹i S­",740,322
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - Méng Long ChÝnh Hoµng T¨ng M·o","§å phæ Hoµng Kim - Méng Long Kim Ti ChÝnh Hång Cµ Sa","§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸p §¸i","§å phæ Hoµng Kim - Méng Long PhËt Ph¸p HuyÒn Béi","§å phæ Hoµng Kim - Méng Long Tö Kim B¸t Nh· Giíi",
			"§å phæ Hoµng Kim - Phôc Ma Tö Kim C«n","§å phæ Hoµng Kim - Phôc Ma V« L­îng Kim Cang UyÓn","§å phæ Hoµng Kim - Phôc Ma ¤ Kim NhuyÔn §iÒu","§å phæ Hoµng Kim - Phôc Ma PhËt T©m NhuyÔn KhÊu","§å phæ Hoµng Kim - Phôc Ma Phæ §é T¨ng Hµi",
			"§å phæ Hoµng Kim - Tø Kh«ng Gi¸ng Ma Giíi §ao","§å phæ Hoµng Kim - Tø Kh«ng §¹t Ma T¨ng Hµi","§å phæ Hoµng Kim - Tø Kh«ng Hé Ph¸p Yªu §¸i","§å phæ Hoµng Kim - Tø Kh«ng NhuyÔn B× Hé UyÓn","§å phæ Hoµng Kim - Tø Kh«ng Giíi LuËt Ph¸p Giíi",
		},
		tbPropDoPho = 
		{
			{6,1,239,1,0,0},{6,1,240,1,0,0},{6,1,241,1,0,0},{6,1,242,1,0,0},{6,1,243,1,0,0},
			{6,1,244,1,0,0},{6,1,245,1,0,0},{6,1,246,1,0,0},{6,1,247,1,0,0},{6,1,248,1,0,0},
			{6,1,249,1,0,0},{6,1,250,1,0,0},{6,1,251,1,0,0},{6,1,252,1,0,0},{6,1,253,1,0,0},
		},
		tbItemIDTime = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","ThiÕu L©m QuyÒn Ph¸p. QuyÓn 1","ThiÕu L©m C«n Ph¸p. QuyÓn 2","ThiÕu L©m §ao Ph¸p. QuyÓn 3","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,56,1,0,0},{6,1,57,1,0,0},{6,1,58,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[741]= ---®­êng m«n.
	{ --"§­êng BÊt NhiÔm",741,336
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - B¨ng Hµn §¬n ChØ Phi §ao","§å phæ Hoµng Kim - B¨ng Hµn HuyÒn Y Thóc Gi¸p","§å phæ Hoµng Kim - B¨ng Hµn T©m TiÔn Yªu KhÊu","§å phæ Hoµng Kim - B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi","§å phæ Hoµng Kim - B¨ng Hµn NguyÖt ¶nh Ngoa",
			"§å phæ Hoµng Kim - Thiªn Quang Hoa Vò M¹n Thiªn","§å phæ Hoµng Kim - Thiªn Quang §Þnh T©m Ng­ng ThÇn phï ","§å phæ Hoµng Kim - Thiªn Quang S©m La Thóc Yªu","§å phæ Hoµng Kim - Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa","§å phæ Hoµng Kim - Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",
			"§å phæ Hoµng Kim - S©m Hoang Phi Tinh §o¹t Hån","§å phæ Hoµng Kim - S©m Hoang Kim TiÒn Liªn Hoµn Gi¸p","§å phæ Hoµng Kim - S©m Hoang Hån Gi¶o Yªu Thóc","§å phæ Hoµng Kim - S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi","§å phæ Hoµng Kim - S©m Hoang Tinh VÉn Phi Lý ",
			"§å phæ Hoµng Kim - §Þa Ph¸ch Ngò Hµnh Liªn Hoµn Qu¸n","§å phæ Hoµng Kim - §Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn","§å phæ Hoµng Kim - §Þa Ph¸ch TÝch LÞch L«i Háa Giíi","§å phæ Hoµng Kim - §Þa Ph¸ch KhÊu T©m Tr¹c","§å phæ Hoµng Kim - §Þa Ph¸ch Phong Hµn Thóc Yªu",
		},
		tbPropDoPho = 
		{
			{6,1,309,1,0,0},{6,1,310,1,0,0},{6,1,311,1,0,0},{6,1,312,1,0,0},{6,1,313,1,0,0},
			{6,1,314,1,0,0},{6,1,315,1,0,0},{6,1,316,1,0,0},{6,1,317,1,0,0},{6,1,318,1,0,0},
			{6,1,319,1,0,0},{6,1,320,1,0,0},{6,1,321,1,0,0},{6,1,322,1,0,0},{6,1,323,1,0,0},
			{6,1,324,1,0,0},{6,1,325,1,0,0},{6,1,326,1,0,0},{6,1,327,1,0,0},{6,1,328,1,0,0},
		},
		tbItemIDTime = {70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","B¹o Vò Lª Hoa","Lo¹n Hoµn KÝch","NhiÕp Hån NguyÖt Anh","Cöu Cung Phi Tinh","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,27,1,0,0},{6,1,28,1,0,0},{6,1,45,1,0,0},{6,1,46,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[742]= --ngò ®éc.
	{---"B¹ch Doanh Doanh",742,336
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - U Lung Kim Xµ Ph¸t §¸i","§å phæ Hoµng Kim - U Lung XÝch HiÕt MËt Trang","§å phæ Hoµng Kim - U Lung Thanh Ng« TriÒn Yªu","§å phæ Hoµng Kim - U Lung Ng©n ThiÒm Hé UyÓn","§å phæ Hoµng Kim - U Lung MÆc Thï NhuyÔn Lý",
			"§å phæ Hoµng Kim - Minh ¶o Tµ S¸t §éc NhËn","§å phæ Hoµng Kim - Minh ¶o U Cæ ¸m Y","§å phæ Hoµng Kim - Minh ¶o Thanh HiÕt ChØ Hoµn","§å phæ Hoµng Kim - Minh ¶o Hñ Cèt Hé UyÓn","§å phæ Hoµng Kim - Minh Hoan Song Hoµn Xµ KhÊu",
			"§å phæ Hoµng Kim - Chó Ph­îc Ph¸ Gi¸p §Çu Hoµn","§å phæ Hoµng Kim - Chó Ph­îc DiÖt L«i C¶nh Phï ","§å phæ Hoµng Kim - Chó Ph­îc U ¶o ChØ Hoµn","§å phæ Hoµng Kim - Chó Ph­îc Xuyªn T©m §éc UyÓn","§å phæ Hoµng Kim - Chó Phäc Thùc Cèt Ngäc Béi",
		},
		tbPropDoPho = 
		{
			{6,1,294,1,0,0},{6,1,295,1,0,0},{6,1,296,1,0,0},{6,1,297,1,0,0},{6,1,298,1,0,0},
			{6,1,299,1,0,0},{6,1,300,1,0,0},{6,1,301,1,0,0},{6,1,302,1,0,0},{6,1,303,1,0,0},
			{6,1,304,1,0,0},{6,1,305,1,0,0},{6,1,306,1,0,0},{6,1,307,1,0,0},{6,1,308,1,0,0},
		},
		tbItemIDTime = {55,56,57,58,59,60,61,62,63,64,65,66,67,68,69},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Ngò §éc Ch­ëng Ph¸p","Ngò §éc §ao Ph¸p","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,47,1,0,0},{6,1,48,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[743]= --nga my.
	{---"Thanh TuyÖt S­ Th¸i",743,341
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - V« Gian û Thiªn KiÕm","§å phæ Hoµng Kim - V« gian Thanh phong nhuyÔn l÷","§å phæ Hoµng Kim - V« Gian PhÊt V©n Ti §¸i","§å phæ Hoµng Kim - V« Gian CÇm VËn Hé UyÓn","§å phæ Hoµng Kim - V« Gian B¹ch Ngäc Bµn ChØ ",
			"§å phæ Hoµng Kim - V« Ma Ma Ni Qu¸n","§å phæ Hoµng Kim - V« ma thu thñy l­u quang ®ai","§å phæ Hoµng Kim - V« Ma B¨ng Tinh ChØ Hoµn","§å phæ Hoµng Kim - V« Ma TÈy T­îng Ngäc KhÊu",
			"§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m Qu¸n","§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u","§å phæ Hoµng Kim - V« TrÇn Tõ Bi Ngäc Bµn ChØ","§å phæ Hoµng Kim - V« TrÇn TÞnh ¶nh L­u T«","§å phæ hoµng kim - V« TrÇn PhËt Quang ChØ Hoµn",
		},
		tbPropDoPho = 
		{
			{6,1,269,1,0,0},{6,1,270,1,0,0},{6,1,271,1,0,0},{6,1,272,1,0,0},{6,1,273,1,0,0},
			{6,1,274,1,0,0},{6,1,275,1,0,0},{6,1,276,1,0,0},{6,1,277,1,0,0},
			{6,1,279,1,0,0},{6,1,280,1,0,0},{6,1,281,1,0,0},{6,1,282,1,0,0},{6,1,283,1,0,0},
		},
		tbItemIDTime = {30,31,32,33,34,35,36,37,38,39,40,41,42,43,44},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","DiÖt KiÕm MËt TÞch","Nga Mi PhËt Quan Ch­ëng MËt TÞch","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,42,1,0,0},{6,1,43,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[744]= --thóy yªn
	{---"Yªn HiÓu Tr¸i",744,336
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - Tª Hoµng Phông Nghi §ao","§å phæ Hoµng Kim - Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu","§å phæ Hoµng Kim - Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i","§å phæ Hoµng Kim - Tª Hoµng B¨ng Tung CÈm UyÓn","§å phæ Hoµng Kim - Tª Hoµng Thóy Ngäc ChØ Hoµn",
			"§å phæ Hoµng Kim - BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao","§å phæ Hoµng Kim - BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n","§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti §¸i","§å phæ Hoµng Kim - BÝch H¶i Hång L¨ng Ba","§å phæ Hoµng Kim - BÝch H¶i Khiªn TÕ ChØ Hoµn",
		},
		tbPropDoPho = 
		{
			{6,1,284,1,0,0},{6,1,285,1,0,0},{6,1,286,1,0,0},{6,1,287,1,0,0},{6,1,288,1,0,0},
			{6,1,289,1,0,0},{6,1,290,1,0,0},{6,1,291,1,0,0},{6,1,292,1,0,0},{6,1,293,1,0,0},
		},
		tbItemIDTime = {45,46,47,48,49,50,51,52,53,54},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Thóy Yªn §ao Ph¸p","Thóy Yªn Song §ao","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,40,1,0,0},{6,1,41,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[745]= --c¸i bang.
	{---"Hµ Nh©n Ng·",745,321
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - §ång Cõu Ngù Long Ngäc Béi","§å phæ Hoµng Kim - §ång Cõu Gi¸ng Long C¸i Y","§å phæ Hoµng Kim - §ång Cõu TiÒm Long Yªu §¸i","§å phæ Hoµng Kim - §ång Cõu Kh¸ng Long Hé UyÓn","§å phæ Hoµng Kim - §ång Cõu KiÕn Long Ban ChØ",
			"§å phæ Hoµng Kim - §Þch Kh¸i Lôc Ngäc Tr­îng","§å phæ Hoµng Kim - §Þch Kh¸i Cöu §¹i C¸i Y","§å phæ Hoµng Kim - §Þch Kh¸i TriÒn M·ng Yªu §¸i","§å phæ Hoµng Kim - §Þch Kh¸i CÈu TÝch B× Hé UyÓn","§å phæ Hoµng Kim - §Þch Kh¸i Th¶o Gian Th¹ch Giíi",
		},
		tbPropDoPho = 
		{
			{6,1,329,1,0,0},{6,1,330,1,0,0},{6,1,331,1,0,0},{6,1,332,1,0,0},{6,1,333,1,0,0},
			{6,1,334,1,0,0},{6,1,335,1,0,0},{6,1,336,1,0,0},{6,1,337,1,0,0},{6,1,338,1,0,0},
		},
		tbItemIDTime = {90,91,92,93,94,95,96,97,98,99},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","C¸i Bang Ch­ëng Ph¸p","C¸i Bang C«n Ph¸p","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,54,1,0,0},{6,1,55,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[747]= --c«n l«n.
	{---"TuyÒn C¬ Tö",747,341
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - S­¬ng Tinh Thiªn Niªn Hµn ThiÕt","§å phæ Hoµng Kim - S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu","§å phæ Hoµng Kim - S­¬ng Tinh Thanh Phong Lò §¸i","§å phæ Hoµng Kim - S­¬ng Tinh Thiªn Thanh B¨ng Tinh Thñ","§å phæ Hoµng Kim - S­¬ng Tinh Phong B¹o ChØ Hoµn",
			"§å phæ Hoµng Kim - L«i Khung Hµn Tïng B¨ng B¸ch Quan","§å phæ Hoµng Kim - L«i Khung Thiªn §Þa Hé Phï","§å phæ Hoµng Kim - L«i Khung Phong L«i Thanh CÈm §¸i","§å phæ Hoµng Kim - L«i Khung Linh Ngäc ¤n L«i","§å phæ Hoµng Kim - L«i Khung Cöu Thiªn DÉn L«i Giíi",
			"§å phæ Hoµng Kim - Vô ¶o B¾c Minh §¹o Qu¸n","§å phæ Hoµng Kim - Vô Hoan Th¸i Uyªn ch©n Vò Liªn","§å phæ Hoµng Kim - Vô ¶o Thóc T©m ChØ Hoµn","§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi","§å phæ Hoµng Kim - Vô ¶o Tung Phong TuyÕt ¶nh ngoa",
		},
		tbPropDoPho = 
		{
			{6,1,364,1,0,0},{6,1,365,1,0,0},{6,1,366,1,0,0},{6,1,367,1,0,0},{6,1,368,1,0,0},
			{6,1,369,1,0,0},{6,1,370,1,0,0},{6,1,371,1,0,0},{6,1,372,1,0,0},{6,1,373,1,0,0},
			{6,1,374,1,0,0},{6,1,375,1,0,0},{6,1,376,1,0,0},{6,1,377,1,0,0},{6,1,378,1,0,0},
		},
		tbItemIDTime = {125,126,127,128,129,130,131,132,133,134,135,136,137,138,139},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Ngù Phong ThuËt","Ngù L«i ThuËt","Ngù T©m ThuËt","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,50,1,0,0},{6,1,51,1,0,0},{6,1,52,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,		
	},
	[746]= ---vâ ®ang.+ c«n l«n
	{--"§¬n Tö Nam",746,342
		szNameDoPho = 
		{
			"§å phæ hoµng kim - L¨ng Nh¹c Th¸i Cùc KiÕm","§å phæ Hoµng Kim - L¨ng Nh¹c V« Ng· Thóc §¸i","§å phæ hoµng kim - L¨ng Nh¹c Né L«i Ph¸p Giíi","§å phæ Hoµng Kim - L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi","§å phæ Hoµng Kim - L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",
			"§å phæ Hoµng Kim - CËp Phong Ch©n Vò KiÕm","§å phæ Hoµng Kim - CËp Phong Tam Thanh Phï ","§å phæ Hoµng Kim - CËp Phong HuyÒn Ti Tam §o¹n CÈm","§å phæ Hoµng Kim - CËp Phong Thóy NGäc HuyÒn Hoµng UyÓn","§å phæ Hoµng Kim - CËp Phong Thanh Tïng Ph¸p Giíi",
		},
		tbPropDoPho = 
		{
			{6,1,354,1,0,0},{6,1,355,1,0,0},{6,1,356,1,0,0},{6,1,357,1,0,0},{6,1,358,1,0,0},
			{6,1,359,1,0,0},{6,1,360,1,0,0},{6,1,361,1,0,0},{6,1,362,1,0,0},{6,1,363,1,0,0},
		},
		tbItemIDTime = {115,116,117,118,119,120,121,122,123,124},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Th¸i Cùc QuyÒn Phæ QuyÓn 3","Th¸i Cùc KiÕm Phæ QuyÓn 2","Ngù Phong ThuËt","Ngù L«i ThuËt","Ngù T©m ThuËt","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,33,1,0,0},{6,1,34,1,0,0},{6,1,50,1,0,0},{6,1,51,1,0,0},{6,1,52,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[748]= --c¸i bang. + Thiªn nhÉn
	{---"Hµn M«ng",748,321
		szNameDoPho = 
		{
			"§å phæ An Bang B¨ng Tinh Th¹ch H¹ng Liªn M¶nh 1","§å phæ An Bang B¨ng Tinh Th¹ch H¹ng Liªn M¶nh 2","§å phæ An Bang B¨ng Tinh Th¹ch H¹ng Liªn M¶nh 3","§å phæ An Bang B¨ng Tinh Th¹ch H¹ng Liªn M¶nh 4","§å phæ An Bang B¨ng Tinh Th¹ch H¹ng Liªn M¶nh 5",
			"§å phæ An Bang Cóc Hoa Th¹ch ChØ Hoµn M¶nh 1","§å phæ An Bang Cóc Hoa Th¹ch ChØ Hoµn M¶nh 2","§å phæ An Bang Cóc Hoa Th¹ch ChØ Hoµn M¶nh 3","§å phæ An Bang Cóc Hoa Th¹ch ChØ Hoµn M¶nh 4","§å phæ An Bang Cóc Hoa Th¹ch ChØ Hoµn M¶nh 5",
			"§å phæ An Bang §iÒn Hoµng Th¹ch Ngäc Béi M¶nh 1","§å phæ An Bang §iÒn Hoµng Th¹ch Ngäc Béi M¶nh 2","§å phæ An Bang §iÒn Hoµng Th¹ch Ngäc Béi M¶nh 3","§å phæ An Bang §iÒn Hoµng Th¹ch Ngäc Béi M¶nh 4","§å phæ An Bang §iÒn Hoµng Th¹ch Ngäc Béi M¶nh 5",
			"§å phæ An Bang Kª HuyÕt Th¹ch Giíi ChØ M¶nh 1","§å phæ An Bang Kª HuyÕt Th¹ch Giíi ChØ M¶nh 2","§å phæ An Bang Kª HuyÕt Th¹ch Giíi ChØ M¶nh 3","§å phæ An Bang Kª HuyÕt Th¹ch Giíi ChØ M¶nh 4","§å phæ An Bang Kª HuyÕt Th¹ch Giíi ChØ M¶nh 5",
		},
		tbPropDoPho = 
		{
			{6,1,4353,1,0,0},{6,1,4354,1,0,0},{6,1,4355,1,0,0},{6,1,4356,1,0,0},{6,1,4357,1,0,0},
			{6,1,4358,1,0,0},{6,1,4359,1,0,0},{6,1,4360,1,0,0},{6,1,4361,1,0,0},{6,1,4362,1,0,0},
			{6,1,4363,1,0,0},{6,1,4364,1,0,0},{6,1,4365,1,0,0},{6,1,4366,1,0,0},{6,1,4367,1,0,0},
			{6,1,4368,1,0,0},{6,1,4369,1,0,0},{6,1,4370,1,0,0},{6,1,4371,1,0,0},{6,1,4372,1,0,0},
		},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","C¸i Bang Ch­ëng Ph¸p","C¸i Bang C«n Ph¸p","V©n Long KÝch","L­u Tinh §ao Ph¸p","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,54,1,0,0},{6,1,55,1,0,0},{6,1,35,1,0,0},{6,1,36,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[565]= --thiªn nhÉn.
	{--"§o¹n Méc DuÖ",565,227
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - Ma S¸t Quû Cèc U Minh Th­¬ng","§å phæ Hoµng Kim - Ma S¸t Tµn D­¬ng ¸nh HuyÕt Gi¸p","§å phæ Hoµng Kim - Ma S¸t XÝch Ký Táa Yªu KhÊu","§å phæ Hoµng Kim - Ma S¸t Cö Háa Liªu Thiªn Hoµn","§å phæ Hoµng Kim - Ma S¸t V©n Long Thæ Ch©u Giíi",
			"§å phæ Hoµng Kim - Ma ThÞ LiÖt DiÖm Qu¸n MiÖn","§å phæ Hoµng Kim - Ma ThÞ LÖ Ma PhÖ T©m §¸i","§å phæ Hoµng Kim - Ma ThÞ NghiÖp Háa U Minh Giíi","§å phæ Hoµng Kim - Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi","§å phæ Hoµng Kim - Ma ThÞ s¬n  H¶i Phi Hång Lý",
			"§å phæ Hoµng Kim - Ma Hoµng Kim Gi¸p Kh«i","§å phæ Hoµng Kim - Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn","§å phæ Hoµng Kim - Ma Hoµng Khª Cèc Thóc Yªu §¸i","§å phæ Hoµng Kim - Ma Hoµng HuyÕt Y Thó Tr¹c","§å phæ Hoµng Kim - Ma Hoµng Dung Kim §o¹n NhËt Giíi",
		},
		tbPropDoPho = 
		{
			{6,1,339,1,0,0},{6,1,340,1,0,0},{6,1,341,1,0,0},{6,1,342,1,0,0},{6,1,343,1,0,0},
			{6,1,344,1,0,0},{6,1,345,1,0,0},{6,1,346,1,0,0},{6,1,347,1,0,0},{6,1,348,1,0,0},
			{6,1,349,1,0,0},{6,1,350,1,0,0},{6,1,351,1,0,0},{6,1,352,1,0,0},{6,1,353,1,0,0},
		},
		tbItemIDTime = {100,101,102,103,104,105,106,107,108,109,110,111,112,113,114},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","V©n Long KÝch","L­u Tinh §ao Ph¸p","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,35,1,0,0},{6,1,36,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[567]= --thóy yªn.
	{--"Chung Linh Tó",567,181
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - Tª Hoµng Phông Nghi §ao","§å phæ Hoµng Kim - Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu","§å phæ Hoµng Kim - Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i","§å phæ Hoµng Kim - Tª Hoµng B¨ng Tung CÈm UyÓn","§å phæ Hoµng Kim - Tª Hoµng Thóy Ngäc ChØ Hoµn",
			"§å phæ Hoµng Kim - BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao","§å phæ Hoµng Kim - BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n","§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti §¸i","§å phæ Hoµng Kim - BÝch H¶i Hång L¨ng Ba","§å phæ Hoµng Kim - BÝch H¶i Khiªn TÕ ChØ Hoµn",
		},
		tbPropDoPho = 
		{
			{6,1,284,1,0,0},{6,1,285,1,0,0},{6,1,286,1,0,0},{6,1,287,1,0,0},{6,1,288,1,0,0},
			{6,1,289,1,0,0},{6,1,290,1,0,0},{6,1,291,1,0,0},{6,1,292,1,0,0},{6,1,293,1,0,0},
		},
		tbItemIDTime = {45,46,47,48,49,50,51,52,53,54},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Thóy Yªn §ao Ph¸p","Thóy Yªn Song §ao","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,40,1,0,0},{6,1,41,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[583]= --c¸i bang.
	{--"M¹nh Th­¬ng L­¬ng",583,181
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - §ång Cõu Ngù Long Ngäc Béi","§å phæ Hoµng Kim - §ång Cõu Gi¸ng Long C¸i Y","§å phæ Hoµng Kim - §ång Cõu TiÒm Long Yªu §¸i","§å phæ Hoµng Kim - §ång Cõu Kh¸ng Long Hé UyÓn","§å phæ Hoµng Kim - §ång Cõu KiÕn Long Ban ChØ",
			"§å phæ Hoµng Kim - §Þch Kh¸i Lôc Ngäc Tr­îng","§å phæ Hoµng Kim - §Þch Kh¸i Cöu §¹i C¸i Y","§å phæ Hoµng Kim - §Þch Kh¸i TriÒn M·ng Yªu §¸i","§å phæ Hoµng Kim - §Þch Kh¸i CÈu TÝch B× Hé UyÓn","§å phæ Hoµng Kim - §Þch Kh¸i Th¶o Gian Th¹ch Giíi",
		},
		tbPropDoPho = 
		{
			{6,1,329,1,0,0},{6,1,330,1,0,0},{6,1,331,1,0,0},{6,1,332,1,0,0},{6,1,333,1,0,0},
			{6,1,334,1,0,0},{6,1,335,1,0,0},{6,1,336,1,0,0},{6,1,337,1,0,0},{6,1,338,1,0,0},
		},
		tbItemIDTime = {90,91,92,93,94,95,96,97,98,99},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","C¸i Bang Ch­ëng Ph¸p","C¸i Bang C«n Ph¸p","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,54,1,0,0},{6,1,55,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[1365]= ---thiÕu l©m.
	{--"HuyÒn Nan §¹i S­",1365,342
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - Méng Long ChÝnh Hoµng T¨ng M·o","§å phæ Hoµng Kim - Méng Long Kim Ti ChÝnh Hång Cµ Sa","§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸p §¸i","§å phæ Hoµng Kim - Méng Long PhËt Ph¸p HuyÒn Béi","§å phæ Hoµng Kim - Méng Long Tö Kim B¸t Nh· Giíi",
			"§å phæ Hoµng Kim - Phôc Ma Tö Kim C«n","§å phæ Hoµng Kim - Phôc Ma V« L­îng Kim Cang UyÓn","§å phæ Hoµng Kim - Phôc Ma ¤ Kim NhuyÔn §iÒu","§å phæ Hoµng Kim - Phôc Ma PhËt T©m NhuyÔn KhÊu","§å phæ Hoµng Kim - Phôc Ma Phæ §é T¨ng Hµi",
			"§å phæ Hoµng Kim - Tø Kh«ng Gi¸ng Ma Giíi §ao","§å phæ Hoµng Kim - Tø Kh«ng §¹t Ma T¨ng Hµi","§å phæ Hoµng Kim - Tø Kh«ng Hé Ph¸p Yªu §¸i","§å phæ Hoµng Kim - Tø Kh«ng NhuyÔn B× Hé UyÓn","§å phæ Hoµng Kim - Tø Kh«ng Giíi LuËt Ph¸p Giíi",
		},
		tbPropDoPho = 
		{
			{6,1,239,1,0,0},{6,1,240,1,0,0},{6,1,241,1,0,0},{6,1,242,1,0,0},{6,1,243,1,0,0},
			{6,1,244,1,0,0},{6,1,245,1,0,0},{6,1,246,1,0,0},{6,1,247,1,0,0},{6,1,248,1,0,0},
			{6,1,249,1,0,0},{6,1,250,1,0,0},{6,1,251,1,0,0},{6,1,252,1,0,0},{6,1,253,1,0,0},
		},
		tbItemIDTime = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","ThiÕu L©m QuyÒn Ph¸p. QuyÓn 1","ThiÕu L©m C«n Ph¸p. QuyÓn 2","ThiÕu L©m §ao Ph¸p. QuyÓn 3","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,56,1,0,0},{6,1,57,1,0,0},{6,1,58,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[1368]= ---c«n l«n.
	{---"Thanh Liªn Tö",1368,875
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - S­¬ng Tinh Thiªn Niªn Hµn ThiÕt","§å phæ Hoµng Kim - S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu","§å phæ Hoµng Kim - S­¬ng Tinh Thanh Phong Lò §¸i","§å phæ Hoµng Kim - S­¬ng Tinh Thiªn Thanh B¨ng Tinh Thñ","§å phæ Hoµng Kim - S­¬ng Tinh Phong B¹o ChØ Hoµn",
			"§å phæ Hoµng Kim - L«i Khung Hµn Tïng B¨ng B¸ch Quan","§å phæ Hoµng Kim - L«i Khung Thiªn §Þa Hé Phï","§å phæ Hoµng Kim - L«i Khung Phong L«i Thanh CÈm §¸i","§å phæ Hoµng Kim - L«i Khung Linh Ngäc ¤n L«i","§å phæ Hoµng Kim - L«i Khung Cöu Thiªn DÉn L«i Giíi",
			"§å phæ Hoµng Kim - Vô ¶o B¾c Minh §¹o Qu¸n","§å phæ Hoµng Kim - Vô Hoan Th¸i Uyªn ch©n Vò Liªn","§å phæ Hoµng Kim - Vô ¶o Thóc T©m ChØ Hoµn","§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi","§å phæ Hoµng Kim - Vô ¶o Tung Phong TuyÕt ¶nh ngoa",
		},
		tbPropDoPho = 
		{
			{6,1,364,1,0,0},{6,1,365,1,0,0},{6,1,366,1,0,0},{6,1,367,1,0,0},{6,1,368,1,0,0},
			{6,1,369,1,0,0},{6,1,370,1,0,0},{6,1,371,1,0,0},{6,1,372,1,0,0},{6,1,373,1,0,0},
			{6,1,374,1,0,0},{6,1,375,1,0,0},{6,1,376,1,0,0},{6,1,377,1,0,0},{6,1,378,1,0,0},
		},
		tbItemIDTime = {125,126,127,128,129,130,131,132,133,134,135,136,137,138,139},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Ngù Phong ThuËt","Ngù L«i ThuËt","Ngù T©m ThuËt","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,50,1,0,0},{6,1,51,1,0,0},{6,1,52,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,		
	},
	[1366]= --®­êng m«n.
	{--"§­êng Phi YÕn",1366,342
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - B¨ng Hµn §¬n ChØ Phi §ao","§å phæ Hoµng Kim - B¨ng Hµn HuyÒn Y Thóc Gi¸p","§å phæ Hoµng Kim - B¨ng Hµn T©m TiÔn Yªu KhÊu","§å phæ Hoµng Kim - B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi","§å phæ Hoµng Kim - B¨ng Hµn NguyÖt ¶nh Ngoa",
			"§å phæ Hoµng Kim - Thiªn Quang Hoa Vò M¹n Thiªn","§å phæ Hoµng Kim - Thiªn Quang §Þnh T©m Ng­ng ThÇn phï ","§å phæ Hoµng Kim - Thiªn Quang S©m La Thóc Yªu","§å phæ Hoµng Kim - Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa","§å phæ Hoµng Kim - Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",
			"§å phæ Hoµng Kim - S©m Hoang Phi Tinh §o¹t Hån","§å phæ Hoµng Kim - S©m Hoang Kim TiÒn Liªn Hoµn Gi¸p","§å phæ Hoµng Kim - S©m Hoang Hån Gi¶o Yªu Thóc","§å phæ Hoµng Kim - S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi","§å phæ Hoµng Kim - S©m Hoang Tinh VÉn Phi Lý ",
			"§å phæ Hoµng Kim - §Þa Ph¸ch Ngò Hµnh Liªn Hoµn Qu¸n","§å phæ Hoµng Kim - §Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn","§å phæ Hoµng Kim - §Þa Ph¸ch TÝch LÞch L«i Háa Giíi","§å phæ Hoµng Kim - §Þa Ph¸ch KhÊu T©m Tr¹c","§å phæ Hoµng Kim - §Þa Ph¸ch Phong Hµn Thóc Yªu",
		},
		tbPropDoPho = 
		{
			{6,1,309,1,0,0},{6,1,310,1,0,0},{6,1,311,1,0,0},{6,1,312,1,0,0},{6,1,313,1,0,0},
			{6,1,314,1,0,0},{6,1,315,1,0,0},{6,1,316,1,0,0},{6,1,317,1,0,0},{6,1,318,1,0,0},
			{6,1,319,1,0,0},{6,1,320,1,0,0},{6,1,321,1,0,0},{6,1,322,1,0,0},{6,1,323,1,0,0},
			{6,1,324,1,0,0},{6,1,325,1,0,0},{6,1,326,1,0,0},{6,1,327,1,0,0},{6,1,328,1,0,0},
		},
		tbItemIDTime = {70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","B¹o Vò Lª Hoa","Lo¹n Hoµn KÝch","NhiÕp Hån NguyÖt Anh","Cöu Cung Phi Tinh","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,27,1,0,0},{6,1,28,1,0,0},{6,1,45,1,0,0},{6,1,46,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[1367]= ---vâ ®ang.
	{--"Tõ §¹i Nh¹c",1367,342	
		szNameDoPho = 
		{
			"§å phæ hoµng kim - L¨ng Nh¹c Th¸i Cùc KiÕm","§å phæ Hoµng Kim - L¨ng Nh¹c V« Ng· Thóc §¸i","§å phæ hoµng kim - L¨ng Nh¹c Né L«i Ph¸p Giíi","§å phæ Hoµng Kim - L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi","§å phæ Hoµng Kim - L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",
			"§å phæ Hoµng Kim - CËp Phong Ch©n Vò KiÕm","§å phæ Hoµng Kim - CËp Phong Tam Thanh Phï ","§å phæ Hoµng Kim - CËp Phong HuyÒn Ti Tam §o¹n CÈm","§å phæ Hoµng Kim - CËp Phong Thóy NGäc HuyÒn Hoµng UyÓn","§å phæ Hoµng Kim - CËp Phong Thanh Tïng Ph¸p Giíi",
		},
		tbPropDoPho = 
		{
			{6,1,354,1,0,0},{6,1,355,1,0,0},{6,1,356,1,0,0},{6,1,357,1,0,0},{6,1,358,1,0,0},
			{6,1,359,1,0,0},{6,1,360,1,0,0},{6,1,361,1,0,0},{6,1,362,1,0,0},{6,1,363,1,0,0},
		},
		tbItemIDTime = {115,116,117,118,119,120,121,122,123,124},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Th¸i Cùc QuyÒn Phæ QuyÓn 3","Th¸i Cùc KiÕm Phæ QuyÓn 2","Ngù Phong ThuËt","Ngù L«i ThuËt","Ngù T©m ThuËt","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,33,1,0,0},{6,1,34,1,0,0},{6,1,50,1,0,0},{6,1,51,1,0,0},{6,1,52,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[566]= --Thiªn v­¬ng.
	{	---"Cæ B¸ch",739,341
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy","§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p","§å phæ Hoµng Kim - H¸m Thiªn Uy Vò Thóc Yªu §¸i","§å phæ Hoµng Kim - H¸m Thiªn Hæ §Çu KhÈn Thóc UyÓn","§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa",
			"§å phæ Hoµng Kim - KÕ NghiÖp B«n L«i Toµn Long Th­¬ng","§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i","§å phæ Hoµng Kim - KÕ NghiÖp B¹ch Hæ V« Song KhÊu","§å phæ Hoµng Kim - KÕ NghiÖp Háa V©n Kú L©n thñ ","§å phæ Hoµng Kim - KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",
			"§å phæ Hoµng Kim - Ngù Long L­îng Ng©n B¶o §ao","§å phæ hoµng kim - Ngù Long ChiÕn ThÇn Qua Trôy","§å phæ Hoµng Kim - Ngù Long Thiªn M«n Thóc Yªu Hoµn","§å phæ Hoµng Kim - Ngù Long TÊn Phong Ph¸t C¬","§å phæ Hoµng Kim - Ngù Long TuyÖt MÖnh ChØ Hoµn",
		},
		tbPropDoPho = 
		{
			{6,1,254,1,0,0},{6,1,255,1,0,0},{6,1,256,1,0,0},{6,1,257,1,0,0},{6,1,258,1,0,0},
			{6,1,259,1,0,0},{6,1,260,1,0,0},{6,1,261,1,0,0},{6,1,262,1,0,0},{6,1,263,1,0,0},
			{6,1,264,1,0,0},{6,1,265,1,0,0},{6,1,266,1,0,0},{6,1,267,1,0,0},{6,1,268,1,0,0},
		},
		tbItemIDTime = {15,16,17,18,19,20,21,22,23,24,25,26,27,28,29},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Thiªn V­¬ng Chïy Ph¸p. QuyÓn 1","Thiªn V­¬ng Th­¬ng Ph¸p. QuyÓn 2","Thiªn V­¬ng §ao Ph¸p","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,37,1,0,0},{6,1,38,1,0,0},{6,1,39,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[568]= --Nga My.
	{	---"Hµ Linh Phiªu",739,341
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - V« Gian û Thiªn KiÕm","§å phæ Hoµng Kim - V« gian Thanh phong nhuyÔn l÷","§å phæ Hoµng Kim - V« Gian PhÊt V©n Ti §¸i","§å phæ Hoµng Kim - V« Gian CÇm VËn Hé UyÓn","§å phæ Hoµng Kim - V« Gian B¹ch Ngäc Bµn ChØ ",
			"§å phæ Hoµng Kim - V« Ma Ma Ni Qu¸n","§å phæ Hoµng Kim - V« ma thu thñy l­u quang ®ai","§å phæ Hoµng Kim - V« Ma B¨ng Tinh ChØ Hoµn","§å phæ Hoµng Kim - V« Ma TÈy T­îng Ngäc KhÊu",
			"§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m Qu¸n","§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u","§å phæ Hoµng Kim - V« TrÇn Tõ Bi Ngäc Bµn ChØ","§å phæ Hoµng Kim - V« TrÇn TÞnh ¶nh L­u T«","§å phæ hoµng kim - V« TrÇn PhËt Quang ChØ Hoµn",
		},
		tbPropDoPho = 
		{
			{6,1,269,1,0,0},{6,1,270,1,0,0},{6,1,271,1,0,0},{6,1,272,1,0,0},{6,1,273,1,0,0},
			{6,1,274,1,0,0},{6,1,275,1,0,0},{6,1,276,1,0,0},{6,1,277,1,0,0},
			{6,1,279,1,0,0},{6,1,280,1,0,0},{6,1,281,1,0,0},{6,1,282,1,0,0},{6,1,283,1,0,0},
		},
		tbItemIDTime = {30,31,32,33,34,35,36,37,38,39,40,41,42,43,44},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","DiÖt KiÕm MËt TÞch","Nga Mi PhËt Quan Ch­ëng MËt TÞch","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,42,1,0,0},{6,1,43,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[582]= --Ngò §éc.
	{	---"Lam Y Y",739,341
			szNameDoPho = 
		{
			"§å phæ Hoµng Kim - U Lung Kim Xµ Ph¸t §¸i","§å phæ Hoµng Kim - U Lung XÝch HiÕt MËt Trang","§å phæ Hoµng Kim - U Lung Thanh Ng« TriÒn Yªu","§å phæ Hoµng Kim - U Lung Ng©n ThiÒm Hé UyÓn","§å phæ Hoµng Kim - U Lung MÆc Thï NhuyÔn Lý",
			"§å phæ Hoµng Kim - Minh ¶o Tµ S¸t §éc NhËn","§å phæ Hoµng Kim - Minh ¶o U Cæ ¸m Y","§å phæ Hoµng Kim - Minh ¶o Thanh HiÕt ChØ Hoµn","§å phæ Hoµng Kim - Minh ¶o Hñ Cèt Hé UyÓn","§å phæ Hoµng Kim - Minh Hoan Song Hoµn Xµ KhÊu",
			"§å phæ Hoµng Kim - Chó Ph­îc Ph¸ Gi¸p §Çu Hoµn","§å phæ Hoµng Kim - Chó Ph­îc DiÖt L«i C¶nh Phï ","§å phæ Hoµng Kim - Chó Ph­îc U ¶o ChØ Hoµn","§å phæ Hoµng Kim - Chó Ph­îc Xuyªn T©m §éc UyÓn","§å phæ Hoµng Kim - Chó Phäc Thùc Cèt Ngäc Béi",
		},
		tbPropDoPho = 
		{
			{6,1,294,1,0,0},{6,1,295,1,0,0},{6,1,296,1,0,0},{6,1,297,1,0,0},{6,1,298,1,0,0},
			{6,1,299,1,0,0},{6,1,300,1,0,0},{6,1,301,1,0,0},{6,1,302,1,0,0},{6,1,303,1,0,0},
			{6,1,304,1,0,0},{6,1,305,1,0,0},{6,1,306,1,0,0},{6,1,307,1,0,0},{6,1,308,1,0,0},
		},
		tbItemIDTime = {55,56,57,58,59,60,61,62,63,64,65,66,67,68,69},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Ngò §éc Ch­ëng Ph¸p","Ngò §éc §ao Ph¸p","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,47,1,0,0},{6,1,48,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[563]= --Thiªn NhÉn
	{	---"Gia LuËt TÞ Ly",739,341
		szNameDoPho = 
		{
			"§å phæ Hoµng Kim - Ma S¸t Quû Cèc U Minh Th­¬ng","§å phæ Hoµng Kim - Ma S¸t Tµn D­¬ng ¸nh HuyÕt Gi¸p","§å phæ Hoµng Kim - Ma S¸t XÝch Ký Táa Yªu KhÊu","§å phæ Hoµng Kim - Ma S¸t Cö Háa Liªu Thiªn Hoµn","§å phæ Hoµng Kim - Ma S¸t V©n Long Thæ Ch©u Giíi",
			"§å phæ Hoµng Kim - Ma ThÞ LiÖt DiÖm Qu¸n MiÖn","§å phæ Hoµng Kim - Ma ThÞ LÖ Ma PhÖ T©m §¸i","§å phæ Hoµng Kim - Ma ThÞ NghiÖp Háa U Minh Giíi","§å phæ Hoµng Kim - Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi","§å phæ Hoµng Kim - Ma ThÞ s¬n  H¶i Phi Hång Lý",
			"§å phæ Hoµng Kim - Ma Hoµng Kim Gi¸p Kh«i","§å phæ Hoµng Kim - Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn","§å phæ Hoµng Kim - Ma Hoµng Khª Cèc Thóc Yªu §¸i","§å phæ Hoµng Kim - Ma Hoµng HuyÕt Y Thó Tr¹c","§å phæ Hoµng Kim - Ma Hoµng Dung Kim §o¹n NhËt Giíi",
		},
		tbPropDoPho = 
		{
			{6,1,339,1,0,0},{6,1,340,1,0,0},{6,1,341,1,0,0},{6,1,342,1,0,0},{6,1,343,1,0,0},
			{6,1,344,1,0,0},{6,1,345,1,0,0},{6,1,346,1,0,0},{6,1,347,1,0,0},{6,1,348,1,0,0},
			{6,1,349,1,0,0},{6,1,350,1,0,0},{6,1,351,1,0,0},{6,1,352,1,0,0},{6,1,353,1,0,0},
		},
		tbItemIDTime = {100,101,102,103,104,105,106,107,108,109,110,111,112,113,114},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","V©n Long KÝch","L­u Tinh §ao Ph¸p","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,35,1,0,0},{6,1,36,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[562]= --Vâ §ang.
	{	---"§¹o Thanh Ch©n Nh©n",739,341
		szNameDoPho = 
		{
			"§å phæ hoµng kim - L¨ng Nh¹c Th¸i Cùc KiÕm","§å phæ Hoµng Kim - L¨ng Nh¹c V« Ng· Thóc §¸i","§å phæ hoµng kim - L¨ng Nh¹c Né L«i Ph¸p Giíi","§å phæ Hoµng Kim - L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi","§å phæ Hoµng Kim - L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",
			"§å phæ Hoµng Kim - CËp Phong Ch©n Vò KiÕm","§å phæ Hoµng Kim - CËp Phong Tam Thanh Phï ","§å phæ Hoµng Kim - CËp Phong HuyÒn Ti Tam §o¹n CÈm","§å phæ Hoµng Kim - CËp Phong Thóy NGäc HuyÒn Hoµng UyÓn","§å phæ Hoµng Kim - CËp Phong Thanh Tïng Ph¸p Giíi",
		},
		tbPropDoPho = 
		{
			{6,1,354,1,0,0},{6,1,355,1,0,0},{6,1,356,1,0,0},{6,1,357,1,0,0},{6,1,358,1,0,0},
			{6,1,359,1,0,0},{6,1,360,1,0,0},{6,1,361,1,0,0},{6,1,362,1,0,0},{6,1,363,1,0,0},
		},
		tbItemIDTime = {115,116,117,118,119,120,121,122,123,124},
		szName = {"Vâ L©m MËt TÞch","TÈy Tuû Kinh","Lam Thñy Tinh","Tö Thñy Tinh","Lôc Thñy Tinh","Tinh Hång B¶o Th¹ch","Tiªn Th¶o Lé","Th¸i Cùc QuyÒn Phæ QuyÓn 3","Th¸i Cùc KiÕm Phæ QuyÓn 2","Ngù Phong ThuËt","Ngù L«i ThuËt","Ngù T©m ThuËt","Gia bµo hoµn","§¹i lùc hoµn","Phi tèc hoµn","B¨ng phßng hoµn","L«i phßng hoµn","Ho¶ phßng hoµn","ThiÕt la h¸n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,33,1,0,0},{6,1,34,1,0,0},{6,1,50,1,0,0},{6,1,51,1,0,0},{6,1,52,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
}


BOSS_DEATH_SCRIPT = "\\script\\global\\pgaming\\missions\\bosshoangkim\\bossdai\\goldboss_death.lua";
TIME_BIGBOSS_REMOVE = 300*60*18;

BossDataSave = {};

function bigboss_toworld(nNumBoss)
	if not nNumBoss then 
		return 
	end
	
	local nTime = tonumber(GetLocalDate("%H"));
	for k=1,nNumBoss do 
		boss_pak = bigboss_getaboss();
		local nNpcIndex = AddNpcEx(unpack(boss_pak));
		SetNpcParam(nNpcIndex,1,boss_pak[1]); --l­u id boss.
		SetNpcDeathScript(nNpcIndex,BOSS_DEATH_SCRIPT);
		SetNpcTimer(nNpcIndex, TIME_BIGBOSS_REMOVE);
		local map_name = BossDataSave[nTime].record_boss[boss_pak[4] * 1000];
		local szMsg = format("Giang hå ®ån r»ng %s ®· xuÊt hiÖn ë %s ! Giang hå ¾t h¼n sÏ cã mét trËn ®Ém m¸u!",boss_pak[8],map_name);
		local szSub = format("<color=gold>%s<color> ®· xuÊt hiÖn t¹i map: <color=green>%s (%d,%d) <color>",boss_pak[8],map_name,floor((boss_pak[5]/32)/8),floor((boss_pak[6]/32)/16));
		AddGlobalNews(szMsg)
		Msg2SubWorld(szSub);
	end
end

function bigboss_remove()
	for k,v in BossDataSave do 
		BossDataSave[k] = nil;
	end
end

--create new boss table
function bigboss_newboss(nTime)
	if not BossDataSave[nTime] then 
		BossDataSave[nTime] = {record_boss = {},new_boss = {}};
	end
end


--t¹o 1 table boss.
function bigboss_getaboss()
	local ncount = getn(BIGBOSS_FILE_POS);
	local m_loop = 0;
	local szFile = "";
	local nTime = tonumber(GetLocalDate("%H"));
	
	local nTimeIndex = bigboss_newboss(nTime);
	if nTimeIndex == 0 then 
		print("BUG CREATE BIGBOSS_NEWBOSS FUNCTION");
		return 
	end
	
	local item = BossDataSave[nTime];
	
	--record_boss = {},new_boss = {}
	--lÊy to¹ ®é map boss, vµ map name.
	while (1) do 
		m_loop = m_loop + 1;
		if m_loop == 1000 then break end;
		local nRFile = random(1,ncount);
		if not item.record_boss[nRFile*10] then 
			item.record_boss[nRFile*10] = nRFile;
			szFile =  BIGBOSS_FILE_POS[nRFile];
			break;
		end
	end
	
	local nMapBoss,nXBoss,nYBoss,zMapName = _getadata(szFile);
	m_loop = 0;
	
	--print(nMapBoss,nXBoss,nYBoss,zMapName,SubWorldID2Idx(nMapBoss)*1000,"show info case");
	--l­u map name.
	if not item.record_boss[SubWorldID2Idx(nMapBoss) * 1000]  then 
		item.record_boss[SubWorldID2Idx(nMapBoss) * 1000] = zMapName;
	end
	
	local boss_info = {};
	---lÊy boss info id tªn ..
	while (1) do 
		m_loop = m_loop + 1;
		if m_loop == 1000 then break end;
		local nRBoss = random(1,getn(BIGBOSS_SERVER_INFO));
		
		if not item.new_boss[nRBoss*10] then 
			item.new_boss[nRBoss*10] = nRBoss;
			boss_info = BIGBOSS_SERVER_INFO[nRBoss];
			break;
		end
	end
	--	[1]={	szName = "HuyÒn Gi¸c §¹i S­",		nBossId = 740,	nRate = 322,	nSeries = 0,	nLevel = 95},

	local nBossID,nBossLevel,nBossSeries,szBossName = boss_info.nBossId,boss_info.nLevel,boss_info.nSeries,boss_info.szName;
	return {nBossID,nBossLevel,nBossSeries,SubWorldID2Idx(tonumber(nMapBoss)),tonumber(nXBoss)*32,tonumber(nYBoss)*32,1,szBossName,1};
end

--/**VINA-GAME**/
function _getadata(file)
	local totalcount = _GetTabFileHeight(file) - 1;
	id = random(totalcount);
	w = _GetTabFileData(file,id + 1,1);
	x = _GetTabFileData(file, id + 1, 2);
	y = _GetTabFileData(file, id + 1, 3);
	z = _GetTabFileData(file, id + 1, 4);
	print(y,z,"get data");
	return w,x,y,z;
end

function _GetIniFileData(mapfile, sect, key)
	if (IniFile_Load(mapfile, mapfile) == 0) then 
		print("Load IniFile Error!"..mapfile)
		return ""
	else
		return IniFile_GetData(mapfile, sect, key)	
	end
end

function _GetTabFileHeight(mapfile)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFileError!"..mapfile);
		return 0
	end
	return TabFile_GetRowCount(mapfile)
end;

function _GetTabFileData(mapfile, row, col)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFile Error!"..mapfile)
		return 0
	else
		if type( tonumber(TabFile_GetCell(mapfile, row, col)) ) == "number" then --number
			return tonumber(TabFile_GetCell(mapfile, row, col));
		else --string 
			return TabFile_GetCell(mapfile, row, col);
		end
	end
end
