Include("\\script\\global\\pgaming\\xephang\\inc.lua")
IL("RELAYLADDER")

RankHook = {
	LGID = 8888,
	TaskLevel = 1,
	TaskRank = 2,
}

function RankHook:GetRank(nName)
	local nRankNum = LG_GetLeagueTask(self.LGID, nName, self.TaskRank)
	SetEnergy(nRankNum)
	
end