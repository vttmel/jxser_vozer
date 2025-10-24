-- ¶¨Ê±ÏòÒ»×é·þÎñÆ÷µÄËùÓÐGameserver·¢ÏµÍ³¹«¸æ
Include("\\script\\gb_modulefuncs.lua")
tab_GameSetting = 
{
"Vuot Ai",--ÄêÊÞ
"Phong Lang Do",--ÉÌ³Ç
"Tong Kim",--Msg2SubWorld
"Boss Hoang Kim",--AddLocalNews
"Boss Tieu Hoang Kim", 
--"Cong Thanh Chien 3 Tru",
"That Thanh Dai Chien",
"Doan Hoa Dang",--AddLocalNews and AddGift
--"Dau Nguu",
--"Loan Chien Cuu Chau Coc",
--"Tin Su",
"Lien Dau",
}

function TaskShedule()
	TaskName("ThiÕt kÕ  hÖ thèng trß ch¬i");
	TaskInterval(1000000);
	TaskCountLimit(0);
	OutputMsg("=====> BAT DAU KHOI DONG CAC TINH NANG CUA GAME VO LAM TRUYEN KY <=====");
end

function TaskContent()
	for i = 1, getn(tab_GameSetting) do 
		gb_AutoStartModule(tab_GameSetting[i])
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
