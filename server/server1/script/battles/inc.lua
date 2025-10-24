IncludeLib("ITEM")
IncludeLib("FILESYS")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\remoteexc.lua")

_TONGKIM_INC_G_iNumber = {}
_TONGKIM_INC_G_iItem = {}

if not (_TONGKIM_INC) then
	_TONGKIM_INC = 1
	
battles = {
	iNumber = function(_1, _2, _3, _4)
		if not(_TONGKIM_INC_G_iNumber[PlayerIndex]) then
			_TONGKIM_INC_G_iNumber[PlayerIndex] = {}
		end
		_TONGKIM_INC_G_iNumber[PlayerIndex] = _4
		return AskClientForNumber("CallFunc_battles_iNumber", _1, _2, _3)
	end,
	
	iItem = function(Title, Desc, Array)
		if not(_TONGKIM_INC_G_iItem[PlayerIndex]) then
			_TONGKIM_INC_G_iItem[PlayerIndex] = {}
		end
		_TONGKIM_INC_G_iItem[PlayerIndex] = Array
		return GiveItemUI(Title, Desc, "CallFunc_battles_iItem", "battles.OnCancel", 1)
	end,

	Time = {
		SetExpired = function(nTime, nTask)
			if not(nTask) or battles.False(nTask) then
				return Msg2Player("Time.SetExpired: Null Task!")
			end
			SetTask(nTask, (nTime or 0) + ((GetTask(nTask) ~= 0) and GetTask(nTask) or GetCurServerTime()))
		end,
		
		GetExpired = function(Task)
			return battles.False(GetTask(Task)) and nil or (((GetTask(Task) - GetCurServerTime()) > 0) and (GetTask(Task) - GetCurServerTime()) or nil)
		end,
	},

	False = function(battlesVal)
		if (not(battlesVal) or battlesVal == nil or battlesVal == 0 or battlesVal == "") then return 1 
		else return nil end
	end,
	
	True = function(battles_In_1)
		if battles.False(battles_In_1) then return nil
		else return 1 end
	end,
	
	Str2Byte = function(string, b_Count)
		local len, battlesByteRet = strlen(string), ""
		for i = 1, len do battlesByteRet = battlesByteRet..strbyte(string, i) end
		if (b_Count == 1) then
			return battlesByteRet, battles.Math.Count(battlesByteRet)
		else
			return battlesByteRet
		end
	end,
	
	Math = {
		Count = function(nListNumber)
			local a_s = tostring(nListNumber)
			local a = strlen(a_s)
			local b, b_n = 0, 0
			if battles.False(a) then return 0 end
			for i = 1, a do
				b_n = 0
				b_n = tonumber(strsub(a_s, i, i))
				b = b + ((type(b_n) == "number") and b_n or 0)
			end
			return b
		end,
	},
	
	C = function(CodeColor, battlesStr)
		local battlesColorTb = {yel = "yellow",gre = "green",ora = "Orange",blu = "blue",red = "red",woo = "wood",fir = "fire",}
		-- 										1				2			  3		 4				5			6			 7			 8				9					10				11
		local battlesColorTbNum = {"yellow","green","red","Orange","blue","wood","fire", "white", "0x92ff8f", "0xa9ffe0", "0x00ffff"}
		if type(CodeColor) == "number" then return "<color="..battlesColorTbNum[CodeColor]..">"..battlesStr.."<color>" end
		return "<color="..battlesColorTb[CodeColor]..">"..battlesStr.."<color>"
	end,
	
	InitRandMemTb = function(battles_1)
		local battles_tb, battles_2, battles_3 = {}, 0, 0
		for i = 1, battles_1 do tinsert(battles_tb, i) end
		for i2 = 1, battles_1 do
			battles_2 = random(1, battles_1)
			battles_3 = battles_tb[i2]
			battles_tb[i2] = battles_tb[battles_2]
			battles_tb[battles_2] = battles_3
		end
		return battles_tb
	end,
	
	TaskDate = function(battles_1, battles_2, battles_3)
		local battles_4 = tonumber(date("%y%m%d"))
		if GetTask(battles_1) ~= battles_4 then
			SetTask(battles_1, battles_4)
			SetTask(battles_3, battles_2)
			return 0
		else
			return GetTask(battles_3)
		end
	end,
	
	Pack = function(...)
		return arg
	end,
	
	Talk = function(_s)
		return Talk(1,"", _s)
	end,
	
	UpLevel = function(n_1)
		if GetLevel() >= n_1 then return end
		while GetLevel() < n_1 do
			AddOwnExp(999999999)
		end
	end,
	
	Say = function(battles_In_1, battles_In_2, battles_In_3, battles_In_4)
		local battles_1, battles_2, battles_3, battles_4, battles_6, battles_7 = battles_In_1, nil, {}, 1, nil, {cc = {}}
		if not(battles_In_1) then return end
		if getn(battles_In_1) > 1 then
			battles_4 = getn(battles_In_1)
		end
		for battles_l_1 = 1, battles_4 do
			if battles_In_1[battles_l_1] then
				battles_1 = battles_In_1[battles_l_1].P
				battles_2 = battles_In_1[battles_l_1].M or nil
				battles_6 = battles_In_1[battles_l_1].H or nil
			elseif battles_1.P then
				return battles.Talk(battles.C(3, "Input Param is Incorect"))
			end
			if not(battles_In_1[battles_l_1]) or not(battles_In_1[battles_l_1].P) or battles_In_3 then
				if battles_1.cc and getn(battles_1.cc) > 0 then
					for battles_l_2 = 1, getn(battles_1.cc) do
						local battles_5
						if getn(battles_1.cc[battles_l_2][3]) > 0 then
							battles_5 = call(battles_1.cc[battles_l_2][1], battles_1.cc[battles_l_2][3])
						else
							battles_5 = battles_1.cc[battles_l_2][1]()
						end
							-- [2] 0: =, 1 >, -1 <, 2 ~=, 3 >= - [4]: value
						if battles_1.cc[battles_l_2][2] == 1 then
							if battles_5 > battles_1.cc[battles_l_2][4] then 
								if battles_In_4 then return nil end
								return battles.Talk(battles_1.cc[battles_l_2][5]) 
							end
						elseif battles_1.cc[battles_l_2][2] == 0 then
							if battles_5 == battles_1.cc[battles_l_2][4] then 
								if battles_In_4 then return nil end
								return battles.Talk(battles_1.cc[battles_l_2][5]) 
							end
						elseif battles_1.cc[battles_l_2][2] == -1 then
							if battles_5 < battles_1.cc[battles_l_2][4] then 
								if battles_In_4 then return nil end
								return battles.Talk(battles_1.cc[battles_l_2][5]) 
							end
						elseif battles_1.cc[battles_l_2][2] == 2 then
							if battles_5 ~= battles_1.cc[battles_l_2][4] then 
								if battles_In_4 then return nil end
								return battles.Talk(battles_1.cc[battles_l_2][5]) 
							end
						elseif battles_1.cc[battles_l_2][2] == 3 then
							if battles_5 >= battles_1.cc[battles_l_2][4] then 
								if battles_In_4 then return nil end
								return battles.Talk(battles_1.cc[battles_l_2][5]) 
							end
						else
							return battles.Talk(battles.C(3, "Condition: "..(battles_1.cc[battles_l_2][2] or  "NIL").." is Unknow"))
						end
					end
					if battles_In_4 then return 1 end
				end
			else
				if battles_2 then
					if battles_6 then
						battles_7.cc = battles_6
						if battles.Say(battles_7, nil, 1, 1) then
							tinsert(battles_3, {battles_2, battles.Say, {battles_1, nil, 1}})
						end
					else
						tinsert(battles_3, {battles_2, battles.Say, {battles_1, nil, 1}})
					end
				end
			end
		end
		if getn(battles_3) > 0 or battles_6 then
			tinsert(battles_3, {"KÕt thóc ®èi tho¹i", battles.OnCancel})
			if not(battles_In_2) then 
				battles_In_2 = "<< Xin lùa chän c¸c tïy chän liÖt kª bªn d­íi >>"
			end
			return CreateNewSayEx(battles_In_2, battles_3)
		end
		return Say_Step2(battles_1)
	end,
	
	SplitTime = function(_1)
		local r, b, c = {0, 0, 0, 0, 0, 0}, {"n¨m", "th¸ng", "ngµy", "giê", "phót", "gi©y"}, ""
		local a = {{31536000},{2592000},{86400},{3600},{60}}
		local _1 = _1 or 0
		
		for _i = 1, getn(a) do
			if _1 >= a[_i][1] then
				r[_i] = floor(_1/a[_i][1])
				_1 = _1 - (a[_i][1]*r[_i])
			end
		end
		
		local d = getn(r)
		r[d] = _1
		
		for _i = 1, d do
			c = c..((r[_i] ~= 0) and ("<color=yellow>"..r[_i].." "..b[_i].."<color> ") or "")
		end
		
		return r, ((c ~= "") and c or "0 gi©y")
	end,
	
	JoinTime = function(_1, _2, _3)
		local a, b = {{31536000},{2592000},{86400},{3600},{60}}, 0
		
		for _i = 1, getn(a) do
			if battles.True(_1[_i]) then
				b = b + (_1[_i]*a[_i][1])
			end
		end
		
		b = battles.True(_1[getn(_1)]) and (_1[getn(_1)] + b) or b
		
		-- return battles.True(_2) and SetTask(_2, (GetTask(_2) + b)) or b
		return battles.True(_2) and SetTask(_2, ((_3 and GetTask(_2) or 0) + b)) or b
	end,
	
	IniFile = {
		_In_a = "",
	
		Load = function(_1)
			_In_a = "\\script\\global\\TONGKIM\\TONGKIM_log\\".._1
			if (IniFile_Load(_In_a, _In_a) == 0) then 
				File_Create(_In_a)
				IniFile_Load(_In_a, _In_a)
			end
		end,
		
		Get = function(Sect, Key)
			local a = IniFile_GetData(_In_a, Sect, Key)
			return battles.False(a) and nil or a
		end,
		
		Set = function(Sect,Key,Value)
			IniFile_SetData(_In_a, Sect, Key, Value)
			IniFile_Save(_In_a,_In_a)
		end,
		
		Release = function()
			IniFile_UnLoad(_In_a,_In_a)
		end,
	},
	
	Msg2AllWorld = function(_1)
		RemoteExc("\\script\\TONGKIM\\TONGKIM_msg2allworld.lua", "battlesMsg2AllWorld:Send2All", {_1})
	end,
	
	OnCancel = function() return end,
}

