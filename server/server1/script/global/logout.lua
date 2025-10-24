CP_TASKID_LOGOUT = 1094
Include("\\script\\task\\tollgate\\messenger\\messenger_lievegame.lua")
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\event\\storm\\logout.lua")
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\logout_head.lua")
Include("\\script\\global\\limitaccount_ip.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--========================Xep Hang Tinh Luc==============================
Include("\\script\\global\\pgaming\\xephang\\worldrank_hook.lua")
--===================================================================
function main()
--========================Giíi h¹n account=================================
if GioiHanLoginIP == 1 then
	LimitAccountPerIP:Logout()
end
--========================Xep Hang Tinh Luc=================================
	local NameOfGameMaster = GameMaster
	if GetName() ~= NameOfGameMaster then
		RemoteExc("\\script\\xephang\\bangxephang.lua", "TbRank:UpdateRankAll",
		{GetLevel(), GetName(), GetCash(), GetBoxMoney(), GetLastFactionNumber(), GetTong(), GetCamp(), GetTask(2501), GetTask(5987), GetRepute(), GetTask(151), GetTask(5985), GetTask(5982), GetExpPercent()})
		RemoteExc("\\script\\xephang\\worldrank_hook.lua", "RankHook:UpdateData", {GetName(), GetLevel(), GetExpPercent()})
	end
--=========================================================================
	if IsIPBonus() == 1 then
		IpBonus_Close()
	end
	SetTask(CP_TASKID_LOGOUT, 0)	
	for i = 1, getn(TB_LOGOUT_FILEFUN) do
		local reg = TB_LOGOUT_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex)
	end
	local MapId = SubWorldIdx2ID( SubWorld )
	if ( MapId >= 387  and MapId <= 395) then
		messenger_livegame()
	end	
	storm_logout()
	PlayerList:DelPlayer(PlayerIndex)
	SaveNow()
end

function RemoveExchange()
	for i = 1, getn(TB_EXCHANGE_FILEFUN) do
		local reg = TB_EXCHANGE_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex)
	end
	PlayerList:DelPlayer(PlayerIndex)
end
