Include("\\script\\global\\login_head.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");

function LoginMessage()
	local nLevel = GetLevel();
	if (nLevel == 1) then
		Msg2Player("<color=green>Chµo mõng <color=yellow>"..GetName().."<color> ®· ®Õn víi thÕ giíi Vâ L©m TruyÒn Kú")
	end
	
	if (nLevel > 1) then		
		Msg2Player("<color=green>Server cµy cuèc giµnh cho c¸c b¹n nµo ®am mª game Vâ L©m TruyÒn Kú phiªn b¶n HKMP. Chóc c¸c b¹n cã nhiÒu søc kháe vµ cã nh÷ng gi©y phót th­ gi·n vui vÏ trong game.")
	end
	if GetTask(5751) == 0 then 
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1266,0,0,0}, nBindState=-2}, "ThÇn Hµnh Phï", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,438,0,0,0}, nBindState=-2}, "Thæ §Þa Phï", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1181,0,0,0}, nCount=3, nBindState=-2}, "Tiªn Th¶o Lé §Æc BiÖt", 1);
	--tbAwardTemplet:GiveAwardByList({tbProp = {4,417}, nCount=10, nBindState=-2}, "TiÒn §ång", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4851,0,0,0}, nBindState=-2}, "CÈm Nang N»m Th¼ng", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4921,0,0,0}, nBindState=-2}, "Tói Y TÕ", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {0,10,2,10,0,0}, nWidth=2, nHeight=3}, "Ngùa T©n Thñ", 1);
	--tbAwardTemplet:GiveAwardByList({tbProp = {0,13,0,1,0,0}, nWidth=1, nHeight=1}, "T©n thñ Ên", 1);
	--tbAwardTemplet:GiveAwardByList({tbProp = {0,14,0,1,0,0}, nWidth=1, nHeight=1}, "T©n thñ trang søc", 1);
	--tbAwardTemplet:GiveAwardByList({tbProp = {0,5290}, nCount=1, nQuality=1, nBindState=-2}, "T©n Thñ Giíi ChØ", 1);
	AddLeadExp(1000000000)
	Earn(5000)
	SetTask(5751,1)
	end
end

if login_add then login_add(LoginMessage, 1) end