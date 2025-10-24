
function GM_ReloadScript()
	ReloadAllScript()
end


function GMToolMenu()
	local tbSay = {}
	tinsert(tbSay,"Max speed/GM_MaxSpeed")
	tinsert(tbSay,"Level 99/GM_Level99")
	tinsert(tbSay,"1000 vπn/GM_Add1000v")
	tinsert(tbSay,"Tho∏t/Quit")
	Say("Ch‰n t›nh n®ng:",getn(tbSay),tbSay)
end


function GM_command()
	AskClientForString("GM_Action","",0,255,"command")
end


function GM_Action(szCommand)
	dostring(szCommand)
	GM_command()
end


function GM_MaxSpeed()
	AddMagic(160,60)
	GMToolMenu()
end


function GM_Level99()
	local nLevel = GetLevel()
	if nLevel < 99 then
		ST_LevelUp(99 - nLevel)
	end
	GMToolMenu()
end


function GM_Add1000v()
	Earn(10000000)
	GMToolMenu()
end