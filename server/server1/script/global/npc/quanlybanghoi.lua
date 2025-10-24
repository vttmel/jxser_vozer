-- Qu¶n Lý Bang Héi ë c¸c th«n trang - Editor by AloneScript (Linh Em)

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

TB_JiangHuXingBaoDian = {
		[32] = {
			szTitleMsg = "<dec>§· tr¶i qua biÕt bao nhiªu ©n o¸n giang hå, ng­¬i cã ph¶i lµ ®· cã mét ®¸m huynh ®Ö tû muéi ®ång cam céng khæ? Ng­¬i cã muèn l·nh ®¹o hä, cïng nhau t¹o ra mét m«n vâ c«ng V¹n ThÕ BÊt DiÖt, c­íp ®o¹t quyÒn së h÷u 7 thµnh tr×, ®Ó hä cã thÓ cïng nhau h­ëng vinh hoa phó quý. VËy th× h·y lËp ra Bang Héi riªng cho m×nh, viÕt vµo ®ã c¸c ©n o¸n t×nh thï, nhi n÷ t×nh tr­êng, c­íp thuyÒn, ®o¹t thµnh, c­íp BOSS.",
			tbOpt = {
				[1] = {"Thµnh lËp Bang Héi", 33},
				[2] = {"Khu vùc Bang Héi", 34},
				[3] = {"KÕt cÊu tæ chøc", 35},
				[4] = {"Quü cña Bang Héi", 36},
				[5] = {"Lîi nhuËn cña Bang Héi", 37},
				[6] = {"Liªn minh Bang Héi", 38},
				[7] = {"Môc tiªu Bang Héi hµng tuÇn", 39},
				[8] = {"Gi¶i t¸n Bang Héi", 40}
			},
		},
		[33] = { szTitleMsg = "<dec>Sau khi héi ®ñ c¸c ®iÒu kiÖn bªn d­íi, ng­¬i cã thÓ ®Õn Hoa S¬n (293.218) t×m Tèng Kim ch­ëng m«n nh©n ®Ó thµnh lËp Bang Héi.<enter>1. Nh©n vËt kh«ng thuéc Bang Héi, m«n ph¸i nµo, hiÖn lªn ch÷ ®á.<enter>2. §¼ng cÊp 150 trë lªn.<enter>3. §iÓm danh väng 450 trë lªn, Danh väng cã thÓ nhËn ®­îc th«ng qua lµm nhiÖm vô, bao gåm c¶ nhiÖm vô T©n thñ th«n.<enter>4. Tµi l·nh ®¹o 30 trë lªn.<enter>5. ChiÕn lîi phÈm Tèng Kim ®¹i thµnh: Nh¹c V­¬ng KiÕm (§iÓm tÝch lòy Tèng Kim cã thÓ dïng ®Ó ®æi Nh¹c V­¬ng Hçn Th¹ch t¹i Qu©n Nhu Quan, 100 Nh¹c V­¬ng Hçn Th¹ch cã thÓ ®æi ®­îc 1 Nh¹c V­¬ng KiÕm. Cã thÓ mua trùc tiÕp Nh¹c V­¬ng KiÕm lÔ bao t¹i Kú Tr©n C¸c më ra ®Ó nhËn).<enter>6. TiÒn: 100 v¹n l­îng",tbOpt = {{"Trë vÒ", 32},},},
		[34] = { szTitleMsg = "<dec>Ng­¬i cã thÓ tíi chç tÕ r­îu cña thÊt ®¹i thµnh thÞ sö dông ®¹o cô 'Thanh ®ång ®Ønh' ®Ó thiÕt lËp mét tÊm b¶n ®å ®éc lËp cña Bang Héi, ®èi víi 7 thµnh thÞ kh¸c nhau th× b¶n ®å sÏ kh¸c nhau.",tbOpt = {{"Trë vÒ", 32},},},
		[35] = { szTitleMsg = "<dec>Ng­¬i cã thÓ ra lÖnh cho nhiÒu nhÊt lµ 7 Tr­ëng L·o, nhiÒu nhÊt 56 §éi Tr­ëng, ®èi víi c¸c hÖ ph¸i kh¸c nhau cã thÓ ®æi nhiÒu nhÊt 56 tªn, mçi tªn dµi nhÊt lµ 4 ch÷ h¸n. ",tbOpt = {{"Trë vÒ", 32},},},
		[36] = { szTitleMsg = "<dec>Quü bang héi lµ mét hÖ thèng chung, dïng ®Ó cÊt gi÷ tµi s¶n chung cña Bang Héi.",tbOpt = {{"Trë vÒ", 32},},},
		[37] = { szTitleMsg = "<dec>Ng­¬i cã thÓ th«ng qua ph­¬ng thøc tiÒn th­ëng ®Ó ph©n chia quü cho c¸c thµnh viªn Bang Héi, cã thÓ th«ng qua giao diÖn tiÒn th­ëng ph©n chia ph¸t th­ëng cho 3 cÊp bËc kh¸c nhau cña Bang Héi lµ: Tr­ëng L·o, §éi Tr­ëng vµ Bang Chóng. ",tbOpt = {{"Trë vÒ", 32},},},
		[38] = { szTitleMsg = "<dec>Ng­¬i còng cã thÓ liªn kÕt víi c¸c Bang Héi kh¸c lËp thµnh Liªn minh Bang Héi, trong mçi Bang Héi liªn minh cÇn ph¶i cã mét Bang Héi Minh Chñ, cã Ýt nhÊt mét Bang Héi thµnh viªn, vµ kh«ng v­ît qu¸ 7 Bang Héi thµnh viªn.",tbOpt = {{"Trë vÒ", 32},},},
		[39] = { szTitleMsg = "<dec>Do hÖ thèng chän ngÉu nhiªn mét trong c¸c tÝnh n¨ng Tèng Kim, D· TÈy, V­ît ?i...ChØ cã Bang Héi hoµn thµnh nhiÖm vô nµy. C¸c thµnh viªn Bang Héi ®Òu cã thÓ nhËn ®­îc nh÷ng lîi Ých phong phó, Bang chñ cã thÓ nhËn ®­îc lÖnh bµi BOSS",tbOpt = {{"Trë vÒ", 32},},},
		[40] = { szTitleMsg = "<dec>Khi Bang Héi kh«ng ®ñ 16 ng­êi th× sÏ tiÕn hµnh vµo kú kh¶o nghiÖm, nÕu nh­ sau 3 ngµy sè thµnh viªn kh«ng ®ñ 16 ng­êi th× Bang Héi sÏ gi¶i t¸n. H·y t¹o t×nh ®oµn kÕt gi÷a c¸c anh em trong Bang. ",tbOpt = {{"Trë vÒ", 32},},},
	};
	
