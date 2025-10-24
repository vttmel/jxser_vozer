BOSS_INFO = {
	{"Cæ B¸ch", 566, 95, 0, {"Phï Dung ®éng","S¬n B¶o ®éng","city"}},
	{"HuyÒn Gi¸c §¹i S­", 740, 95, 0, {"Nh¹n Th¹ch ®éng","Thanh khª ®éng","city"}},
	{"§­êng Phi YÕn", 1366, 95, 1, {"Phong L¨ng ®é","Kho¶ Lang ®éng","city"}},
	{"Lam Y Y", 582, 95, 1, {"Vò L¨ng ®éng","Phi Thiªn ®éng","city"}},
	{"Hµ Linh Phiªu", 568, 95, 2, {"Tr­êng B¹ch s¬n B¾c","V« Danh ®éng","city"}},
	{"Yªn HiÓu Tr¸i", 744, 95, 2, {"Sa M¹c s¬n  ®éng 1","Sa M¹c s¬n  ®éng 3","city"}},
	{"M¹nh Th­¬ng L­¬ng", 583, 95, 3, {"Sa m¹c ®Þa biÓu","Sa M¹c s¬n  ®éng 2","city"}},
	{"Gia LuËt TÞ Ly", 563, 95, 3, {"L­ìng Thñy ®éng","D­¬ng Trung ®éng","city"}},
	{"§¹o Thanh Ch©n Nh©n", 562, 95, 4, {"Tr­êng B¹ch s¬n Nam","M¹c Cao QuËt","city"}},
	{"TuyÒn C¬ Tö", 747, 95, 4, {"T©y S¬n ®¶o","Phi Thiªn ®éng","city"}},
	{"V­¬ng T¸", 739, 95, 0, {"Vò L¨ng ®éng","Phï Dung ®éng","city"}},
	{"HuyÒn Nan §¹i S­", 1365, 95, 0, {"Phong L¨ng ®é","Kho¶ Lang ®éng","city"}},
	{"§­êng BÊt NhiÔm", 741, 95, 1, {"Tr­êng B¹ch s¬n Nam","Nh¹n Th¹ch ®éng","city"}},
	{"B¹ch Doanh Doanh", 742, 95, 1, {"Thanh khª ®éng","Sa m¹c ®Þa biÓu","city"}},
	{"Thanh TuyÖt S­ Th¸i", 743, 95, 2, {"T©y S¬n ®¶o","D­¬ng Trung ®éng","city"}},
	{"Chung Linh Tó", 567, 95, 2, {"Phi Thiªn ®éng","V« Danh ®éng","city"}},
	{"Hµ Nh©n Ng·", 745, 95, 3, {"Nh¹n Th¹ch ®éng","L­ìng Thñy ®éng","city"}},
	{"§oan Méc DuÖ", 565, 95, 3, {"Phong L¨ng ®é","S¬n B¶o ®éng","city"}},
	{"Tõ §¹i Nh¹c", 1367, 95, 4, {"M¹c B¾c Th¶o Nguyªn","Vò L¨ng ®éng","city"}},
	{"Thanh Liªn Tö", 1368, 95, 4, {"Tr­êng B¹ch s¬n B¾c","Sa M¹c s¬n  ®éng 3","city"}},
}
function TaskShedule()
	TaskName( "Xoa BOSS DAI HOANG KIM 23:00" );
	TaskInterval( 1440 );
	TaskTime( 23, 00 );
	TaskCountLimit( 0 );
	OutputMsg( "=====> Xoa Boss Dai Hoang Kim :  23:00" );
end

function TaskContent()
	for i = 1, getn(BOSS_INFO) do
		bossname = BOSS_INFO[i][1]
		bossid = BOSS_INFO[i][2]
		GlobalExecute(format("dw XoaBossDai(%d, [[%s]] )",bossid,bossname));
	end
	OutputMsg( "=====> Xoa Boss Dai Hoang Kim :  22:50" );
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
