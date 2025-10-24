
Include("\\script\\misc\\eventsys\\type\\npc.lua");

TAB_NGUHANHAN = {
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 1", tbProp={0,3205}, nQuality=1},
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 2", tbProp={0,3206}, nQuality=1},
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 3", tbProp={0,3207}, nQuality=1},
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 4", tbProp={0,3208}, nQuality=1},
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 5", tbProp={0,3209}, nQuality=1},
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 6", tbProp={0,3210}, nQuality=1},
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 7", tbProp={0,3211}, nQuality=1},
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 8", tbProp={0,3212}, nQuality=1},
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 9", tbProp={0,3213}, nQuality=1},
	{szName="Hoµng Kim Ên (C­êng hãa) - CÊp 10", tbProp={0,3214}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 1", tbProp={0,3215}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 2", tbProp={0,3216}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 3", tbProp={0,3217}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 4", tbProp={0,3218}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 5", tbProp={0,3219}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 6", tbProp={0,3220}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 7", tbProp={0,3221}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 8", tbProp={0,3222}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 9", tbProp={0,3223}, nQuality=1},
	{szName="Hoµng Kim Ên (Nh­îc hãa) - CÊp 10", tbProp={0,3224}, nQuality=1},
};

function NguHanhAn()
	AddItemByTable("B¹n muèn lÊy Ên lo¹i nµo?", TAB_NGUHANHAN)
end


-- pEventType:Reg("TÝnh n¨ng thö nghiÖm", "Ngò hµnh Ên", NguHanhAn);