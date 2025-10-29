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
		{szName="H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",tbProp={0,16},nCount=1,nQuality = 1,nRate=6.25},
		{szName="H�m Thi�n V� Th�n T��ng Kim Gi�p",tbProp={0,17},nCount=1,nQuality = 1,nRate=6.25},
		{szName="K� Nghi�p B�n L�i To�n Long th��ng",tbProp={0,21},nCount=1,nQuality = 1,nRate=6.25},
		{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={0,22},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ng� Long L��ng Ng�n B�o �ao",tbProp={0,26},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ng� Long Chi�n Th�n Phi Qu�i gi�p",tbProp={0,27},nCount=1,nQuality = 1,nRate=6.25},
		{szName="H�m Thi�n Uy V� Th�c y�u ��i",tbProp={0,18},nCount=1,nQuality = 1,nRate=6.25},
		{szName="K� Nghi�p B�ch H� V� Song kh�u",tbProp={0,23},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={0,28},nCount=1,nQuality = 1,nRate=6.25},
		{szName="H�m Thi�n H� ��u Kh�n Th�c Uy�n",tbProp={0,19},nCount=1,nQuality = 1,nRate=6.25},
		{szName="K� Nghi�p H�aV�n K� L�n Th� ",tbProp={0,24},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ng� Long T�n Phong H� y�n",tbProp={0,29},nCount=1,nQuality = 1,nRate=6.25},
		{szName="H�m Thi�n Th�a Long Chi�n Ngoa",tbProp={0,20},nCount=1,nQuality = 1,nRate=6.25},
		{szName="K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={0,25},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ng� Long Tuy�t M�nh Ch� ho�n",tbProp={0,30},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Ng� Long T�n Phong Ph�t C�",tbProp={0,793},nCount=1,nQuality = 1,nRate=6.25},
	},
	[4880]={	
		{szName="U Lung X�ch Y�t M�t trang",tbProp={0,57},nCount=1,nQuality = 1,nRate=4},
		{szName="Minh �o T� S�t ��c Nh�n",tbProp={0,61},nCount=1,nQuality = 1,nRate=4},
		{szName="Ch� Ph��c Ph� gi�p ��u ho�n",tbProp={0,66},nCount=1,nQuality = 1,nRate=4},
		{szName="U Lung Kim X� Ph�t ��i",tbProp={0,56},nCount=1,nQuality = 1,nRate=3.14},
		{szName="Minh �o U ��c �m Y",tbProp={0,62},nCount=1,nQuality = 1,nRate=3.14},
		{szName="Ch� Ph��c Di�t L�i C�nh Ph� ",tbProp={0,67},nCount=1,nQuality = 1,nRate=3.14},
		{szName="U Lung Thanh Ng� Tri�n y�u",tbProp={0,58},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Minh �o ��c Y�t Ch� Ho�n",tbProp={0,63},nCount=1,	nQuality = 1,nRate=7.14},
		{szName="Ch� Ph��c U �o Ch� Ho�n",tbProp={0,68},nCount=1,nQuality = 1,nRate=7.14},
		{szName="U Lung Ng�n Th�m H� Uy�n",tbProp={0,59},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Minh �o H� C�t H� uy�n",tbProp={0,64},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Ch� Ph��c Xuy�n T�m ��c Uy�n",tbProp={0,69},nCount=1,nQuality = 1,nRate=7.14},
		{szName="U Lung M�c Th� Nhuy�n L� ",tbProp={0,60},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Minh �o Song Ho�n X� H�i",tbProp={0,65},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Ch� Ph��c B�ng H�a Th�c C�t Ngoa",tbProp={0,70},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Minh Hoan Song Ho�n X� Kh�u",tbProp={0,829},nCount=1,nQuality = 1,nRate=7.14},
		{szName="Ch� Ph�c Tr�ng C�t Ng�c B�i",tbProp={0,834},nCount=1,nQuality = 1,nRate=7.14},
	},
	[4881]={	
		{szName="T� Ho�ng Ph�ng Nghi �ao",tbProp={0,46},nCount=1,nQuality = 1,nRate=5},
		{szName="T� Ho�ng Tu� T�m Khinh Sa Y",tbProp={0,47},nCount=1,nQuality = 1,nRate=5},
		{szName="B�ch H�i Uy�n ��ng Li�n Ho�n �ao",tbProp={0,51},nCount=1,nQuality = 1,nRate=5},
		{szName="B�ch H�i Ho�n Ch�u V� Li�n",tbProp={0,52},nCount=1,nQuality = 1,nRate=5},	
		{szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={0,48},nCount=1,nQuality = 1,nRate=7.5},
		{szName="B�ch H�i H�ng Linh Kim Ti ��i",tbProp={0,53},nCount=1,nQuality = 1,nRate=7.5},
		{szName="T� Ho�ng B�ng Tung C�m uy�n",tbProp={0,49},nCount=1,nQuality = 1,nRate=7.5},
		{szName="B�ch H�i H�ng L�ng Ba",tbProp={0,54},nCount=1,nQuality = 1,nRate=12.5},
		{szName="T� Ho�ng Th�y Ng�c Ch� Ho�n",tbProp={0,50},nCount=1,nQuality = 1,nRate=7.5},
		{szName="B�ch H�i Khi�n T� Ch� ho�n",tbProp={0,55},nCount=1,nQuality = 1,nRate=12.5},
		{szName="Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u",tbProp={0,811},nCount=1,nQuality = 1,nRate=12.5},
		{szName="B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n",tbProp={0,816},nCount=1,nQuality = 1,nRate=12.5},
	},
	[4882]={	
		{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={0,126},nCount=1,nQuality = 1,nRate=4},
		{szName="S��ng Tinh Ng�o S��ng ��o b�o",tbProp={0,127},nCount=1,nQuality = 1,nRate=4},
		{szName="L�i Khung H�n Tung B�ng B�ch quan",tbProp={0,131},nCount=1,nQuality = 1,nRate=4},
		{szName="L�i Khung Thi�n ��a H� ph� ",tbProp={0,132},nCount=1,nQuality = 1,nRate=4},		
		{szName="V� �o Ki B�n ph� ch� ",tbProp={0,137},nCount=1,nQuality = 1,nRate=4},
		{szName="S��ng Tinh Thanh Phong L� ��i",tbProp={0,128},nCount=1,nQuality = 1,nRate=3.7},
		{szName="L�i Khung Phong L�i Thanh C�m ��i",tbProp={0,133},nCount=1,nQuality = 1,nRate=3.7},
		{szName="V� �o B�c Minh ��o qu�n",tbProp={0,136},nCount=1,nQuality = 1,nRate=3.7},
		{szName="S��ng Tinh Thi�n Tinh B�ng Tinh th� ",tbProp={0,129},nCount=1,nQuality = 1,nRate=3.7},
		{szName="L�i Khung Linh Ng�c U�n L�i",tbProp={0,134},nCount=1,nQuality = 1,nRate=3.7},
		{szName="V� �o Th�c T�m ch� ho�n",tbProp={0,138},nCount=1,nQuality = 1,nRate=7.7},
		{szName="S��ng Tinh Phong B�o ch� ho�n",tbProp={0,130},nCount=1,nQuality = 1,nRate=7.7},
		{szName="L�i Khung C�u Thi�n D�n L�i gi�i",tbProp={0,135},nCount=1,nQuality = 1,nRate=7.7},
		{szName="V� �o Thanh �nh Huy�n Ng�c B�i",tbProp={0,139},nCount=1,nQuality = 1,nRate=7.7},
		{szName="S��ng Tinh L�u Tinh C�n Nguy�t Kh�u",tbProp={0,891},nCount=1,nQuality = 1,nRate=7.7},
		{szName="L�i Khung Linh Ng�c �n L�i Uy�n",tbProp={0,898},nCount=1,nQuality = 1,nRate=7.7},
		{szName="V� �o Tung Phong Tuy�t �nh ngoa",tbProp={0,140},nCount=1,nQuality = 1,nRate=7.7},
		{szName="V� Hoan Th�i Uy�n Ch�n V� Li�n",tbProp={0,901},nCount=1,nQuality = 1,nRate=7.7},
	},
	[4883]={	
		{szName="Ma S�t Qu� C�c U Minh Th��ng",tbProp={0,101},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={0,102},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma Ho�ng Kim Gi�p Kh�i",tbProp={0,106},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma Ho�ng �n Xu�t H� H�ng Khuy�n",tbProp={0,107},nCount=1,nQuality = 1,nRate=4},		
		{szName="Ma Th� Li�t Di�m Qu�n Mi�n",tbProp={0,111},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma Th� L� Ma Ph� T�m Li�n",tbProp={0,112},nCount=1,nQuality = 1,nRate=4},
		{szName="Ma S�t X�ch K� T�a Y�u Kh�u",tbProp={0,103},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma Ho�ng Kh� C�c Th�c y�u ��i",tbProp={0,108},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma Th� Nghi�p H�a U Minh Gi�i",tbProp={0,113},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma S�t C� H�a Li�u Thi�n uy�n",tbProp={0,104},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma Ho�ng Huy�t Y Th� Tr�c",tbProp={0,109},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={0,114},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ma S�t V�n Long Th� Ch�u gi�i",tbProp={0,105},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma Ho�ng ��ng ��p Ngoa",tbProp={0,110},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma Th� s�n  H�i Phi H�ng L� ",tbProp={0,115},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma S�t C� H�a Li�u Thi�n Ho�n",tbProp={0,868},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma Ho�ng Dung Kim �o�n Nh�t Gi�i",tbProp={0,874},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ma Th� L� Ma Ph� T�m ��i",tbProp={0,876},nCount=1,nQuality = 1,nRate=8.34},
	},
	[4884]={	
		{szName="M�ng Long Ch�nh H�ng T�ng M�o",tbProp={0,1},nCount=1,nQuality = 1,nRate=4},
		{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={0,2},nCount=1,nQuality = 1,nRate=4},
		{szName="Ph�c Ma T� Kim C�n",tbProp={0,6},nCount=1,nQuality = 1,nRate=4},
		{szName="Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={0,7},nCount=1,nQuality = 1,nRate=4},	
		{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11},nCount=1,nQuality = 1,nRate=4},
		{szName="T� Kh�ng T� Kim C� Sa",tbProp={0,12},nCount=1,nQuality = 1,nRate=4},
		{szName="M�ng Long Huy�n Ti Ph�t ��i",tbProp={0,3},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ph�c Ma � Kim Nhuy�n �i�u",tbProp={0,8},nCount=1,nQuality = 1,nRate=4.34},
		{szName="T� Kh�ng H� ph�p Y�u ��i",tbProp={0,13},nCount=1,nQuality = 1,nRate=4.34},
		{szName="M�ng Long Ph�t Ph�p Huy�n B�i",tbProp={0,4},nCount=1,nQuality = 1,nRate=4.34},
		{szName="Ph�c Ma Ph�t T�m Nhuy�n Kh�u",tbProp={0,9},nCount=1,nQuality = 1,nRate=4.34},
		{szName="T� Kh�ng Nhuy�n B� H� Uy�n",tbProp={0,14},nCount=1,nQuality = 1,nRate=4.34},
		{szName="M�ng Long ��t Ma T�ng h�i",tbProp={0,5},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ph�c Ma Ph� �� T�ng h�i",tbProp={0,10},nCount=1,nQuality = 1,nRate=8.34},
		{szName="T� Kh�ng ��t Ma T�ng H�i",tbProp={0,776},nCount=1,nQuality = 1,nRate=8.34},
		{szName="M�ng Long T� Kim B�t Nh� Gi�i",tbProp={0,769},nCount=1,nQuality = 1,nRate=8.34},
		{szName="Ph�c Ma V� L��ng Kim Cang Uy�n",tbProp={0,771},nCount=1,nQuality = 1,nRate=8.34},
		{szName="T� Kh�ng Gi�i Lu�t Ph�p gi�i",tbProp={0,15},nCount=1,nQuality = 1,nRate=8.34},
	},
	[4885]={	
		{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,71},nCount=1,nQuality = 1,nRate=3},
		{szName="Thi�n Quang Hoa V� M�n Thi�n",tbProp={0,76},nCount=1,nQuality = 1,nRate=3},
		{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",tbProp={0,77},nCount=1,nQuality = 1,nRate=3},	
		{szName="S�m Hoang Phi Tinh �o�t H�n",tbProp={0,81},nCount=1,nQuality = 1,nRate=3},
		{szName="��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",tbProp={0,86},nCount=1,nQuality = 1,nRate=3},
		{szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n",tbProp={0,87},nCount=1,nQuality = 1,nRate=3},
		{szName="B�ng H�n Huy�n Y Th�c Gi�p",tbProp={0,72},nCount=1,nQuality = 1,nRate=3.25},
		{szName="B�ng H�n T�m Ti�n Y�u Kh�u",tbProp={0,73},nCount=1,nQuality = 1,nRate=3.25},
		{szName="Thi�n Quang S�m La Th�c ��i",tbProp={0,78},nCount=1,nQuality = 1,nRate=3.25},
		{szName="Thi�n Quang Song B�o H�n Thi�t Tr�c",tbProp={0,79},nCount=1,nQuality = 1,nRate=3.25},
		{szName="��a Ph�ch T�ch L�ch L�i H�a Gi�i",tbProp={0,88},nCount=1,nQuality = 1,nRate=3.25},
		{szName="��a Ph�ch Kh�u T�m tr�c",tbProp={0,89},nCount=1,nQuality = 1,nRate=3.25},
		{szName="S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",tbProp={0,84},nCount=1,nQuality = 1,nRate=6.25},
		{szName="S�m Hoang Tinh V�n Phi L� ",tbProp={0,85},nCount=1,nQuality = 1,nRate=6.25},
		{szName="B�ng H�n Huy�n Thi�n B�ng H�a B�i",tbProp={0,74},nCount=1,nQuality = 1,nRate=6.25},
		{szName="B�ng H�n Nguy�t �nh Ngoa",tbProp={0,75},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",tbProp={0,80},nCount=1,nQuality = 1,nRate=6.25},
		{szName="Thi�n Quang ��a H�nh Thi�n L�  Ngoa",tbProp={0,843},nCount=1,nQuality = 1,nRate=6.25},
		{szName="S�m Hoang KimTi�n Li�n Ho�n Gi�p",tbProp={0,82},nCount=1,nQuality = 1,nRate=6.25},
		{szName="S�m Hoang H�n Gi�o Y�u Th�c",tbProp={0,83},nCount=1,nQuality = 1,nRate=6.25},
		{szName="��a Ph�ch ��a H�nh Thi�n L� Ngoa",tbProp={0,90},nCount=1,nQuality = 1,nRate=6.25},
		{szName="��a Ph�ch Phong H�n Th�c Y�u",tbProp={0,854},nCount=1,nQuality = 1,nRate=6.25},	
	},
	[4886]={	
		{szName="V� Gian � Thi�n Ki�m",tbProp={0,31},nCount=1,nQuality = 1,nRate=4},
		{szName="V� Gian Thanh Phong Truy Y",tbProp={0,32},nCount=1,nQuality = 1,nRate=4},
		{szName="V� Ma Ma Ni qu�n",tbProp={0,36},nCount=1,nQuality = 1,nRate=4},
		{szName="V� Ma T� Kh�m C� Sa",tbProp={0,37},nCount=1,nQuality = 1,nRate=4},		
		{szName="V� Tr�n Ng�c N� T� T�m qu�n",tbProp={0,41},nCount=1,nQuality = 1,nRate=4},
		{szName="V� Tr�n Thanh T�m H��ng Thi�n Ch�u",tbProp={0,42},nCount=1,nQuality = 1,nRate=4},
		{szName="V� Gian Ph�t V�n Ti ��i",tbProp={0,33},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V� Ma B�ng Tinh Ch� Ho�n",tbProp={0,38},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V� Tr�n T� Bi Ng�c Ban Ch� ",tbProp={0,43},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V� Gian C�m V�n H� Uy�n",tbProp={0,34},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V� Ma T�y T��ng Ng�c Kh�u ",tbProp={0,39},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V� Tr�n Ph�t Quang Ch� Ho�n",tbProp={0,45},nCount=1,nQuality = 1,nRate=4.34},
		{szName="V� Gian B�ch Ng�c B�n Ch� ",tbProp={0,35},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V� Ma H�ng Truy Nhuy�n Th�p h�i",tbProp={0,40},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V� Tr�n T�nh �nh L�u T�",tbProp={0,808},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V� Gian Thanh Phong Nhuy�n K�ch",tbProp={0,796},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V� Y�m Thu Th�y L�u Quang ��i",tbProp={0,801},nCount=1,nQuality = 1,nRate=8.34},
		{szName="V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",tbProp={0,44},nCount=1,nQuality = 1,nRate=8.34},
	},
	[4887]={	
		{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,116},nCount=1,nQuality = 1,nRate=6},
		{szName="L�ng Nh�c V� Ng� ��o b�o",tbProp={0,117},nCount=1,nQuality = 1,nRate=6},
		{szName="C�p Phong Ch�n V� Ki�m",tbProp={0,121},nCount=1,nQuality = 1,nRate=6},
		{szName="C�p Phong Tam Thanh Ph� ",tbProp={0,122},nCount=1,nQuality = 1,nRate=6},	
		{szName="L�ng Nh�c N� L�i Gi�i",tbProp={0,118},nCount=1,nQuality = 1,nRate=6.5},
		{szName="C�p Phong Huy�n Ti Tam �o�n c�m",tbProp={0,123},nCount=1,nQuality = 1,nRate=6.5},
		{szName="L�ng Nh�c V� C�c Huy�n Ng�c B�i",tbProp={0,119},nCount=1,nQuality = 1,nRate=6.5},	
		{szName="C�p Phong Thanh T�ng Ph�p gi�i",tbProp={0,125},nCount=1,nQuality = 1,nRate=6.5},
		{szName="L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",tbProp={0,120},nCount=1,nQuality = 1,nRate=12.5},
		{szName="C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",tbProp={0,124},nCount=1,nQuality = 1,nRate=12.5},
		{szName="L�ng Nh�c V� Ng� Th�c ��i",tbProp={0,881},nCount=1,nQuality = 1,nRate=12.5},
		{szName="C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n",tbProp={0,888},nCount=1,nQuality = 1,nRate=12.5},
	},
	[4888]={	
		{szName="��ng C�u Phi Long ��u ho�n",tbProp={0,91},nCount=1,nQuality = 1,nRate=6},
		{szName="��ng C�u Gi�ng Long C�i Y",tbProp={0,92},nCount=1,nQuality = 1,nRate=6},
		{szName="��ch Kh�i L�c Ng�c Tr��ng",tbProp={0,96},nCount=1,nQuality = 1,nRate=6},		
		{szName="��ng C�u Ti�m Long Y�u ��i",tbProp={0,93},nCount=1,nQuality = 1,nRate=6.5},
		{szName="��ch Kh�i C�u ��i C�i Y",tbProp={0,97},nCount=1,nQuality = 1,nRate=6.5},
		{szName="��ng C�u Kh�ng Long H� Uy�n",tbProp={0,94},nCount=1,nQuality = 1,nRate=6.5},
		{szName="��ng C�u Ng� Long Ng�c B�i",tbProp={0,855},nCount=1,nQuality = 1,nRate=12.5},
		{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,95},nCount=1,nQuality = 1,nRate=12.5},
		{szName="��ch Kh�i Tri�n M�ng y�u ��i",tbProp={0,98},nCount=1,nQuality = 1,nRate=12.5},
		{szName="��ch Kh�i C�u T�ch B� H� uy�n",tbProp={0,98},nCount=1,nQuality = 1,nRate=12.5},
		{szName="��ch Kh�i Th�o Gian Th�ch gi�i",tbProp={0,100},nCount=1,nQuality = 1,nRate=12.5},
	},
}

local _GetFruit = function(nItemIndex,P)
	if ConsumeItem(3, 1, 6, 1, 4889, -1) ~= 1 then
		Talk(1, "", "C�n <color=green>Ch�a Kh�a Ho�ng Kim<color> m�i m� ���c <color=yellow>R��ng Ho�ng Kim<color>");
		return
    	end

	RemoveItemByIndex(nItemIndex)

	local tbTranslog = {strFolder ="item/", nPromID = 19, nResult = 1}
	tbAwardTemplet:Give(%tbNewItemAwardMP[P], 1,{"TinhNang_RuongHoangKimMonPhai", "SuDungRuongHoangKimMonPhai", tbTranslog})
	local msg = format("Ch�c m�ng <color=green>%s<color=pink> m� r��ng <color=yellow>B�o r��ng Ho�ng Kim <color> nh�n ���c  <color=yellow>%s<color>",GetName(),GetItemName(nItemIndex))
	Msg2SubWorld(msg);
	AddGlobalNews(msg)
end
local _OnBreak = function()
	Msg2Player("M� r��ng gi�n �o�n!")
end
function main(nItemIndex)
	dofile("script/global/pgaming/item/ruonghoangkim.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("V�t ph�m �� qu� h�n s� d�ng")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	
	if (G ~= 6) then
		return 1;
	end

	if (0 == nPlayerfaction ) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� m� r��ng.")
		return
	end

	if CalcFreeItemCellCount() < 40 then
		Talk(1, "", "Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 40 � tr� l�n nh�.");
		return 1;
	end
	if P >= 4879 and P <= 4888 then
		local nCount = CalcItemCount(3, 6, 1, 4889, -1)
		if nCount >= 1 then
			tbProgressBar:OpenByConfig(11, %_GetFruit,{nItemIndex,P}, %_OnBreak)
		else
			Talk(1, "", "C�n <color=green>Ch�a Kh�a Ho�ng Kim<color> m�i m� ���c <color=yellow>B�o R��ng Ho�ng Kim M�n Ph�i<color>");
			return 1;
		end
	end
	
	return 1;
end