function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	local tbDailog = DailogClass:new(szNpcName)
	tbDailog.szTitleMsg = "<npc>VÞ thiÕu hiÖp nµy cã muèn gia nhËp Bang Héi kh«ng?"
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	
	tbDailog:AddOptEntry("Xem tin tøc hç trî Bang Héi", TongHelp);
	tbDailog:AddOptEntry("Më giao diÖn chiªu mé Bang Héi", NeedOpenTongZhaoMu);
	
	tbDailog:Show()
end

function jianghuxing_showdiag(nidx, nbackidx)
	local tb_dailog = {};
	
	if (not TB_JiangHuXingBaoDian[nidx].szTitleMsg) then
		print("Error!!There Is No Titlemsg!!");
		return
	end
	
	tb_dailog[1] = TB_JiangHuXingBaoDian[nidx].szTitleMsg;
	
	if (TB_JiangHuXingBaoDian[nidx].tbOpt) then
		for nkey, szopp in TB_JiangHuXingBaoDian[nidx].tbOpt do
			tinsert(tb_dailog, format("%s/#jianghuxing_showdiag(%d)", szopp[1], szopp[2]));
		end
	end
	
	tinsert(tb_dailog, "KÕt thóc ®èi tho¹i/OnCancel");
	
	CreateTaskSay(tb_dailog);
end

function OnCancel()
end

function NeedOpenTongZhaoMu()
	OpenTongZhaoMu()
end

function TongHelp()
	jianghuxing_showdiag(32)
end
