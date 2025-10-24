Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\pgaming\\cauca\\head.lua")
IncludeLib("ITEM")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")

MAXCOUNT = 5

GccPos = {
{38272,93856},{38336,94400},{38048,95104},{38400,94720},{38400,94080},{37792,95360},
{40160,95040},{40000,94752},{39872,94880},{39712,94656},{39872,94432},{40096,94304},
{40320,92544},{40544,92384},{40768,92128},{41056,92000},{41312,91874},{41504,91712},
{42016,92896},{42208,93088},{42400,93248},{42592,93088},{42368,92896},{42208,92704},
{39648,91968},{39552,91584},{39712,91840},{39936,91648},{40032,91552},{39776,91328},{39616,91488},
{40384,90496},{40576,90336},{40768,90144},{40960,89984},{41120,90240},{40896,90400},
{40768,90592},{40576,90752},{41504,89248},{41696,89088},{41856,88896},{42016,88736},
{42240,88960},{42400,89152},{42528,89312},{42336,89504},{42176,89312},{42016,89120},
{41856,89280},{41696,89440},{41280,87840},{41120,88000},{40896,88160},{40736,88352},
{40544,88576},{40384,88704},{40192,88896},{40000,88704},{40192,88544},{40384,88320},
{40544,88128},{40736,87936},{40928,87808},{41088,87616},{39136,90144},{38976,89952},
{39744,86560},{39968,86368},{40096,86208},{40320,86016},{40096,85824},{39936,86016},
{39744,86176},{39584,86336},{40704,85088},{40896,84928},{41056,84768},{41248,84608},
{41440,84800},{41248,84960},{41088,85152},{40896,85344},{42752,99360},{43520,98048},
{42720,100320},{42976,100352},{43200,100512},{43392,100608},{43712,100608},{44032,100608},
{44288,100608},{42592,99168},{42784,98976},{42976,98816},{43168,99040},{42944,99200},
{43744,97824},{43904,97696},{43712,98240},{43904,98048},{44064,97888},{44352,98016},
{44608,98016},{44832,98016},{45056,98016},{44384,97792},{44608,97760},{44864,97760},
{45056,97728},{45312,97728},{47456,95136},{47264,94976},{47104,94816},{46912,94624},
{46752,94816},{46912,95008},{47072,95168},{47232,95328},{46048,93760},{46208,93632},
{45376,92608},{45216,92832},{48960,95008},{48800,94784},{48640,94592},{48960,94272},
{48832,94432},{48608,94240},{48448,94048},{48288,93856},{48096,93696},{48320,93504},
{48512,93696},{48672,93920},{48832,94080},{48992,94272},{48864,92768},{49056,92960},
{49440,92000},{49632,91840},{49824,91648},{49984,91488},{50144,91264},{50336,91488},
{50176,91648},{49952,91840},{49792,92032},{49632,92224},{49472,90304},{49280,90112},
{49088,89920},{49280,89760},{49088,89568},{48928,89760},{49280,90496},{49088,90272},
{48896,90112},{48736,89920},{48576,89760},{48416,89568},{48224,89376},{47840,90368},
{47680,90176},{47456,90304},{47296,90112},{47104,89888},{46944,89760},{46784,89536},
{46624,89696},{46976,90112},{46624,90080},{46272,89664},{46304,90048},{45952,89728},
{45984,90112},{45344,86176},{45152,85984},{45728,85216},{45920,85056},{46080,84864},
{45920,85440},{46112,85248},{46240,85120},{46432,84864},{46624,85056},{46816,85248},
{46784,84896},{47136,85248},{47136,84928},{47488,85280},{47488,84928},{47712,85120},
{47840,85312},{48032,85504},{45152,83776},{44960,83552},{44800,83424},{44608,83200},
{44448,83424},{44608,83616},{44800,83776},{44992,83968},{45152,84160},{48704,83648},
{48288,83712},{48288,83328},{48640,83296},{48320,82944},{48640,82944},{48832,82784},
{48480,82752},{48640,82560},{49856,84544},{49696,84416},{49472,84576},{49504,84192},
{49696,84000},{49536,83840},{49888,83840},{49664,83648},{49888,83488},{50080,83328},
{46784,79680},{46528,79712},{46272,79712},{46016,79712},{45792,79584},{45664,77056},
{45792,76896},{46112,76928},{46336,77120},{46496,77280},{46688,77440},{46848,77312},
{46688,77120},{45952,76352},{45760,76576},{45632,76704},{45472,76832},
};

