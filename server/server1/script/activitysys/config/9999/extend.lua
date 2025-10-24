Include("\\script\\activitysys\\config\\9999\\head.lua")
Include("\\script\\activitysys\\config\\9999\\variables.lua")

Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\log.lua")



function pActivity:DropItemEvent(nNpcIndex)
	local nWorld, nPosX, nPosY = GetWorldPos();
	local TB_FORBITMAP = {11,1,37,176,162,78,80,174,121,153,101,99,100,20,53,175};
	for i = 1, getn(TB_FORBITMAP) do
		if (TB_FORBITMAP[i] == nWorld) then
		return end
	end
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, %tbKillMonstorAward, "Drop Material Bag", 1)
end