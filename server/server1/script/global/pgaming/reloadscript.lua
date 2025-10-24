--================================================-- Reload Script --=================================================--
Include("\\script\\lib\\remoteexc.lua")

function ReLoadScriptWithLinkInput(LinkReload)
	if type(LinkReload) == "string" then
		local LinkReload = LinkReload
		local Keywk1 = strfind(LinkReload, "\script")
		LinkReload = strsub(LinkReload, Keywk1-1, strlen(LinkReload))
		local RLScript = LoadScript(LinkReload);
		if (FALSE(RLScript)) then
			return Msg2Player("Error,False to ReLoading Script!<enter><color=yellow>"..LinkReload.."");
		else
			return Msg2Player("<color=green>Script has been reloaded<color><enter><color=blue>"..LinkReload.."");
		end
	end
	return AskClientForString("ReLoadScriptWithLinkInput", "", 1, 500, "<#>NhËp ®­êng dÉn")
end



function ReloadScriptTb(Sel)
	local ScriptNeedReload = {
		{"\\script\\global\\Â·ÈË_Àñ¹Ù.lua", "LÔ Quan"},
		{"\\script\\global\\seasonnpc.lua", "D· tÈu"},
		{"\\script\\global\\pgaming\\reloadscript.lua", "B¶o tr× server"},
		{"\\script\\global\\pgaming\\configserver\\configall.lua", "File §iÒu ChØnh Server"},
		{"\\script\\global\\gm\\gm_script.lua", "LÖnh bµi GM"},
	}
	if Sel then
		local CheckScriptReLoaded =  LoadScript(ScriptNeedReload[Sel][1])
		if (FALSE(CheckScriptReLoaded)) then
			Msg2Player("\nError,False to ReLoading Script!<enter><color=yellow>"..ScriptNeedReload[Sel][1].."\n<color=yellow>"..ScriptNeedReload[Sel][2]);
		else
			Msg2Player("\n<color=green>Script has been reloaded<color><enter><color=blue>"..ScriptNeedReload[Sel][1].."\n<color=yellow>"..ScriptNeedReload[Sel][2]);
		end
		return
	end
	dofile ("script/global/pgaming/reloadscript.lua");
	Msg2Player("<color=green>Dofile ReloadScript!")
	local szTitle = ""
	tbOpt = {
		{"NhËp ®­êng dÉn file", ReLoadScriptWithLinkInput},
	}
	for i = 1, getn(ScriptNeedReload) do
		szTitle = szTitle.."<enter>"..i.." - "..ScriptNeedReload[i][1]
		tinsert(tbOpt, {i.." - "..ScriptNeedReload[i][2], ReloadScriptTb, {i}})
	end
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i", OnCancel})
	CreateNewSayEx(szTitle, tbOpt)
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end
--==============================================-- END Reload Script--===============================================--