function GetNearstPos(X,Y, PosTab)
	PosCount = getn(PosTab);
	PosId = 0;
	MaxDist = 999999999;

	BeyondCount = 0;---gi do

	for i = 1, PosCount do 
		Dist = sqrt( (X-PosTab[i][1]) * (X-PosTab[i][1]) + (Y - PosTab[i][2]) * (Y - PosTab[i][2]))
		if (Dist >= 250) then 
			BeyondCount = BeyondCount + 1;
		end;
		if (i == 1) then 
			PosId = 1
			MaxDist = Dist
		elseif (MaxDist > Dist) then 
			PosId = i
			MaxDist = Dist
		end
	end;

	if (BeyondCount >= PosCount) then
		return 0
	else
		return PosId;
	end;
end

local _GetFruit = function(nItemIndex)
	if random(1,100) <= 70 then
		AddItem(6,1,4902,1,0,0,0)
	 Msg2Player("<color=0xa9ffe0>§©y råi, ®©y råi!")
	else
	Msg2Player("<color=yellow>ThËt ®¸ng tiÕc, kh«ng cã con c¸ nµo!")
	end
	DemSoLan(nItemIndex)
	RestoreOwnFeature()
end
local _OnBreak = function()
	RestoreOwnFeature()
	Msg2Player("Bña l­íi gi¸n ®o¹n")
end
function main(nItemIdx)
	local G,D,P,nLevel = GetItemProp(nItemIdx);
	if (G ~= 6) then
		return 1;
	end
	
	local nThoiGian = tonumber(date("%H%M"))
	if (nThoiGian < 0600 or nThoiGian > 1000) and (nThoiGian < 1600 or nThoiGian > 2100) then
		Talk(1,"","Thêi gian nµy kh«ng tèt ®Ó c©u c¸, h·y quay l¹i sau \n<color=yellow>6h00 - 10h00, 16h00 - 21h00<color> h»ng ngµy")
		return 1;
	end

	if (0 == GetCamp()) then
	Talk(1,"","B¹n ch­a gia nhËp <color=yellow> M«n Ph¸i <color> kh«ng thÓ c©u c¸")
	return 1;
	end
	
	if (GetFightState() == 0) then
	Talk(1,"","Tr¹ng th¸i phi chiÕn ®Êu kh«ng thÓ c©u c¸")
	return 1;
	end

	local nSubWorldID = GetWorldPos();
	if (nSubWorldID < 1009) then
		Msg2Player("Khu vùc nµy kh«ng thÓ c©u c¸.");
		return 1
	end

	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 6 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
	end
	w,x,y=GetWorldPos()
	PosId = GetNearstPos(x*32,y*32, GccPos);
	if (PosId == 0) then 
		Say("B¹n ®øng c¸ch khu vùc c©u c¸ qu¸ xa, h·y ®Õn nh÷ng n¬i chØ ®Þnh trªn b¶n ®å ®Ó c©u c¸",0)
		return 1
	end;

	if P == 4895 then  
		ChangeOwnFeature( 1, 63*18, 299,  0, 0, 0, 0)
		tbProgressBar:OpenByConfig(22, %_GetFruit,{nItemIdx}, %_OnBreak)
	end
	return 1
end
function DemSoLan(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	local itemname = "<color=yellow>"..GetItemName(nItemIdx).."<color>"
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
	else
		Msg2Player(""..itemname.." cßn sö dông "..(MAXCOUNT - n_param).." lÇn")
	end
end

function GetDesc(nItemIdx)
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\nCã thÓ sö dông <color=yellow>%d<color> lÇn", (MAXCOUNT - n_param));
	return szDesc;
end
