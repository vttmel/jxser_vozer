-- TiÓu §Æng Tö ë T­¬ng D­¬ng - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\answer.lua")

function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	tbDailog.szTitleMsg = "<npc>Ta ®· ¨n ch¸o víi khoai h¬n mét tuÇn råi. Gi¸ mµ ¨n ®­îc mét b÷a c¬m no nª nhØ?"..Note("tieudangtu_tuongduong")
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	--µ¯³ö¶Ô»°¿ò
	tbDailog:Show()
end