function Say_Step2(battles_In_1)
	local battles_1, battles_3
	if battles_In_1.i and getn(battles_In_1.i) > 0 then
		for battles_l_1 = 1, getn(battles_In_1.i) do
			for battles_l_2 = 1, battles_In_1.i[battles_l_1].n do
				battles_1 = AddItemNoStack(unpack(battles_In_1.i[battles_l_1].v))
				if battles_In_1.i[battles_l_1].e ~= 0 then
					ITEM_SetExpiredTime(battles_1, FormatTime2Date(battles_In_1.i[battles_l_1].e + GetCurServerTime()))
					SyncItem(battles_1)
				end
				if battles_In_1.i[battles_l_1].b ~= 0 then
					SetItemBindState(battles_1, battles_In_1.i[battles_l_1].b)
				end
				if battles_In_1.i[battles_l_1].p and getn(battles_In_1.i[battles_l_1].p) > 0 then
					for _i = 1, getn(battles_In_1.i[battles_l_1].p) do
						SetSpecItemParam(battles_1, _i, battles_In_1.i[battles_l_1].p[_i])
						SyncItem(battles_1)
					end
				end
				if battles_In_1.i[battles_l_1].l and type(battles_In_1.i[battles_l_1].l) == "string" then
					battles_3 = openfile("script/global/TONGKIM/TONGKIM_log/"..(battles_In_1.i[battles_l_1].l)..".log", "a")
						write(battles_3, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tGiveItem: ["..battles_In_1.i[battles_l_1].v[1]..", "..battles_In_1.i[battles_l_1].v[2]..", "..battles_In_1.i[battles_l_1].v[3]..", "..battles_In_1.i[battles_l_1].v[4].."] "..battles_In_1.i[battles_l_1].ne.."\tCount: "..battles_In_1.i[battles_l_1].n.."\tBindState: "..battles_In_1.i[battles_l_1].b.."\tExpired: "..battles_In_1.i[battles_l_1].e.."\n")
					closefile(battles_3)
				end
			end
		end
	end
	if battles_In_1.ig and getn(battles_In_1.ig) > 0 then
		for battles_l_3 = 1, getn(battles_In_1.ig) do
			for battles_l_4 = 1, battles_In_1.ig[battles_l_3].n do
				battles_1 = AddGoldItem(0, (battles_In_1.ig[battles_l_3].v[1] - 1))
				if battles_In_1.ig[battles_l_3].e ~= 0 then
					ITEM_SetExpiredTime(battles_1, FormatTime2Date(battles_In_1.ig[battles_l_3].e + GetCurServerTime()))
					SyncItem(battles_1)
				end
				if battles_In_1.ig[battles_l_3].b ~= 0 then
					SetItemBindState(battles_1, battles_In_1.ig[battles_l_3].b)
				end
				if battles_In_1.i[battles_l_1].l and type(battles_In_1.i[battles_l_1].l) == "string" then
					battles_3 = openfile("script/global/TONGKIM/TONGKIM_log/"..(battles_In_1.i[battles_l_1].l)..".log", "a")
						write(battles_3, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tGiveItemGold: ["..(battles_In_1.ig[battles_l_3].v[1] - 1).."] "..battles_In_1.i[battles_l_1].ne.."\tCount: "..battles_In_1.i[battles_l_1].n.."\tBindState: "..battles_In_1.i[battles_l_1].b.."\tExpired: "..battles_In_1.i[battles_l_1].e.."\n")
					closefile(battles_3)
				end
			end
		end
	end
	if battles_In_1.c and getn(battles_In_1.c) > 0 then
		local battles_2 = 1
		for battles_l_5 = 1, getn(battles_In_1.c) do
			if battles_In_1.c[battles_l_5][3] and battles_In_1.c[battles_l_5][3] > 0 then
				battles_2 = battles_In_1.c[battles_l_5][3]
			end
			for battles_l_6 = 1, battles_2 do
				if battles_In_1.c[battles_l_5][2] and getn(battles_In_1.c[battles_l_5][2]) > 0 then
					call(battles_In_1.c[battles_l_5][1], battles_In_1.c[battles_l_5][2])
				else
					battles_In_1.c[battles_l_5][1]()
				end
			end
			battles_2 = 1
		end
	end
end

function CallFunc_battles_iNumber(_1)
	if not(_TONGKIM_INC_G_iNumber[PlayerIndex]) then
		return Msg2Player("CallBack iNumber NULL!")
	end
	
	local a = _TONGKIM_INC_G_iNumber[PlayerIndex]
	_TONGKIM_INC_G_iNumber[PlayerIndex] = nil
	
	tinsert(a[2], _1)
	
	return call(a[1], a[2])
end

function CallFunc_battles_iItem(_1)
	if not(_TONGKIM_INC_G_iItem[PlayerIndex]) then
		return Msg2Player("CallBack iItem NULL!")
	end
	
	local a = _TONGKIM_INC_G_iItem[PlayerIndex]
	_TONGKIM_INC_G_iItem[PlayerIndex] = nil
	
	tinsert(a[2], _1)
	
	return call(a[1], a[2])
end

end

-- local a = {
	-- {
		-- M = "test",
		-- H = {{GetLevel, 1, {}, 30}},
		-- P = {
			-- c = {{Msg2Player, {"complete!!"}},{Msg2Player, {"B¹n ®­îc n©ng lªn ®¼ng cÊp 199"}},},
			-- cc = {{GetLevel, 1, {}, 30, "§¼ng cÊp ®· lín h¬n 30!"},},
			-- i = {
				-- {v = {6,1,71,1,0,0,0}, n = 1, b = -2, e = 0, ne = "Tiªn th¶o lé"},},
			-- ig = {
				-- {v = {186}, n = 1, b = -2, e = 0, ne = "Kim Phong §ång T­íc Xu©n Th©m"},
			-- },
		-- }
	-- },
-- }

-- battles.Say(a, "aaa")















