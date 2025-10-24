
Include("\\script\\misc\\eventsys\\type\\npc.lua");

TAB_TRANGSUC = {
	{szName="Tr­êng sinh", tbProp={0,3491}, nQuality=1},
	{szName="Bét H¶i", tbProp={0,3492}, nQuality=1},
	{szName="Vò Uy", tbProp={0,3493}, nQuality=1},
	{szName="Nh­îc Thñy", tbProp={0,3494}, nQuality=1},
	{szName="TrÊn Nh¹c", tbProp={0,3495}, nQuality=1},
	{szName="Yªn Ba", tbProp={0,3496}, nQuality=1},
	{szName="ThÇn TuÖ", tbProp={0,3497}, nQuality=1},
	{szName="Truy Anh", tbProp={0,3498}, nQuality=1},
	{szName="Long §¶m", tbProp={0,3499}, nQuality=1},
	{szName="L­u Huúnh", tbProp={0,3500}, nQuality=1},
	{szName="Cuång Lan", tbProp={0,3501}, nQuality=1},
	{szName="Thóy Ngäc B¨ng HuyÒn", tbProp={0,3502}, nQuality=1},
	{szName="Hång Anh", tbProp={0,3503}, nQuality=1},
	{szName="Ng­ng TuyÕt Hµn S­¬ng", tbProp={0,3504}, nQuality=1},
	{szName="DiÖu Gi¶i TrÇn Duyªn", tbProp={0,3505}, nQuality=1},
	{szName="Lùc Ph¸ Qu©n Tinh", tbProp={0,3506}, nQuality=1},
};

function TrangSuc()
	AddItemByTable("B¹n muèn lÊy trang søc lo¹i nµo?", TAB_TRANGSUC)
end


-- pEventType:Reg("TÝnh n¨ng thö nghiÖm", "Trang søc", TrangSuc);