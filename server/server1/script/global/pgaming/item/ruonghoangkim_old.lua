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

local tbNewItemAwardMP = 
{
	[4879]={	
		{szName="H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",tbProp={0,16},nCount=1,nQuality = 1,nRate=6.25},
		{szName="H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p",tbProp={0,17},nCount=1,nQuality = 1,nRate=6.25},
		{szName="KÕ NghiÖp B«n L«i Toµn Long th­¬ng",tbProp={0,21},nCount=1,nQuality = 1,nRate=6.25},
		{szName="KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",tbProp={0,22},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ngù Long L­îng Ng©n B¶o ®ao",tbProp={0,26},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",tbProp={0,27},nCount=1,nQuality = 1,nRate=6.25},
		{szName="H¸m Thiªn Uy Vò Thóc yªu ®¸i",tbProp={0,18},nCount=1,nQuality = 1,nRate=6.25},
		{szName="KÕ NghiÖp B¹ch Hæ V« Song khÊu",tbProp={0,23},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ngù Long Thiªn M«n Thóc Yªu hoµn",tbProp={0,28},nCount=1,nQuality = 1,nRate=6.25},
		{szName="H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn",tbProp={0,19},nCount=1,nQuality = 1,nRate=6.25},
		{szName="KÕ NghiÖp HáaV©n Kú L©n Thñ ",tbProp={0,24},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ngù Long TÊn Phong Hé yÓn",tbProp={0,29},nCount=1,nQuality = 1,nRate=6.25},
		{szName="H¸m Thiªn Thõa Long ChiÕn Ngoa",tbProp={0,20},nCount=1,nQuality = 1,nRate=6.25},
		{szName="KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",tbProp={0,25},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ngù Long TuyÖt MÖnh ChØ hoµn",tbProp={0,30},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ngù Long TÊn Phong Ph¸t C¬",tbProp={0,793},nCount=1,nQuality = 1,nRate=6.25},
	},
	[4880]={	
		{szName="U Lung XÝch YÕt MËt trang",tbProp={0,57},nCount=1,nQuality = 1,nRate=4},
		{szName="Minh ¶o Tµ S¸t §éc NhËn",tbProp={0,61},nCount=1,nQuality = 1,nRate=4},
		{szName="Chó Ph­îc Ph¸ gi¸p ®Çu hoµn",tbProp={0,66},nCount=1,nQuality = 1,nRate=4},
		{szName="U Lung Kim Xµ Ph¸t ®¸i",tbProp={0,56},nCount=1,nQuality = 1,nRate=3.14},
		{szName="Minh ¶o U §éc ¸m Y",tbProp={0,62},nCount=1,nQuality = 1,nRate=3.14},
		{szName="Chó Ph­îc DiÖt L«i C¶nh Phï ",tbProp={0,67},nCount=1,nQuality = 1,nRate=3.14},
		{szName="U Lung Thanh Ng« TriÒn yªu",tbProp={0,58},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Minh ¶o §éc YÕt ChØ Hoµn",tbProp={0,63},nCount=1,	nQuality = 1,nRate=7.14},
		{szName="Chó Ph­îc U ¶o ChØ Hoµn",tbProp={0,68},nCount=1,nQuality = 1,nRate=7.14},
		{szName="U Lung Ng©n ThÒm Hé UyÓn",tbProp={0,59},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Minh ¶o Hñ Cèt Hé uyÓn",tbProp={0,64},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Chó Ph­îc Xuyªn T©m §éc UyÓn",tbProp={0,69},nCount=1,nQuality = 1,nRate=7.14},
		{szName="U Lung MÆc Thï NhuyÔn Lý ",tbProp={0,60},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Minh ¶o Song Hoµn Xµ Hµi",tbProp={0,65},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",tbProp={0,70},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Minh Hoan Song Hoµn Xµ KhÊu",tbProp={0,829},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Chó Phäc Trïng Cèt Ngäc Béi",tbProp={0,834},nCount=1,nQuality = 1,nRate=7.14},
	},
	[4881]={	
		{szName="Tª Hoµng Phông Nghi ®ao",tbProp={0,46},nCount=1,nQuality = 1,nRate=5},
		{szName="Tª Hoµng TuÖ T©m Khinh Sa Y",tbProp={0,47},nCount=1,nQuality = 1,nRate=5},
		{szName="BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao",tbProp={0,51},nCount=1,nQuality = 1,nRate=5},
		{szName="BÝch H¶i Hoµn Ch©u Vò Liªn",tbProp={0,52},nCount=1,nQuality = 1,nRate=5},	
		{szName="Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",tbProp={0,48},nCount=1,nQuality = 1,nRate=7.5},
		{szName="BÝch H¶i Hång Linh Kim Ti ®¸i",tbProp={0,53},nCount=1,nQuality = 1,nRate=7.5},
		{szName="Tª Hoµng B¨ng Tung CÈm uyÓn",tbProp={0,49},nCount=1,nQuality = 1,nRate=7.5},
		{szName="BÝch H¶i Hång L¨ng Ba",tbProp={0,54},nCount=1,nQuality = 1,nRate=12.5},
		{szName="Tª Hoµng Thóy Ngäc ChØ Hoµn",tbProp={0,50},nCount=1,nQuality = 1,nRate=7.5},
		{szName="BÝch H¶i Khiªn TÕ ChØ hoµn",tbProp={0,55},nCount=1,nQuality = 1,nRate=12.5},
		{szName="Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu",tbProp={0,811},nCount=1,nQuality = 1,nRate=12.5},
		{szName="BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n",tbProp={0,816},nCount=1,nQuality = 1,nRate=12.5},
	},
	[4882]={	
		{szName="S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",tbProp={0,126},nCount=1,nQuality = 1,nRate=4},
		{szName="S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo",tbProp={0,127},nCount=1,nQuality = 1,nRate=4},
		{szName="L«i Khung Hµn Tung B¨ng B¹ch quan",tbProp={0,131},nCount=1,nQuality = 1,nRate=4},
		{szName="L«i Khung Thiªn §Þa Hé phï ",tbProp={0,132},nCount=1,nQuality = 1,nRate=4},		
		{szName="Vô ¶o Ki B¸n phï chó ",tbProp={0,137},nCount=1,nQuality = 1,nRate=4},
		{szName="S­¬ng Tinh Thanh Phong Lò ®¸i",tbProp={0,128},nCount=1,nQuality = 1,nRate=3.7},
		{szName="L«i Khung Phong L«i Thanh CÈm ®¸i",tbProp={0,133},nCount=1,nQuality = 1,nRate=3.7},
		{szName="Vô ¶o B¾c Minh §¹o qu¸n",tbProp={0,136},nCount=1,nQuality = 1,nRate=3.7},
		{szName="S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ",tbProp={0,129},nCount=1,nQuality = 1,nRate=3.7},
		{szName="L«i Khung Linh Ngäc UÈn L«i",tbProp={0,134},nCount=1,nQuality = 1,nRate=3.7},
		{szName="Vô ¶o Thóc T©m chØ hoµn",tbProp={0,138},nCount=1,nQuality = 1,nRate=7.7},
		{szName="S­¬ng Tinh Phong B¹o chØ hoµn",tbProp={0,130},nCount=1,nQuality = 1,nRate=7.7},
		{szName="L«i Khung Cöu Thiªn DÉn L«i giíi",tbProp={0,135},nCount=1,nQuality = 1,nRate=7.7},
		{szName="Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",tbProp={0,139},nCount=1,nQuality = 1,nRate=7.7},
		{szName="S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu",tbProp={0,891},nCount=1,nQuality = 1,nRate=7.7},
		{szName="L«i Khung Linh Ngäc Èn L«i UyÓn",tbProp={0,898},nCount=1,nQuality = 1,nRate=7.7},
		{szName="Vô ¶o Tung Phong TuyÕt ¶nh ngoa",tbProp={0,140},nCount=1,nQuality = 1,nRate=7.7},
		{szName="Vô Hoan Th¸i Uyªn Ch©n Vò Liªn",tbProp={0,901},nCount=1,nQuality = 1,nRate=7.7},
	},
	[4883]={	
		{szName="Ma S¸t Quû Cèc U Minh Th­¬ng",tbProp={0,101},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={0,102},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma Hoµng Kim Gi¸p Kh«i",tbProp={0,106},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",tbProp={0,107},nCount=1,nQuality = 1,nRate=4},		
		{szName="Ma ThÞ LiÖt DiÖm Qu¸n MiÖn",tbProp={0,111},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma ThÞ LÖ Ma PhÖ T©m Liªn",tbProp={0,112},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma S¸t XÝch Ký Táa Yªu KhÊu",tbProp={0,103},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma Hoµng Khª Cèc Thóc yªu ®¸i",tbProp={0,108},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma ThÞ NghiÖp Háa U Minh Giíi",tbProp={0,113},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma S¸t Cö Háa Liªu Thiªn uyÓn",tbProp={0,104},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma Hoµng HuyÕt Y Thó Tr¹c",tbProp={0,109},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={0,114},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma S¸t V©n Long Thæ Ch©u giíi",tbProp={0,105},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma Hoµng §¨ng §¹p Ngoa",tbProp={0,110},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma ThÞ s¬n  H¶i Phi Hång Lý ",tbProp={0,115},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma S¸t Cö Háa Liªu Thiªn Hoµn",tbProp={0,868},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma Hoµng Dung Kim §o¹n NhËt Giíi",tbProp={0,874},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma ThÞ LÖ Ma PhÖ T©m §¸i",tbProp={0,876},nCount=1,nQuality = 1,nRate=8.34},
	},
	[4884]={	
		{szName="Méng Long ChÝnh Hång T¨ng M·o",tbProp={0,1},nCount=1,nQuality = 1,nRate=4},
		{szName="Méng Long Kim Ti ChÝnh Hång Cµ Sa",tbProp={0,2},nCount=1,nQuality = 1,nRate=4},
		{szName="Phôc Ma Tö Kim C«n",tbProp={0,6},nCount=1,nQuality = 1,nRate=4},
		{szName="Phôc Ma HuyÒn Hoµng Cµ Sa",tbProp={0,7},nCount=1,nQuality = 1,nRate=4},	
		{szName="Tø Kh«ng Gi¸ng Ma Giíi ®ao",tbProp={0,11},nCount=1,nQuality = 1,nRate=4},
		{szName="Tø Kh«ng Tö Kim Cµ Sa",tbProp={0,12},nCount=1,nQuality = 1,nRate=4},
		{szName="Méng Long HuyÒn Ti Ph¸t ®¸i",tbProp={0,3},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Phôc Ma ¤ Kim NhuyÔn §iÒu",tbProp={0,8},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Tø Kh«ng Hé ph¸p Yªu ®¸i",tbProp={0,13},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Méng Long PhËt Ph¸p HuyÒn Béi",tbProp={0,4},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Phôc Ma PhËt T©m NhuyÔn KhÊu",tbProp={0,9},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Tø Kh«ng NhuyÔn B× Hé UyÓn",tbProp={0,14},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Méng Long §¹t Ma T¨ng hµi",tbProp={0,5},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Phôc Ma Phæ §é T¨ng hµi",tbProp={0,10},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Tø Kh«ng §¹t Ma T¨ng Hµi",tbProp={0,776},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Méng Long Tö Kim B¸t Nh· Giíi",tbProp={0,769},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Phôc Ma V« L­îng Kim Cang UyÓn",tbProp={0,771},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Tø Kh«ng Giíi LuËt Ph¸p giíi",tbProp={0,15},nCount=1,nQuality = 1,nRate=8.34},
	},
	[4885]={	
		{szName="B¨ng Hµn §¬n ChØ Phi §ao",tbProp={0,71},nCount=1,nQuality = 1,nRate=3},
		{szName="Thiªn Quang Hoa Vò M¹n Thiªn",tbProp={0,76},nCount=1,nQuality = 1,nRate=3},
		{szName="Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ",tbProp={0,77},nCount=1,nQuality = 1,nRate=3},	
		{szName="S©m Hoang Phi Tinh §o¹t Hån",tbProp={0,81},nCount=1,nQuality = 1,nRate=3},
		{szName="§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",tbProp={0,86},nCount=1,nQuality = 1,nRate=3},
		{szName="§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",tbProp={0,87},nCount=1,nQuality = 1,nRate=3},
		{szName="B¨ng Hµn HuyÒn Y Thóc Gi¸p",tbProp={0,72},nCount=1,nQuality = 1,nRate=3.25},
		{szName="B¨ng Hµn T©m TiÔn Yªu KhÊu",tbProp={0,73},nCount=1,nQuality = 1,nRate=3.25},
		{szName="Thiªn Quang S©m La Thóc §¸i",tbProp={0,78},nCount=1,nQuality = 1,nRate=3.25},
		{szName="Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",tbProp={0,79},nCount=1,nQuality = 1,nRate=3.25},
		{szName="§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",tbProp={0,88},nCount=1,nQuality = 1,nRate=3.25},
		{szName="§Þa Ph¸ch KhÊu T©m tr¹c",tbProp={0,89},nCount=1,nQuality = 1,nRate=3.25},
		{szName="S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi",tbProp={0,84},nCount=1,nQuality = 1,nRate=6.25},
		{szName="S©m Hoang Tinh VÉn Phi Lý ",tbProp={0,85},nCount=1,nQuality = 1,nRate=6.25},
		{szName="B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",tbProp={0,74},nCount=1,nQuality = 1,nRate=6.25},
		{szName="B¨ng Hµn NguyÖt ¶nh Ngoa",tbProp={0,75},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",tbProp={0,80},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Thiªn Quang §Þa Hµnh Thiªn Lý  Ngoa",tbProp={0,843},nCount=1,nQuality = 1,nRate=6.25},
		{szName="S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",tbProp={0,82},nCount=1,nQuality = 1,nRate=6.25},
		{szName="S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={0,83},nCount=1,nQuality = 1,nRate=6.25},
		{szName="§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",tbProp={0,90},nCount=1,nQuality = 1,nRate=6.25},
		{szName="§Þa Ph¸ch Phong Hµn Thóc Yªu",tbProp={0,854},nCount=1,nQuality = 1,nRate=6.25},	
	},
	[4886]={	
		{szName="V« Gian û Thiªn KiÕm",tbProp={0,31},nCount=1,nQuality = 1,nRate=4},
		{szName="V« Gian Thanh Phong Truy Y",tbProp={0,32},nCount=1,nQuality = 1,nRate=4},
		{szName="V« Ma Ma Ni qu¸n",tbProp={0,36},nCount=1,nQuality = 1,nRate=4},
		{szName="V« Ma Tö Kh©m Cµ Sa",tbProp={0,37},nCount=1,nQuality = 1,nRate=4},		
		{szName="V« TrÇn Ngäc N÷ Tè T©m qu¸n",tbProp={0,41},nCount=1,nQuality = 1,nRate=4},
		{szName="V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",tbProp={0,42},nCount=1,nQuality = 1,nRate=4},
		{szName="V« Gian PhÊt V©n Ti ®¸i",tbProp={0,33},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V« Ma B¨ng Tinh ChØ Hoµn",tbProp={0,38},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V« TrÇn Tõ Bi Ngäc Ban ChØ ",tbProp={0,43},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V« Gian CÇm VËn Hé UyÓn",tbProp={0,34},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V« Ma TÈy T­îng Ngäc KhÊu ",tbProp={0,39},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V« TrÇn PhËt Quang ChØ Hoµn",tbProp={0,45},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V« Gian B¹ch Ngäc Bµn ChØ ",tbProp={0,35},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V« Ma Hång Truy NhuyÔn Th¸p hµi",tbProp={0,40},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V« TrÇn TÞnh ¶nh L­u T«",tbProp={0,808},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V« Gian Thanh Phong NhuyÔn KÞch",tbProp={0,796},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V« YÓm Thu Thñy L­u Quang §¸i",tbProp={0,801},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi",tbProp={0,44},nCount=1,nQuality = 1,nRate=8.34},
	},
	[4887]={	
		{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,116},nCount=1,nQuality = 1,nRate=6},
		{szName="L¨ng Nh¹c V« Ng· ®¹o bµo",tbProp={0,117},nCount=1,nQuality = 1,nRate=6},
		{szName="CËp Phong Ch©n Vò KiÕm",tbProp={0,121},nCount=1,nQuality = 1,nRate=6},
		{szName="CËp Phong Tam Thanh Phï ",tbProp={0,122},nCount=1,nQuality = 1,nRate=6},	
		{szName="L¨ng Nh¹c Né L«i Giíi",tbProp={0,118},nCount=1,nQuality = 1,nRate=6.5},
		{szName="CËp Phong HuyÒn Ti Tam §o¹n cÈm",tbProp={0,123},nCount=1,nQuality = 1,nRate=6.5},
		{szName="L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",tbProp={0,119},nCount=1,nQuality = 1,nRate=6.5},	
		{szName="CËp Phong Thanh Tïng Ph¸p giíi",tbProp={0,125},nCount=1,nQuality = 1,nRate=6.5},
		{szName="L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",tbProp={0,120},nCount=1,nQuality = 1,nRate=12.5},
		{szName="CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",tbProp={0,124},nCount=1,nQuality = 1,nRate=12.5},
		{szName="L¨ng Nh¹c V« Ng· Thóc §¸i",tbProp={0,881},nCount=1,nQuality = 1,nRate=12.5},
		{szName="CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn",tbProp={0,888},nCount=1,nQuality = 1,nRate=12.5},
	},
	[4888]={	
		{szName="§ång Cõu Phi Long §Çu hoµn",tbProp={0,91},nCount=1,nQuality = 1,nRate=6},
		{szName="§ång Cõu Gi¸ng Long C¸i Y",tbProp={0,92},nCount=1,nQuality = 1,nRate=6},
		{szName="§Þch Kh¸i Lôc Ngäc Tr­îng",tbProp={0,96},nCount=1,nQuality = 1,nRate=6},		
		{szName="§ång Cõu TiÒm Long Yªu §¸i",tbProp={0,93},nCount=1,nQuality = 1,nRate=6.5},
		{szName="§Þch Kh¸i Cöu §¹i C¸i Y",tbProp={0,97},nCount=1,nQuality = 1,nRate=6.5},
		{szName="§ång Cõu Kh¸ng Long Hé UyÓn",tbProp={0,94},nCount=1,nQuality = 1,nRate=6.5},
		{szName="§ång Cõu Ngù Long Ngäc Béi",tbProp={0,855},nCount=1,nQuality = 1,nRate=12.5},
		{szName="§ång Cõu KiÕn Long Ban ChØ ",tbProp={0,95},nCount=1,nQuality = 1,nRate=12.5},
		{szName="§Þch Kh¸i TriÒn M·ng yªu ®¸i",tbProp={0,98},nCount=1,nQuality = 1,nRate=12.5},
		{szName="§Þch Kh¸i CÈu TÝch B× Hé uyÓn",tbProp={0,98},nCount=1,nQuality = 1,nRate=12.5},
		{szName="§Þch Kh¸i Th¶o Gian Th¹ch giíi",tbProp={0,100},nCount=1,nQuality = 1,nRate=12.5},
	},
}

local _GetFruit = function(nItemIndex,P)
	if ConsumeItem(3, 1, 6, 1, 4889, -1) ~= 1 then
		Talk(1, "", "CÇn <color=green>Ch×a Khãa Hoµng Kim<color> míi më ®­îc <color=yellow>R­¬ng Hoµng Kim<color>");
		return
    	end

	RemoveItemByIndex(nItemIndex)

	local tbTranslog = {strFolder ="item/", nPromID = 19, nResult = 1}
	tbAwardTemplet:Give(%tbNewItemAwardMP[P], 1,{"TinhNang_RuongHoangKimMonPhai", "SuDungRuongHoangKimMonPhai", tbTranslog})
	local msg = format("Chóc mõng <color=green>%s<color=pink> më r­¬ng <color=yellow>B¶o r­¬ng Hoµng Kim <color> nhËn ®­îc  <color=yellow>%s<color>",GetName(),GetItemName(nItemIndex))
	Msg2SubWorld(msg);
	AddGlobalNews(msg)
end
local _OnBreak = function()
	Msg2Player("Më r­¬ng gi¸n ®o¹n!")
end
function main(nItemIndex)
	dofile("script/global/pgaming/item/ruonghoangkim.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("VËt phÈm ®· qu¸ h¹n sö dông")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	
	if (G ~= 6) then
		return 1;
	end

	if (0 == nPlayerfaction ) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ më r­¬ng.")
		return
	end

	if CalcFreeItemCellCount() < 40 then
		Talk(1, "", "Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 40 « trë lªn nhÐ.");
		return 1;
	end
	if P >= 4879 and P <= 4888 then
		local nCount = CalcItemCount(3, 6, 1, 4889, -1)
		if nCount >= 1 then
			tbProgressBar:OpenByConfig(11, %_GetFruit,{nItemIndex,P}, %_OnBreak)
		else
			Talk(1, "", "CÇn <color=green>Ch×a Khãa Hoµng Kim<color> míi më ®­îc <color=yellow>B¶o R­¬ng Hoµng Kim M«n Ph¸i<color>");
			return 1;
		end
	end
	
	return 1;
end