Include("\\script\\global\\pgaming\\missions\\bosshoangkim\\bossdai\\lib\\serverlib.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
BIGBOSS_SERVER_INFO  = 
{ --t�n boss,id boss, t� l� r�i ��,series boss,nLevel
	[1]={	szName = "Huy�n Gi�c ��i S�",		nBossId = 740,	nRate = 322,	nSeries = 0,	nLevel = 95},
	[2]={	szName = "���ng B�t Nhi�m",			nBossId = 741,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[3]={	szName = "B�ch Doanh Doanh",		nBossId = 742,	nRate = 336,	nSeries = 1,	nLevel = 95},
	[4]={	szName = "Thanh Tuy�t S� Th�i",		nBossId = 743,	nRate = 341,	nSeries = 2,	nLevel = 95},
	[5]={	szName = "Y�n Hi�u Tr�i",			nBossId = 744,	nRate = 336,	nSeries = 2,	nLevel = 95},
	[6]={	szName = "H� Nh�n Ng�",				nBossId = 745,	nRate = 321,	nSeries = 3,	nLevel = 95},
	[7]={	szName = "T� ��i Nh�c",				nBossId = 1367,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[8]={	szName = "Tuy�n C� T�",				nBossId = 747,	nRate = 341,	nSeries = 4,	nLevel = 95},
	[9]={	szName = "Thanh Li�n T�",			nBossId = 1368,	nRate = 200,	nSeries = 4,	nLevel = 95},
	[10]={	szName = "�o�n M�c Du�",			nBossId = 565,	nRate = 227,	nSeries = 3,	nLevel = 95},
	[11]={	szName = "C� B�ch",					nBossId = 566,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[12]={	szName = "���ng Phi Y�n",			nBossId = 1366,	nRate = 200,	nSeries = 1,	nLevel = 95},	
	[13]={	szName = "H� Linh Phi�u",			nBossId = 568,	nRate = 200,	nSeries = 2,	nLevel = 95},
	[14]={	szName = "Lam Y Y",					nBossId = 582,	nRate = 200,	nSeries = 1,	nLevel = 95},
	[15]={	szName = "M�nh Th��ng L��ng",		nBossId = 583,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[16]={	szName = "Gia Lu�t T� Ly",			nBossId = 563,	nRate = 200,	nSeries = 3,	nLevel = 95},
	[17]={	szName = "��o Thanh Ch�n Nh�n",		nBossId = 562,	nRate = 200,	nSeries = 4,	nLevel = 95},
	[18]={	szName = "V��ng T�",				nBossId = 739,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[19]={	szName = "Huy�n Nan ��i S�",		nBossId = 1365,	nRate = 200,	nSeries = 0,	nLevel = 95},
	[20]={	szName = "Chung Linh T�",			nBossId = 567,	nRate = 200,	nSeries = 2,	nLevel = 95},
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
	[739]= --Thi�n v��ng.
	{	---"V��ng T�",739,341
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y","�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p","�� ph� Ho�ng Kim - H�m Thi�n Uy V� Th�c Y�u ��i","�� ph� Ho�ng Kim - H�m Thi�n H� ��u Kh�n Th�c Uy�n","�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa",
			"�� ph� Ho�ng Kim - K� Nghi�p B�n L�i To�n Long Th��ng","�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i","�� ph� Ho�ng Kim - K� Nghi�p B�ch H� V� Song Kh�u","�� ph� Ho�ng Kim - K� Nghi�p H�a V�n K� L�n th� ","�� ph� Ho�ng Kim - K� Nghi�p Chu T��c L�ng V�n Ngoa",
			"�� ph� Ho�ng Kim - Ng� Long L��ng Ng�n B�o �ao","�� ph� ho�ng kim - Ng� Long Chi�n Th�n Qua Tr�y","�� ph� Ho�ng Kim - Ng� Long Thi�n M�n Th�c Y�u Ho�n","�� ph� Ho�ng Kim - Ng� Long T�n Phong Ph�t C�","�� ph� Ho�ng Kim - Ng� Long Tuy�t M�nh Ch� Ho�n",
		},
		tbPropDoPho = 
		{
			{6,1,254,1,0,0},{6,1,255,1,0,0},{6,1,256,1,0,0},{6,1,257,1,0,0},{6,1,258,1,0,0},
			{6,1,259,1,0,0},{6,1,260,1,0,0},{6,1,261,1,0,0},{6,1,262,1,0,0},{6,1,263,1,0,0},
			{6,1,264,1,0,0},{6,1,265,1,0,0},{6,1,266,1,0,0},{6,1,267,1,0,0},{6,1,268,1,0,0},
		},
		tbItemIDTime = {15,16,17,18,19,20,21,22,23,24,25,26,27,28,29},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Thi�n V��ng Ch�y Ph�p. Quy�n 1","Thi�n V��ng Th��ng Ph�p. Quy�n 2","Thi�n V��ng �ao Ph�p","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,37,1,0,0},{6,1,38,1,0,0},{6,1,39,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[740]= ---thi�u l�m.
	{--"Huy�n Gi�c ��i S�",740,322
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - M�ng Long Ch�nh Ho�ng T�ng M�o","�� ph� Ho�ng Kim - M�ng Long Kim Ti Ch�nh H�ng C� Sa","�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�p ��i","�� ph� Ho�ng Kim - M�ng Long Ph�t Ph�p Huy�n B�i","�� ph� Ho�ng Kim - M�ng Long T� Kim B�t Nh� Gi�i",
			"�� ph� Ho�ng Kim - Ph�c Ma T� Kim C�n","�� ph� Ho�ng Kim - Ph�c Ma V� L��ng Kim Cang Uy�n","�� ph� Ho�ng Kim - Ph�c Ma � Kim Nhuy�n �i�u","�� ph� Ho�ng Kim - Ph�c Ma Ph�t T�m Nhuy�n Kh�u","�� ph� Ho�ng Kim - Ph�c Ma Ph� �� T�ng H�i",
			"�� ph� Ho�ng Kim - T� Kh�ng Gi�ng Ma Gi�i �ao","�� ph� Ho�ng Kim - T� Kh�ng ��t Ma T�ng H�i","�� ph� Ho�ng Kim - T� Kh�ng H� Ph�p Y�u ��i","�� ph� Ho�ng Kim - T� Kh�ng Nhuy�n B� H� Uy�n","�� ph� Ho�ng Kim - T� Kh�ng Gi�i Lu�t Ph�p Gi�i",
		},
		tbPropDoPho = 
		{
			{6,1,239,1,0,0},{6,1,240,1,0,0},{6,1,241,1,0,0},{6,1,242,1,0,0},{6,1,243,1,0,0},
			{6,1,244,1,0,0},{6,1,245,1,0,0},{6,1,246,1,0,0},{6,1,247,1,0,0},{6,1,248,1,0,0},
			{6,1,249,1,0,0},{6,1,250,1,0,0},{6,1,251,1,0,0},{6,1,252,1,0,0},{6,1,253,1,0,0},
		},
		tbItemIDTime = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Thi�u L�m Quy�n Ph�p. Quy�n 1","Thi�u L�m C�n Ph�p. Quy�n 2","Thi�u L�m �ao Ph�p. Quy�n 3","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,56,1,0,0},{6,1,57,1,0,0},{6,1,58,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[741]= ---���ng m�n.
	{ --"���ng B�t Nhi�m",741,336
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - B�ng H�n ��n Ch� Phi �ao","�� ph� Ho�ng Kim - B�ng H�n Huy�n Y Th�c Gi�p","�� ph� Ho�ng Kim - B�ng H�n T�m Ti�n Y�u Kh�u","�� ph� Ho�ng Kim - B�ng H�n Huy�n Thi�n B�ng H�a B�i","�� ph� Ho�ng Kim - B�ng H�n Nguy�t �nh Ngoa",
			"�� ph� Ho�ng Kim - Thi�n Quang Hoa V� M�n Thi�n","�� ph� Ho�ng Kim - Thi�n Quang ��nh T�m Ng�ng Th�n ph� ","�� ph� Ho�ng Kim - Thi�n Quang S�m La Th�c Y�u","�� ph� Ho�ng Kim - Thi�n Quang ��a H�nh Thi�n L� Ngoa","�� ph� Ho�ng Kim - Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",
			"�� ph� Ho�ng Kim - S�m Hoang Phi Tinh �o�t H�n","�� ph� Ho�ng Kim - S�m Hoang Kim Ti�n Li�n Ho�n Gi�p","�� ph� Ho�ng Kim - S�m Hoang H�n Gi�o Y�u Th�c","�� ph� Ho�ng Kim - S�m Hoang Huy�n Thi�t T��ng Ng�c B�i","�� ph� Ho�ng Kim - S�m Hoang Tinh V�n Phi L� ",
			"�� ph� Ho�ng Kim - ��a Ph�ch Ng� H�nh Li�n Ho�n Qu�n","�� ph� Ho�ng Kim - ��a Ph�ch H�c Di�m Xung Thi�n Li�n","�� ph� Ho�ng Kim - ��a Ph�ch T�ch L�ch L�i H�a Gi�i","�� ph� Ho�ng Kim - ��a Ph�ch Kh�u T�m Tr�c","�� ph� Ho�ng Kim - ��a Ph�ch Phong H�n Th�c Y�u",
		},
		tbPropDoPho = 
		{
			{6,1,309,1,0,0},{6,1,310,1,0,0},{6,1,311,1,0,0},{6,1,312,1,0,0},{6,1,313,1,0,0},
			{6,1,314,1,0,0},{6,1,315,1,0,0},{6,1,316,1,0,0},{6,1,317,1,0,0},{6,1,318,1,0,0},
			{6,1,319,1,0,0},{6,1,320,1,0,0},{6,1,321,1,0,0},{6,1,322,1,0,0},{6,1,323,1,0,0},
			{6,1,324,1,0,0},{6,1,325,1,0,0},{6,1,326,1,0,0},{6,1,327,1,0,0},{6,1,328,1,0,0},
		},
		tbItemIDTime = {70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","B�o V� L� Hoa","Lo�n Ho�n K�ch","Nhi�p H�n Nguy�t Anh","C�u Cung Phi Tinh","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,27,1,0,0},{6,1,28,1,0,0},{6,1,45,1,0,0},{6,1,46,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[742]= --ng� ��c.
	{---"B�ch Doanh Doanh",742,336
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - U Lung Kim X� Ph�t ��i","�� ph� Ho�ng Kim - U Lung X�ch Hi�t M�t Trang","�� ph� Ho�ng Kim - U Lung Thanh Ng� Tri�n Y�u","�� ph� Ho�ng Kim - U Lung Ng�n Thi�m H� Uy�n","�� ph� Ho�ng Kim - U Lung M�c Th� Nhuy�n L�",
			"�� ph� Ho�ng Kim - Minh �o T� S�t ��c Nh�n","�� ph� Ho�ng Kim - Minh �o U C� �m Y","�� ph� Ho�ng Kim - Minh �o Thanh Hi�t Ch� Ho�n","�� ph� Ho�ng Kim - Minh �o H� C�t H� Uy�n","�� ph� Ho�ng Kim - Minh Hoan Song Ho�n X� Kh�u",
			"�� ph� Ho�ng Kim - Ch� Ph��c Ph� Gi�p ��u Ho�n","�� ph� Ho�ng Kim - Ch� Ph��c Di�t L�i C�nh Ph� ","�� ph� Ho�ng Kim - Ch� Ph��c U �o Ch� Ho�n","�� ph� Ho�ng Kim - Ch� Ph��c Xuy�n T�m ��c Uy�n","�� ph� Ho�ng Kim - Ch� Ph�c Th�c C�t Ng�c B�i",
		},
		tbPropDoPho = 
		{
			{6,1,294,1,0,0},{6,1,295,1,0,0},{6,1,296,1,0,0},{6,1,297,1,0,0},{6,1,298,1,0,0},
			{6,1,299,1,0,0},{6,1,300,1,0,0},{6,1,301,1,0,0},{6,1,302,1,0,0},{6,1,303,1,0,0},
			{6,1,304,1,0,0},{6,1,305,1,0,0},{6,1,306,1,0,0},{6,1,307,1,0,0},{6,1,308,1,0,0},
		},
		tbItemIDTime = {55,56,57,58,59,60,61,62,63,64,65,66,67,68,69},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Ng� ��c Ch��ng Ph�p","Ng� ��c �ao Ph�p","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,47,1,0,0},{6,1,48,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[743]= --nga my.
	{---"Thanh Tuy�t S� Th�i",743,341
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - V� Gian � Thi�n Ki�m","�� ph� Ho�ng Kim - V� gian Thanh phong nhuy�n l�","�� ph� Ho�ng Kim - V� Gian Ph�t V�n Ti ��i","�� ph� Ho�ng Kim - V� Gian C�m V�n H� Uy�n","�� ph� Ho�ng Kim - V� Gian B�ch Ng�c B�n Ch� ",
			"�� ph� Ho�ng Kim - V� Ma Ma Ni Qu�n","�� ph� Ho�ng Kim - V� ma thu th�y l�u quang �ai","�� ph� Ho�ng Kim - V� Ma B�ng Tinh Ch� Ho�n","�� ph� Ho�ng Kim - V� Ma T�y T��ng Ng�c Kh�u",
			"�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m Qu�n","�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u","�� ph� Ho�ng Kim - V� Tr�n T� Bi Ng�c B�n Ch�","�� ph� Ho�ng Kim - V� Tr�n T�nh �nh L�u T�","�� ph� ho�ng kim - V� Tr�n Ph�t Quang Ch� Ho�n",
		},
		tbPropDoPho = 
		{
			{6,1,269,1,0,0},{6,1,270,1,0,0},{6,1,271,1,0,0},{6,1,272,1,0,0},{6,1,273,1,0,0},
			{6,1,274,1,0,0},{6,1,275,1,0,0},{6,1,276,1,0,0},{6,1,277,1,0,0},
			{6,1,279,1,0,0},{6,1,280,1,0,0},{6,1,281,1,0,0},{6,1,282,1,0,0},{6,1,283,1,0,0},
		},
		tbItemIDTime = {30,31,32,33,34,35,36,37,38,39,40,41,42,43,44},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Di�t Ki�m M�t T�ch","Nga Mi Ph�t Quan Ch��ng M�t T�ch","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,42,1,0,0},{6,1,43,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[744]= --th�y y�n
	{---"Y�n Hi�u Tr�i",744,336
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - T� Ho�ng Ph�ng Nghi �ao","�� ph� Ho�ng Kim - Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u","�� ph� Ho�ng Kim - T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i","�� ph� Ho�ng Kim - T� Ho�ng B�ng Tung C�m Uy�n","�� ph� Ho�ng Kim - T� Ho�ng Th�y Ng�c Ch� Ho�n",
			"�� ph� Ho�ng Kim - B�ch H�i Uy�n ��ng Li�n Ho�n �ao","�� ph� Ho�ng Kim - B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n","�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i","�� ph� Ho�ng Kim - B�ch H�i H�ng L�ng Ba","�� ph� Ho�ng Kim - B�ch H�i Khi�n T� Ch� Ho�n",
		},
		tbPropDoPho = 
		{
			{6,1,284,1,0,0},{6,1,285,1,0,0},{6,1,286,1,0,0},{6,1,287,1,0,0},{6,1,288,1,0,0},
			{6,1,289,1,0,0},{6,1,290,1,0,0},{6,1,291,1,0,0},{6,1,292,1,0,0},{6,1,293,1,0,0},
		},
		tbItemIDTime = {45,46,47,48,49,50,51,52,53,54},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Th�y Y�n �ao Ph�p","Th�y Y�n Song �ao","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,40,1,0,0},{6,1,41,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[745]= --c�i bang.
	{---"H� Nh�n Ng�",745,321
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - ��ng C�u Ng� Long Ng�c B�i","�� ph� Ho�ng Kim - ��ng C�u Gi�ng Long C�i Y","�� ph� Ho�ng Kim - ��ng C�u Ti�m Long Y�u ��i","�� ph� Ho�ng Kim - ��ng C�u Kh�ng Long H� Uy�n","�� ph� Ho�ng Kim - ��ng C�u Ki�n Long Ban Ch�",
			"�� ph� Ho�ng Kim - ��ch Kh�i L�c Ng�c Tr��ng","�� ph� Ho�ng Kim - ��ch Kh�i C�u ��i C�i Y","�� ph� Ho�ng Kim - ��ch Kh�i Tri�n M�ng Y�u ��i","�� ph� Ho�ng Kim - ��ch Kh�i C�u T�ch B� H� Uy�n","�� ph� Ho�ng Kim - ��ch Kh�i Th�o Gian Th�ch Gi�i",
		},
		tbPropDoPho = 
		{
			{6,1,329,1,0,0},{6,1,330,1,0,0},{6,1,331,1,0,0},{6,1,332,1,0,0},{6,1,333,1,0,0},
			{6,1,334,1,0,0},{6,1,335,1,0,0},{6,1,336,1,0,0},{6,1,337,1,0,0},{6,1,338,1,0,0},
		},
		tbItemIDTime = {90,91,92,93,94,95,96,97,98,99},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","C�i Bang Ch��ng Ph�p","C�i Bang C�n Ph�p","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,54,1,0,0},{6,1,55,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[747]= --c�n l�n.
	{---"Tuy�n C� T�",747,341
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - S��ng Tinh Thi�n Ni�n H�n Thi�t","�� ph� Ho�ng Kim - S��ng Tinh L�u Tinh C�n Nguy�t Kh�u","�� ph� Ho�ng Kim - S��ng Tinh Thanh Phong L� ��i","�� ph� Ho�ng Kim - S��ng Tinh Thi�n Thanh B�ng Tinh Th�","�� ph� Ho�ng Kim - S��ng Tinh Phong B�o Ch� Ho�n",
			"�� ph� Ho�ng Kim - L�i Khung H�n T�ng B�ng B�ch Quan","�� ph� Ho�ng Kim - L�i Khung Thi�n ��a H� Ph�","�� ph� Ho�ng Kim - L�i Khung Phong L�i Thanh C�m ��i","�� ph� Ho�ng Kim - L�i Khung Linh Ng�c �n L�i","�� ph� Ho�ng Kim - L�i Khung C�u Thi�n D�n L�i Gi�i",
			"�� ph� Ho�ng Kim - V� �o B�c Minh ��o Qu�n","�� ph� Ho�ng Kim - V� Hoan Th�i Uy�n ch�n V� Li�n","�� ph� Ho�ng Kim - V� �o Th�c T�m Ch� Ho�n","�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i","�� ph� Ho�ng Kim - V� �o Tung Phong Tuy�t �nh ngoa",
		},
		tbPropDoPho = 
		{
			{6,1,364,1,0,0},{6,1,365,1,0,0},{6,1,366,1,0,0},{6,1,367,1,0,0},{6,1,368,1,0,0},
			{6,1,369,1,0,0},{6,1,370,1,0,0},{6,1,371,1,0,0},{6,1,372,1,0,0},{6,1,373,1,0,0},
			{6,1,374,1,0,0},{6,1,375,1,0,0},{6,1,376,1,0,0},{6,1,377,1,0,0},{6,1,378,1,0,0},
		},
		tbItemIDTime = {125,126,127,128,129,130,131,132,133,134,135,136,137,138,139},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Ng� Phong Thu�t","Ng� L�i Thu�t","Ng� T�m Thu�t","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,50,1,0,0},{6,1,51,1,0,0},{6,1,52,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,		
	},
	[746]= ---v� �ang.+ c�n l�n
	{--"��n T� Nam",746,342
		szNameDoPho = 
		{
			"�� ph� ho�ng kim - L�ng Nh�c Th�i C�c Ki�m","�� ph� Ho�ng Kim - L�ng Nh�c V� Ng� Th�c ��i","�� ph� ho�ng kim - L�ng Nh�c N� L�i Ph�p Gi�i","�� ph� Ho�ng Kim - L�ng Nh�c V� C�c Huy�n Ng�c B�i","�� ph� Ho�ng Kim - L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",
			"�� ph� Ho�ng Kim - C�p Phong Ch�n V� Ki�m","�� ph� Ho�ng Kim - C�p Phong Tam Thanh Ph� ","�� ph� Ho�ng Kim - C�p Phong Huy�n Ti Tam �o�n C�m","�� ph� Ho�ng Kim - C�p Phong Th�y NG�c Huy�n Ho�ng Uy�n","�� ph� Ho�ng Kim - C�p Phong Thanh T�ng Ph�p Gi�i",
		},
		tbPropDoPho = 
		{
			{6,1,354,1,0,0},{6,1,355,1,0,0},{6,1,356,1,0,0},{6,1,357,1,0,0},{6,1,358,1,0,0},
			{6,1,359,1,0,0},{6,1,360,1,0,0},{6,1,361,1,0,0},{6,1,362,1,0,0},{6,1,363,1,0,0},
		},
		tbItemIDTime = {115,116,117,118,119,120,121,122,123,124},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Th�i C�c Quy�n Ph� Quy�n 3","Th�i C�c Ki�m Ph� Quy�n 2","Ng� Phong Thu�t","Ng� L�i Thu�t","Ng� T�m Thu�t","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,33,1,0,0},{6,1,34,1,0,0},{6,1,50,1,0,0},{6,1,51,1,0,0},{6,1,52,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[748]= --c�i bang. + Thi�n nh�n
	{---"H�n M�ng",748,321
		szNameDoPho = 
		{
			"�� ph� An Bang B�ng Tinh Th�ch H�ng Li�n M�nh 1","�� ph� An Bang B�ng Tinh Th�ch H�ng Li�n M�nh 2","�� ph� An Bang B�ng Tinh Th�ch H�ng Li�n M�nh 3","�� ph� An Bang B�ng Tinh Th�ch H�ng Li�n M�nh 4","�� ph� An Bang B�ng Tinh Th�ch H�ng Li�n M�nh 5",
			"�� ph� An Bang C�c Hoa Th�ch Ch� Ho�n M�nh 1","�� ph� An Bang C�c Hoa Th�ch Ch� Ho�n M�nh 2","�� ph� An Bang C�c Hoa Th�ch Ch� Ho�n M�nh 3","�� ph� An Bang C�c Hoa Th�ch Ch� Ho�n M�nh 4","�� ph� An Bang C�c Hoa Th�ch Ch� Ho�n M�nh 5",
			"�� ph� An Bang �i�n Ho�ng Th�ch Ng�c B�i M�nh 1","�� ph� An Bang �i�n Ho�ng Th�ch Ng�c B�i M�nh 2","�� ph� An Bang �i�n Ho�ng Th�ch Ng�c B�i M�nh 3","�� ph� An Bang �i�n Ho�ng Th�ch Ng�c B�i M�nh 4","�� ph� An Bang �i�n Ho�ng Th�ch Ng�c B�i M�nh 5",
			"�� ph� An Bang K� Huy�t Th�ch Gi�i Ch� M�nh 1","�� ph� An Bang K� Huy�t Th�ch Gi�i Ch� M�nh 2","�� ph� An Bang K� Huy�t Th�ch Gi�i Ch� M�nh 3","�� ph� An Bang K� Huy�t Th�ch Gi�i Ch� M�nh 4","�� ph� An Bang K� Huy�t Th�ch Gi�i Ch� M�nh 5",
		},
		tbPropDoPho = 
		{
			{6,1,4353,1,0,0},{6,1,4354,1,0,0},{6,1,4355,1,0,0},{6,1,4356,1,0,0},{6,1,4357,1,0,0},
			{6,1,4358,1,0,0},{6,1,4359,1,0,0},{6,1,4360,1,0,0},{6,1,4361,1,0,0},{6,1,4362,1,0,0},
			{6,1,4363,1,0,0},{6,1,4364,1,0,0},{6,1,4365,1,0,0},{6,1,4366,1,0,0},{6,1,4367,1,0,0},
			{6,1,4368,1,0,0},{6,1,4369,1,0,0},{6,1,4370,1,0,0},{6,1,4371,1,0,0},{6,1,4372,1,0,0},
		},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","C�i Bang Ch��ng Ph�p","C�i Bang C�n Ph�p","V�n Long K�ch","L�u Tinh �ao Ph�p","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,54,1,0,0},{6,1,55,1,0,0},{6,1,35,1,0,0},{6,1,36,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[565]= --thi�n nh�n.
	{--"�o�n M�c Du�",565,227
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - Ma S�t Qu� C�c U Minh Th��ng","�� ph� Ho�ng Kim - Ma S�t T�n D��ng �nh Huy�t Gi�p","�� ph� Ho�ng Kim - Ma S�t X�ch K� T�a Y�u Kh�u","�� ph� Ho�ng Kim - Ma S�t C� H�a Li�u Thi�n Ho�n","�� ph� Ho�ng Kim - Ma S�t V�n Long Th� Ch�u Gi�i",
			"�� ph� Ho�ng Kim - Ma Th� Li�t Di�m Qu�n Mi�n","�� ph� Ho�ng Kim - Ma Th� L� Ma Ph� T�m ��i","�� ph� Ho�ng Kim - Ma Th� Nghi�p H�a U Minh Gi�i","�� ph� Ho�ng Kim - Ma Th� Huy�t Ng�c Th�t S�t B�i","�� ph� Ho�ng Kim - Ma Th� s�n  H�i Phi H�ng L�",
			"�� ph� Ho�ng Kim - Ma Ho�ng Kim Gi�p Kh�i","�� ph� Ho�ng Kim - Ma Ho�ng �n Xu�t H� H�ng Khuy�n","�� ph� Ho�ng Kim - Ma Ho�ng Kh� C�c Th�c Y�u ��i","�� ph� Ho�ng Kim - Ma Ho�ng Huy�t Y Th� Tr�c","�� ph� Ho�ng Kim - Ma Ho�ng Dung Kim �o�n Nh�t Gi�i",
		},
		tbPropDoPho = 
		{
			{6,1,339,1,0,0},{6,1,340,1,0,0},{6,1,341,1,0,0},{6,1,342,1,0,0},{6,1,343,1,0,0},
			{6,1,344,1,0,0},{6,1,345,1,0,0},{6,1,346,1,0,0},{6,1,347,1,0,0},{6,1,348,1,0,0},
			{6,1,349,1,0,0},{6,1,350,1,0,0},{6,1,351,1,0,0},{6,1,352,1,0,0},{6,1,353,1,0,0},
		},
		tbItemIDTime = {100,101,102,103,104,105,106,107,108,109,110,111,112,113,114},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","V�n Long K�ch","L�u Tinh �ao Ph�p","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,35,1,0,0},{6,1,36,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[567]= --th�y y�n.
	{--"Chung Linh T�",567,181
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - T� Ho�ng Ph�ng Nghi �ao","�� ph� Ho�ng Kim - Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u","�� ph� Ho�ng Kim - T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i","�� ph� Ho�ng Kim - T� Ho�ng B�ng Tung C�m Uy�n","�� ph� Ho�ng Kim - T� Ho�ng Th�y Ng�c Ch� Ho�n",
			"�� ph� Ho�ng Kim - B�ch H�i Uy�n ��ng Li�n Ho�n �ao","�� ph� Ho�ng Kim - B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n","�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i","�� ph� Ho�ng Kim - B�ch H�i H�ng L�ng Ba","�� ph� Ho�ng Kim - B�ch H�i Khi�n T� Ch� Ho�n",
		},
		tbPropDoPho = 
		{
			{6,1,284,1,0,0},{6,1,285,1,0,0},{6,1,286,1,0,0},{6,1,287,1,0,0},{6,1,288,1,0,0},
			{6,1,289,1,0,0},{6,1,290,1,0,0},{6,1,291,1,0,0},{6,1,292,1,0,0},{6,1,293,1,0,0},
		},
		tbItemIDTime = {45,46,47,48,49,50,51,52,53,54},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Th�y Y�n �ao Ph�p","Th�y Y�n Song �ao","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,40,1,0,0},{6,1,41,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[583]= --c�i bang.
	{--"M�nh Th��ng L��ng",583,181
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - ��ng C�u Ng� Long Ng�c B�i","�� ph� Ho�ng Kim - ��ng C�u Gi�ng Long C�i Y","�� ph� Ho�ng Kim - ��ng C�u Ti�m Long Y�u ��i","�� ph� Ho�ng Kim - ��ng C�u Kh�ng Long H� Uy�n","�� ph� Ho�ng Kim - ��ng C�u Ki�n Long Ban Ch�",
			"�� ph� Ho�ng Kim - ��ch Kh�i L�c Ng�c Tr��ng","�� ph� Ho�ng Kim - ��ch Kh�i C�u ��i C�i Y","�� ph� Ho�ng Kim - ��ch Kh�i Tri�n M�ng Y�u ��i","�� ph� Ho�ng Kim - ��ch Kh�i C�u T�ch B� H� Uy�n","�� ph� Ho�ng Kim - ��ch Kh�i Th�o Gian Th�ch Gi�i",
		},
		tbPropDoPho = 
		{
			{6,1,329,1,0,0},{6,1,330,1,0,0},{6,1,331,1,0,0},{6,1,332,1,0,0},{6,1,333,1,0,0},
			{6,1,334,1,0,0},{6,1,335,1,0,0},{6,1,336,1,0,0},{6,1,337,1,0,0},{6,1,338,1,0,0},
		},
		tbItemIDTime = {90,91,92,93,94,95,96,97,98,99},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","C�i Bang Ch��ng Ph�p","C�i Bang C�n Ph�p","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,54,1,0,0},{6,1,55,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5, 
		nRate = 90,
	},
	[1365]= ---thi�u l�m.
	{--"Huy�n Nan ��i S�",1365,342
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - M�ng Long Ch�nh Ho�ng T�ng M�o","�� ph� Ho�ng Kim - M�ng Long Kim Ti Ch�nh H�ng C� Sa","�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�p ��i","�� ph� Ho�ng Kim - M�ng Long Ph�t Ph�p Huy�n B�i","�� ph� Ho�ng Kim - M�ng Long T� Kim B�t Nh� Gi�i",
			"�� ph� Ho�ng Kim - Ph�c Ma T� Kim C�n","�� ph� Ho�ng Kim - Ph�c Ma V� L��ng Kim Cang Uy�n","�� ph� Ho�ng Kim - Ph�c Ma � Kim Nhuy�n �i�u","�� ph� Ho�ng Kim - Ph�c Ma Ph�t T�m Nhuy�n Kh�u","�� ph� Ho�ng Kim - Ph�c Ma Ph� �� T�ng H�i",
			"�� ph� Ho�ng Kim - T� Kh�ng Gi�ng Ma Gi�i �ao","�� ph� Ho�ng Kim - T� Kh�ng ��t Ma T�ng H�i","�� ph� Ho�ng Kim - T� Kh�ng H� Ph�p Y�u ��i","�� ph� Ho�ng Kim - T� Kh�ng Nhuy�n B� H� Uy�n","�� ph� Ho�ng Kim - T� Kh�ng Gi�i Lu�t Ph�p Gi�i",
		},
		tbPropDoPho = 
		{
			{6,1,239,1,0,0},{6,1,240,1,0,0},{6,1,241,1,0,0},{6,1,242,1,0,0},{6,1,243,1,0,0},
			{6,1,244,1,0,0},{6,1,245,1,0,0},{6,1,246,1,0,0},{6,1,247,1,0,0},{6,1,248,1,0,0},
			{6,1,249,1,0,0},{6,1,250,1,0,0},{6,1,251,1,0,0},{6,1,252,1,0,0},{6,1,253,1,0,0},
		},
		tbItemIDTime = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Thi�u L�m Quy�n Ph�p. Quy�n 1","Thi�u L�m C�n Ph�p. Quy�n 2","Thi�u L�m �ao Ph�p. Quy�n 3","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,56,1,0,0},{6,1,57,1,0,0},{6,1,58,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[1368]= ---c�n l�n.
	{---"Thanh Li�n T�",1368,875
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - S��ng Tinh Thi�n Ni�n H�n Thi�t","�� ph� Ho�ng Kim - S��ng Tinh L�u Tinh C�n Nguy�t Kh�u","�� ph� Ho�ng Kim - S��ng Tinh Thanh Phong L� ��i","�� ph� Ho�ng Kim - S��ng Tinh Thi�n Thanh B�ng Tinh Th�","�� ph� Ho�ng Kim - S��ng Tinh Phong B�o Ch� Ho�n",
			"�� ph� Ho�ng Kim - L�i Khung H�n T�ng B�ng B�ch Quan","�� ph� Ho�ng Kim - L�i Khung Thi�n ��a H� Ph�","�� ph� Ho�ng Kim - L�i Khung Phong L�i Thanh C�m ��i","�� ph� Ho�ng Kim - L�i Khung Linh Ng�c �n L�i","�� ph� Ho�ng Kim - L�i Khung C�u Thi�n D�n L�i Gi�i",
			"�� ph� Ho�ng Kim - V� �o B�c Minh ��o Qu�n","�� ph� Ho�ng Kim - V� Hoan Th�i Uy�n ch�n V� Li�n","�� ph� Ho�ng Kim - V� �o Th�c T�m Ch� Ho�n","�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i","�� ph� Ho�ng Kim - V� �o Tung Phong Tuy�t �nh ngoa",
		},
		tbPropDoPho = 
		{
			{6,1,364,1,0,0},{6,1,365,1,0,0},{6,1,366,1,0,0},{6,1,367,1,0,0},{6,1,368,1,0,0},
			{6,1,369,1,0,0},{6,1,370,1,0,0},{6,1,371,1,0,0},{6,1,372,1,0,0},{6,1,373,1,0,0},
			{6,1,374,1,0,0},{6,1,375,1,0,0},{6,1,376,1,0,0},{6,1,377,1,0,0},{6,1,378,1,0,0},
		},
		tbItemIDTime = {125,126,127,128,129,130,131,132,133,134,135,136,137,138,139},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Ng� Phong Thu�t","Ng� L�i Thu�t","Ng� T�m Thu�t","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,50,1,0,0},{6,1,51,1,0,0},{6,1,52,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,		
	},
	[1366]= --���ng m�n.
	{--"���ng Phi Y�n",1366,342
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - B�ng H�n ��n Ch� Phi �ao","�� ph� Ho�ng Kim - B�ng H�n Huy�n Y Th�c Gi�p","�� ph� Ho�ng Kim - B�ng H�n T�m Ti�n Y�u Kh�u","�� ph� Ho�ng Kim - B�ng H�n Huy�n Thi�n B�ng H�a B�i","�� ph� Ho�ng Kim - B�ng H�n Nguy�t �nh Ngoa",
			"�� ph� Ho�ng Kim - Thi�n Quang Hoa V� M�n Thi�n","�� ph� Ho�ng Kim - Thi�n Quang ��nh T�m Ng�ng Th�n ph� ","�� ph� Ho�ng Kim - Thi�n Quang S�m La Th�c Y�u","�� ph� Ho�ng Kim - Thi�n Quang ��a H�nh Thi�n L� Ngoa","�� ph� Ho�ng Kim - Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",
			"�� ph� Ho�ng Kim - S�m Hoang Phi Tinh �o�t H�n","�� ph� Ho�ng Kim - S�m Hoang Kim Ti�n Li�n Ho�n Gi�p","�� ph� Ho�ng Kim - S�m Hoang H�n Gi�o Y�u Th�c","�� ph� Ho�ng Kim - S�m Hoang Huy�n Thi�t T��ng Ng�c B�i","�� ph� Ho�ng Kim - S�m Hoang Tinh V�n Phi L� ",
			"�� ph� Ho�ng Kim - ��a Ph�ch Ng� H�nh Li�n Ho�n Qu�n","�� ph� Ho�ng Kim - ��a Ph�ch H�c Di�m Xung Thi�n Li�n","�� ph� Ho�ng Kim - ��a Ph�ch T�ch L�ch L�i H�a Gi�i","�� ph� Ho�ng Kim - ��a Ph�ch Kh�u T�m Tr�c","�� ph� Ho�ng Kim - ��a Ph�ch Phong H�n Th�c Y�u",
		},
		tbPropDoPho = 
		{
			{6,1,309,1,0,0},{6,1,310,1,0,0},{6,1,311,1,0,0},{6,1,312,1,0,0},{6,1,313,1,0,0},
			{6,1,314,1,0,0},{6,1,315,1,0,0},{6,1,316,1,0,0},{6,1,317,1,0,0},{6,1,318,1,0,0},
			{6,1,319,1,0,0},{6,1,320,1,0,0},{6,1,321,1,0,0},{6,1,322,1,0,0},{6,1,323,1,0,0},
			{6,1,324,1,0,0},{6,1,325,1,0,0},{6,1,326,1,0,0},{6,1,327,1,0,0},{6,1,328,1,0,0},
		},
		tbItemIDTime = {70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","B�o V� L� Hoa","Lo�n Ho�n K�ch","Nhi�p H�n Nguy�t Anh","C�u Cung Phi Tinh","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,27,1,0,0},{6,1,28,1,0,0},{6,1,45,1,0,0},{6,1,46,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[1367]= ---v� �ang.
	{--"T� ��i Nh�c",1367,342	
		szNameDoPho = 
		{
			"�� ph� ho�ng kim - L�ng Nh�c Th�i C�c Ki�m","�� ph� Ho�ng Kim - L�ng Nh�c V� Ng� Th�c ��i","�� ph� ho�ng kim - L�ng Nh�c N� L�i Ph�p Gi�i","�� ph� Ho�ng Kim - L�ng Nh�c V� C�c Huy�n Ng�c B�i","�� ph� Ho�ng Kim - L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",
			"�� ph� Ho�ng Kim - C�p Phong Ch�n V� Ki�m","�� ph� Ho�ng Kim - C�p Phong Tam Thanh Ph� ","�� ph� Ho�ng Kim - C�p Phong Huy�n Ti Tam �o�n C�m","�� ph� Ho�ng Kim - C�p Phong Th�y NG�c Huy�n Ho�ng Uy�n","�� ph� Ho�ng Kim - C�p Phong Thanh T�ng Ph�p Gi�i",
		},
		tbPropDoPho = 
		{
			{6,1,354,1,0,0},{6,1,355,1,0,0},{6,1,356,1,0,0},{6,1,357,1,0,0},{6,1,358,1,0,0},
			{6,1,359,1,0,0},{6,1,360,1,0,0},{6,1,361,1,0,0},{6,1,362,1,0,0},{6,1,363,1,0,0},
		},
		tbItemIDTime = {115,116,117,118,119,120,121,122,123,124},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Th�i C�c Quy�n Ph� Quy�n 3","Th�i C�c Ki�m Ph� Quy�n 2","Ng� Phong Thu�t","Ng� L�i Thu�t","Ng� T�m Thu�t","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,33,1,0,0},{6,1,34,1,0,0},{6,1,50,1,0,0},{6,1,51,1,0,0},{6,1,52,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[566]= --Thi�n v��ng.
	{	---"C� B�ch",739,341
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y","�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p","�� ph� Ho�ng Kim - H�m Thi�n Uy V� Th�c Y�u ��i","�� ph� Ho�ng Kim - H�m Thi�n H� ��u Kh�n Th�c Uy�n","�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa",
			"�� ph� Ho�ng Kim - K� Nghi�p B�n L�i To�n Long Th��ng","�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i","�� ph� Ho�ng Kim - K� Nghi�p B�ch H� V� Song Kh�u","�� ph� Ho�ng Kim - K� Nghi�p H�a V�n K� L�n th� ","�� ph� Ho�ng Kim - K� Nghi�p Chu T��c L�ng V�n Ngoa",
			"�� ph� Ho�ng Kim - Ng� Long L��ng Ng�n B�o �ao","�� ph� ho�ng kim - Ng� Long Chi�n Th�n Qua Tr�y","�� ph� Ho�ng Kim - Ng� Long Thi�n M�n Th�c Y�u Ho�n","�� ph� Ho�ng Kim - Ng� Long T�n Phong Ph�t C�","�� ph� Ho�ng Kim - Ng� Long Tuy�t M�nh Ch� Ho�n",
		},
		tbPropDoPho = 
		{
			{6,1,254,1,0,0},{6,1,255,1,0,0},{6,1,256,1,0,0},{6,1,257,1,0,0},{6,1,258,1,0,0},
			{6,1,259,1,0,0},{6,1,260,1,0,0},{6,1,261,1,0,0},{6,1,262,1,0,0},{6,1,263,1,0,0},
			{6,1,264,1,0,0},{6,1,265,1,0,0},{6,1,266,1,0,0},{6,1,267,1,0,0},{6,1,268,1,0,0},
		},
		tbItemIDTime = {15,16,17,18,19,20,21,22,23,24,25,26,27,28,29},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Thi�n V��ng Ch�y Ph�p. Quy�n 1","Thi�n V��ng Th��ng Ph�p. Quy�n 2","Thi�n V��ng �ao Ph�p","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,37,1,0,0},{6,1,38,1,0,0},{6,1,39,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[568]= --Nga My.
	{	---"H� Linh Phi�u",739,341
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - V� Gian � Thi�n Ki�m","�� ph� Ho�ng Kim - V� gian Thanh phong nhuy�n l�","�� ph� Ho�ng Kim - V� Gian Ph�t V�n Ti ��i","�� ph� Ho�ng Kim - V� Gian C�m V�n H� Uy�n","�� ph� Ho�ng Kim - V� Gian B�ch Ng�c B�n Ch� ",
			"�� ph� Ho�ng Kim - V� Ma Ma Ni Qu�n","�� ph� Ho�ng Kim - V� ma thu th�y l�u quang �ai","�� ph� Ho�ng Kim - V� Ma B�ng Tinh Ch� Ho�n","�� ph� Ho�ng Kim - V� Ma T�y T��ng Ng�c Kh�u",
			"�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m Qu�n","�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u","�� ph� Ho�ng Kim - V� Tr�n T� Bi Ng�c B�n Ch�","�� ph� Ho�ng Kim - V� Tr�n T�nh �nh L�u T�","�� ph� ho�ng kim - V� Tr�n Ph�t Quang Ch� Ho�n",
		},
		tbPropDoPho = 
		{
			{6,1,269,1,0,0},{6,1,270,1,0,0},{6,1,271,1,0,0},{6,1,272,1,0,0},{6,1,273,1,0,0},
			{6,1,274,1,0,0},{6,1,275,1,0,0},{6,1,276,1,0,0},{6,1,277,1,0,0},
			{6,1,279,1,0,0},{6,1,280,1,0,0},{6,1,281,1,0,0},{6,1,282,1,0,0},{6,1,283,1,0,0},
		},
		tbItemIDTime = {30,31,32,33,34,35,36,37,38,39,40,41,42,43,44},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Di�t Ki�m M�t T�ch","Nga Mi Ph�t Quan Ch��ng M�t T�ch","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,42,1,0,0},{6,1,43,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[582]= --Ng� ��c.
	{	---"Lam Y Y",739,341
			szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - U Lung Kim X� Ph�t ��i","�� ph� Ho�ng Kim - U Lung X�ch Hi�t M�t Trang","�� ph� Ho�ng Kim - U Lung Thanh Ng� Tri�n Y�u","�� ph� Ho�ng Kim - U Lung Ng�n Thi�m H� Uy�n","�� ph� Ho�ng Kim - U Lung M�c Th� Nhuy�n L�",
			"�� ph� Ho�ng Kim - Minh �o T� S�t ��c Nh�n","�� ph� Ho�ng Kim - Minh �o U C� �m Y","�� ph� Ho�ng Kim - Minh �o Thanh Hi�t Ch� Ho�n","�� ph� Ho�ng Kim - Minh �o H� C�t H� Uy�n","�� ph� Ho�ng Kim - Minh Hoan Song Ho�n X� Kh�u",
			"�� ph� Ho�ng Kim - Ch� Ph��c Ph� Gi�p ��u Ho�n","�� ph� Ho�ng Kim - Ch� Ph��c Di�t L�i C�nh Ph� ","�� ph� Ho�ng Kim - Ch� Ph��c U �o Ch� Ho�n","�� ph� Ho�ng Kim - Ch� Ph��c Xuy�n T�m ��c Uy�n","�� ph� Ho�ng Kim - Ch� Ph�c Th�c C�t Ng�c B�i",
		},
		tbPropDoPho = 
		{
			{6,1,294,1,0,0},{6,1,295,1,0,0},{6,1,296,1,0,0},{6,1,297,1,0,0},{6,1,298,1,0,0},
			{6,1,299,1,0,0},{6,1,300,1,0,0},{6,1,301,1,0,0},{6,1,302,1,0,0},{6,1,303,1,0,0},
			{6,1,304,1,0,0},{6,1,305,1,0,0},{6,1,306,1,0,0},{6,1,307,1,0,0},{6,1,308,1,0,0},
		},
		tbItemIDTime = {55,56,57,58,59,60,61,62,63,64,65,66,67,68,69},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Ng� ��c Ch��ng Ph�p","Ng� ��c �ao Ph�p","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,47,1,0,0},{6,1,48,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[563]= --Thi�n Nh�n
	{	---"Gia Lu�t T� Ly",739,341
		szNameDoPho = 
		{
			"�� ph� Ho�ng Kim - Ma S�t Qu� C�c U Minh Th��ng","�� ph� Ho�ng Kim - Ma S�t T�n D��ng �nh Huy�t Gi�p","�� ph� Ho�ng Kim - Ma S�t X�ch K� T�a Y�u Kh�u","�� ph� Ho�ng Kim - Ma S�t C� H�a Li�u Thi�n Ho�n","�� ph� Ho�ng Kim - Ma S�t V�n Long Th� Ch�u Gi�i",
			"�� ph� Ho�ng Kim - Ma Th� Li�t Di�m Qu�n Mi�n","�� ph� Ho�ng Kim - Ma Th� L� Ma Ph� T�m ��i","�� ph� Ho�ng Kim - Ma Th� Nghi�p H�a U Minh Gi�i","�� ph� Ho�ng Kim - Ma Th� Huy�t Ng�c Th�t S�t B�i","�� ph� Ho�ng Kim - Ma Th� s�n  H�i Phi H�ng L�",
			"�� ph� Ho�ng Kim - Ma Ho�ng Kim Gi�p Kh�i","�� ph� Ho�ng Kim - Ma Ho�ng �n Xu�t H� H�ng Khuy�n","�� ph� Ho�ng Kim - Ma Ho�ng Kh� C�c Th�c Y�u ��i","�� ph� Ho�ng Kim - Ma Ho�ng Huy�t Y Th� Tr�c","�� ph� Ho�ng Kim - Ma Ho�ng Dung Kim �o�n Nh�t Gi�i",
		},
		tbPropDoPho = 
		{
			{6,1,339,1,0,0},{6,1,340,1,0,0},{6,1,341,1,0,0},{6,1,342,1,0,0},{6,1,343,1,0,0},
			{6,1,344,1,0,0},{6,1,345,1,0,0},{6,1,346,1,0,0},{6,1,347,1,0,0},{6,1,348,1,0,0},
			{6,1,349,1,0,0},{6,1,350,1,0,0},{6,1,351,1,0,0},{6,1,352,1,0,0},{6,1,353,1,0,0},
		},
		tbItemIDTime = {100,101,102,103,104,105,106,107,108,109,110,111,112,113,114},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","V�n Long K�ch","L�u Tinh �ao Ph�p","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
		nProp = {{6,1,26,1,0,0},{6,1,22,1,0,0},{4,238,1,1,0,0},{4,239,1,1,0,0},{4,240,1,1,0,0},{4,353,1,1,0,0},{6,1,71,1,0,0},{6,1,35,1,0,0},{6,1,36,1,0,0},{6,0,2,1,0,0},{6,0,3,1,0,0},{6,0,4,1,0,0},{6,0,5,1,0,0},{6,0,6,1,0,0},{6,0,7,1,0,0},{6,1,23,1,0,0},{6,1,15,1,0,0}},
		nCount = 5,
		nRate = 90,
	},
	[562]= --V� �ang.
	{	---"��o Thanh Ch�n Nh�n",739,341
		szNameDoPho = 
		{
			"�� ph� ho�ng kim - L�ng Nh�c Th�i C�c Ki�m","�� ph� Ho�ng Kim - L�ng Nh�c V� Ng� Th�c ��i","�� ph� ho�ng kim - L�ng Nh�c N� L�i Ph�p Gi�i","�� ph� Ho�ng Kim - L�ng Nh�c V� C�c Huy�n Ng�c B�i","�� ph� Ho�ng Kim - L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",
			"�� ph� Ho�ng Kim - C�p Phong Ch�n V� Ki�m","�� ph� Ho�ng Kim - C�p Phong Tam Thanh Ph� ","�� ph� Ho�ng Kim - C�p Phong Huy�n Ti Tam �o�n C�m","�� ph� Ho�ng Kim - C�p Phong Th�y NG�c Huy�n Ho�ng Uy�n","�� ph� Ho�ng Kim - C�p Phong Thanh T�ng Ph�p Gi�i",
		},
		tbPropDoPho = 
		{
			{6,1,354,1,0,0},{6,1,355,1,0,0},{6,1,356,1,0,0},{6,1,357,1,0,0},{6,1,358,1,0,0},
			{6,1,359,1,0,0},{6,1,360,1,0,0},{6,1,361,1,0,0},{6,1,362,1,0,0},{6,1,363,1,0,0},
		},
		tbItemIDTime = {115,116,117,118,119,120,121,122,123,124},
		szName = {"V� L�m M�t T�ch","T�y Tu� Kinh","Lam Th�y Tinh","T� Th�y Tinh","L�c Th�y Tinh","Tinh H�ng B�o Th�ch","Ti�n Th�o L�","Th�i C�c Quy�n Ph� Quy�n 3","Th�i C�c Ki�m Ph� Quy�n 2","Ng� Phong Thu�t","Ng� L�i Thu�t","Ng� T�m Thu�t","Gia b�o ho�n","��i l�c ho�n","Phi t�c ho�n","B�ng ph�ng ho�n","L�i ph�ng ho�n","Ho� ph�ng ho�n","Thi�t la h�n","Phi Phong"},
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
		SetNpcParam(nNpcIndex,1,boss_pak[1]); --l�u id boss.
		SetNpcDeathScript(nNpcIndex,BOSS_DEATH_SCRIPT);
		SetNpcTimer(nNpcIndex, TIME_BIGBOSS_REMOVE);
		local map_name = BossDataSave[nTime].record_boss[boss_pak[4] * 1000];
		local szMsg = format("Giang h� ��n r�ng %s �� xu�t hi�n � %s ! Giang h� �t h�n s� c� m�t tr�n ��m m�u!",boss_pak[8],map_name);
		local szSub = format("<color=gold>%s<color> �� xu�t hi�n t�i map: <color=green>%s (%d,%d) <color>",boss_pak[8],map_name,floor((boss_pak[5]/32)/8),floor((boss_pak[6]/32)/16));
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


--t�o 1 table boss.
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
	--l�y to� �� map boss, v� map name.
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
	--l�u map name.
	if not item.record_boss[SubWorldID2Idx(nMapBoss) * 1000]  then 
		item.record_boss[SubWorldID2Idx(nMapBoss) * 1000] = zMapName;
	end
	
	local boss_info = {};
	---l�y boss info id t�n ..
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
	--	[1]={	szName = "Huy�n Gi�c ��i S�",		nBossId = 740,	nRate = 322,	nSeries = 0,	nLevel = 95},

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
