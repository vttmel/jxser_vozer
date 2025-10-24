IncludeLib("SETTING")
IncludeLib("TONG")
IncludeLib("RELAYLADDER");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\fuyuan.lua")
szNpcName = "<color=yellow>Hç trî T©n thñ<color>: "
szPlayer = "§¹i HiÖp"
if GetSex() == 1 then
	szPlayer = "N÷ HiÖp"
end


tbSkillBook902 = {
	shaolin = {56,57,58},
	tianwang = {37,38,39},
	tangmen = {27,28,45,46},
	wudu = {47,48,49},
	emei = {42,43,59},
	cuiyan = {40,41},
	gaibang = {54,55},
	tianren = {35,36,53},
	wudang = {33,34},
	kunlun = {50,51,52},
}

tbAllSkill2 = {
	shaolin = {
		[0] = {10,14},
		[1] = {4,6,8},
		[2] = {15},
		[3] = {16},
		[4] = {20},
		[5] = {11,19,271},
		[6] = {21,273},
		--[9] = {318,319,321},
	},
	tianwang = {
		[0] = {29,30,34},
		[1] = {23,24,26},
		[2] = {33},
		[3] = {31,35,37},
		[4] = {40},
		[5] = {42},
		[6] = {32,36,41,324},
		--[9] = {322,323,325},
	},
	tangmen = {
		[0] = {45},
		[1] = {43,347},
		[2] = {303},
		[3] = {47,50,54,343},
		[4] = {345},
		[5] = {349},
		[6] = {48,58,249,341},
		--[9] = {302,339,342,351},
	},
	wudu = {
		[0] = {63,65},
		[1] = {60,62,67},
		[2] = {66,70},
		[3] = {64,68,69,384},
		[4] = {73,356},
		[5] = {72},
		[6] = {71,74,75},
		--[9] = {353,355,390},
	},
	emei = {
		[0] = {80,85},
		[1] = {77,79},
		[2] = {93},
		[3] = {82,89,385},
		[4] = {86},
		[5] = {92},
		[6] = {88,91,252,282},
		--[9] = {328,332,380},
	},
	cuiyan = {
		[0] = {99,102},
		[1] = {95,97},
		[2] = {269},
		[3] = {105,113},
		[4] = {100},
		[5] = {109},
		[6] = {108,111,114},
		--[9] = {336,337},
	},
	gaibang = {
		[0] = {119,122},
		[1] = {115,116},
		[2] = {129},
		[3] = {124,274},
		[4] = {277},
		[5] = {125,128},
		[6] = {130,360},
		--[9] = {357,359},
	},
	tianren = {
		[0] = {135,145},
		[1] = {131,132,136},
		[2] = {137},
		[3] = {138,140,141},
		[4] = {364},
		[5] = {143},
		[6] = {142,148,150},
		--[9] = {361,362,391},
	},
	wudang = {
		[0] = {153,155},
		[1] = {151,152},
		[2] = {159},
		[3] = {158,164},
		[4] = {160},
		[5] = {157},
		[6] = {165,166,267},
		--[9] = {365,368},
	},
	kunlun = {
		[0] = {169,179},
		[1] = {167,168,171,392},
		[2] = {174},
		[3] = {172,173,178,393},
		[4] = {175,181},
		[5] = {90,176},
		[6] = {182,275,630},
		--[9] = {372,375,394},
	},
}

function HoTroSkill2()
	local nIndex = floor(GetLevel()/10)
	local szFaction = GetFaction()
	if tbAllSkill2[szFaction] == nil then
		return
	end
	if nIndex == 6 then
	SetTask(5744,1)
	end
	if nIndex >= 1 then
		for i=1, min(7,nIndex) do
			if tbAllSkill2[szFaction][i] ~= nil then
				for j=1, getn(tbAllSkill2[szFaction][i]) do
					if i ==7 then
						if HaveMagic(tbAllSkill2[szFaction][i][j]) == -1 then
							--AddMagic(tbAllSkill2[szFaction][i][j],20)							
						end
					else
						if HaveMagic(tbAllSkill2[szFaction][i][j]) == -1 then
							AddMagic(tbAllSkill2[szFaction][i][j])
						end
					end
				end
			end
		end
	end
	Talk(1,"",szNpcName.."Vâ häc ®· ®­îc truyÒn thô, "..szPlayer .." h·y thö vËn c«ng n©ng thµnh xem sao.")
end