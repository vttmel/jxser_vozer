IncludeLib("ITEM")
IncludeLib("FILESYS")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\remoteexc.lua")

TBX_INC_G_iNumber = {}
TBX_INC_G_iItem = {}

if not (TBX_INC) then
	TBX_INC = 1
	
TBX = {
	iNumber = function(_1, _2, _3, _4)
		if not(TBX_INC_G_iNumber[PlayerIndex]) then
			TBX_INC_G_iNumber[PlayerIndex] = {}
		end
		TBX_INC_G_iNumber[PlayerIndex] = _4
		return AskClientForNumber("CallFunc_TBX_iNumber", _1, _2, _3)
	end,
	
	iItem = function(Title, Desc, Array)
		if not(TBX_INC_G_iItem[PlayerIndex]) then
			TBX_INC_G_iItem[PlayerIndex] = {}
		end
		TBX_INC_G_iItem[PlayerIndex] = Array
		return GiveItemUI(Title, Desc, "CallFunc_TBX_iItem", "TBX.OnCancel", 1)
	end,

	Time = {
		SetExpired = function(nTime, nTask)
			if not(nTask) or TBX.False(nTask) then
				return Msg2Player("Time.SetExpired: Null Task!")
			end
			SetTask(nTask, (nTime or 0) + ((GetTask(nTask) ~= 0) and GetTask(nTask) or GetCurServerTime()))
		end,
		
		GetExpired = function(Task)
			return TBX.False(GetTask(Task)) and nil or (((GetTask(Task) - GetCurServerTime()) > 0) and (GetTask(Task) - GetCurServerTime()) or nil)
		end,
	},

	False = function(TBXVal)
		if (not(TBXVal) or TBXVal == nil or TBXVal == 0 or TBXVal == "") then return 1 
		else return nil end
	end,
	
	True = function(TBX_In_1)
		if TBX.False(TBX_In_1) then return nil
		else return 1 end
	end,
	
	Str2Byte = function(string, b_Count)
		local len, TBXByteRet = strlen(string), ""
		for i = 1, len do TBXByteRet = TBXByteRet..strbyte(string, i) end
		if (b_Count == 1) then
			return TBXByteRet, TBX.Math.Count(TBXByteRet)
		else
			return TBXByteRet
		end
	end,
	
	Math = {
		Count = function(nListNumber)
			local a_s = tostring(nListNumber)
			local a = strlen(a_s)
			local b, b_n = 0, 0
			if TBX.False(a) then return 0 end
			for i = 1, a do
				b_n = 0
				b_n = tonumber(strsub(a_s, i, i))
				b = b + ((type(b_n) == "number") and b_n or 0)
			end
			return b
		end,
	},
	
	C = function(CodeColor, TBXStr)
		local TBXColorTb = {yel = "yellow",gre = "green",ora = "Orange",blu = "blue",red = "red",woo = "wood",fir = "fire",}
		local TBXColorTbNum = {"yellow","green","red","Orange","blue","wood","fire", "white", "0x92ff8f", "0xa9ffe0", "0x00ffff"}
		if type(CodeColor) == "number" then return "<color="..TBXColorTbNum[CodeColor]..">"..TBXStr.."<color>" end
		return "<color="..TBXColorTb[CodeColor]..">"..TBXStr.."<color>"
	end,
	
	InitRandMemTb = function(TBX_1)
		local TBX_tb, TBX_2, TBX_3 = {}, 0, 0
		for i = 1, TBX_1 do tinsert(TBX_tb, i) end
		for i2 = 1, TBX_1 do
			TBX_2 = random(1, TBX_1)
			TBX_3 = TBX_tb[i2]
			TBX_tb[i2] = TBX_tb[TBX_2]
			TBX_tb[TBX_2] = TBX_3
		end
		return TBX_tb
	end,
	
	TaskDate = function(TBX_1, TBX_2, TBX_3)
		local TBX_4 = tonumber(date("%y%m%d"))
		if GetTask(TBX_1) ~= TBX_4 then
			SetTask(TBX_1, TBX_4)
			SetTask(TBX_3, TBX_2)
			return 0
		else
			return GetTask(TBX_3)
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
	
	Say = function(TBX_In_1, TBX_In_2, TBX_In_3, TBX_In_4)
		local TBX_1, TBX_2, TBX_3, TBX_4, TBX_6, TBX_7 = TBX_In_1, nil, {}, 1, nil, {cc = {}}
		if not(TBX_In_1) then return end
		if getn(TBX_In_1) > 1 then
			TBX_4 = getn(TBX_In_1)
		end
		for TBX_l_1 = 1, TBX_4 do
			if TBX_In_1[TBX_l_1] then
				TBX_1 = TBX_In_1[TBX_l_1].P
				TBX_2 = TBX_In_1[TBX_l_1].M or nil
				TBX_6 = TBX_In_1[TBX_l_1].H or nil
			elseif TBX_1.P then
				return TBX.Talk(TBX.C(3, "Input Param is Incorect"))
			end
			if not(TBX_In_1[TBX_l_1]) or not(TBX_In_1[TBX_l_1].P) or TBX_In_3 then
				if TBX_1.cc and getn(TBX_1.cc) > 0 then
					for TBX_l_2 = 1, getn(TBX_1.cc) do
						local TBX_5
						if getn(TBX_1.cc[TBX_l_2][3]) > 0 then
							TBX_5 = call(TBX_1.cc[TBX_l_2][1], TBX_1.cc[TBX_l_2][3])
						else
							TBX_5 = TBX_1.cc[TBX_l_2][1]()
						end						
						if TBX_1.cc[TBX_l_2][2] == 1 then
							if TBX_5 > TBX_1.cc[TBX_l_2][4] then 
								if TBX_In_4 then return nil end
								return TBX.Talk(TBX_1.cc[TBX_l_2][5]) 
							end
						elseif TBX_1.cc[TBX_l_2][2] == 0 then
							if TBX_5 == TBX_1.cc[TBX_l_2][4] then 
								if TBX_In_4 then return nil end
								return TBX.Talk(TBX_1.cc[TBX_l_2][5]) 
							end
						elseif TBX_1.cc[TBX_l_2][2] == -1 then
							if TBX_5 < TBX_1.cc[TBX_l_2][4] then 
								if TBX_In_4 then return nil end
								return TBX.Talk(TBX_1.cc[TBX_l_2][5]) 
							end
						elseif TBX_1.cc[TBX_l_2][2] == 2 then
							if TBX_5 ~= TBX_1.cc[TBX_l_2][4] then 
								if TBX_In_4 then return nil end
								return TBX.Talk(TBX_1.cc[TBX_l_2][5]) 
							end
						elseif TBX_1.cc[TBX_l_2][2] == 3 then
							if TBX_5 >= TBX_1.cc[TBX_l_2][4] then 
								if TBX_In_4 then return nil end
								return TBX.Talk(TBX_1.cc[TBX_l_2][5]) 
							end
						else
							return TBX.Talk(TBX.C(3, "Condition: "..(TBX_1.cc[TBX_l_2][2] or  "NIL").." is Unknow"))
						end
					end
					if TBX_In_4 then return 1 end
				end
			else
				if TBX_2 then
					if TBX_6 then
						TBX_7.cc = TBX_6
						if TBX.Say(TBX_7, nil, 1, 1) then
							tinsert(TBX_3, {TBX_2, TBX.Say, {TBX_1, nil, 1}})
						end
					else
						tinsert(TBX_3, {TBX_2, TBX.Say, {TBX_1, nil, 1}})
					end
				end
			end
		end
		if getn(TBX_3) > 0 or TBX_6 then
			tinsert(TBX_3, {"KÕt thóc ®èi tho¹i", TBX.OnCancel})
			if not(TBX_In_2) then 
				TBX_In_2 = "<< Xin lùa chän c¸c tïy chän liÖt kª bªn d­íi >>"
			end
			return CreateNewSayEx(TBX_In_2, TBX_3)
		end
		return Say_Step2(TBX_1)
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
			if TBX.True(_1[_i]) then
				b = b + (_1[_i]*a[_i][1])
			end
		end
		
		b = TBX.True(_1[getn(_1)]) and (_1[getn(_1)] + b) or b
		return TBX.True(_2) and SetTask(_2, ((_3 and GetTask(_2) or 0) + b)) or b
	end,
	
	IniFile = {
		_In_a = "",
	
		Load = function(_1)
			_In_a = "\\script\\global\\pgaming\\xephang\\xephang_log\\".._1
			if (IniFile_Load(_In_a, _In_a) == 0) then 
				File_Create(_In_a)
				IniFile_Load(_In_a, _In_a)
			end
		end,
		
		Get = function(Sect, Key)
			local a = IniFile_GetData(_In_a, Sect, Key)
			return TBX.False(a) and nil or a
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
		RemoteExc("\\script\\pgaming\\tinhnang\\pgaming\\tinhnang_msg2allworld.lua", "TBXMsg2AllWorld:Send2All", {_1})
	end,
	
	OnCancel = function() return end,
}

function Say_Step2(TBX_In_1)
	local TBX_1, TBX_3
	if TBX_In_1.i and getn(TBX_In_1.i) > 0 then
		for TBX_l_1 = 1, getn(TBX_In_1.i) do
			for TBX_l_2 = 1, TBX_In_1.i[TBX_l_1].n do
				TBX_1 = AddItemNoStack(unpack(TBX_In_1.i[TBX_l_1].v))
				if TBX_In_1.i[TBX_l_1].e ~= 0 then
					ITEM_SetExpiredTime(TBX_1, FormatTime2Date(TBX_In_1.i[TBX_l_1].e + GetCurServerTime()))
					SyncItem(TBX_1)
				end
				if TBX_In_1.i[TBX_l_1].b ~= 0 then
					SetItemBindState(TBX_1, TBX_In_1.i[TBX_l_1].b)
				end
				if TBX_In_1.i[TBX_l_1].p and getn(TBX_In_1.i[TBX_l_1].p) > 0 then
					for _i = 1, getn(TBX_In_1.i[TBX_l_1].p) do
						SetSpecItemParam(TBX_1, _i, TBX_In_1.i[TBX_l_1].p[_i])
						SyncItem(TBX_1)
					end
				end
				if TBX_In_1.i[TBX_l_1].l and type(TBX_In_1.i[TBX_l_1].l) == "string" then
					TBX_3 = openfile("script/global/pgaming/xephang/xephang_log/"..(TBX_In_1.i[TBX_l_1].l)..".log", "a")
						write(TBX_3, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tGiveItem: ["..TBX_In_1.i[TBX_l_1].v[1]..", "..TBX_In_1.i[TBX_l_1].v[2]..", "..TBX_In_1.i[TBX_l_1].v[3]..", "..TBX_In_1.i[TBX_l_1].v[4].."] "..TBX_In_1.i[TBX_l_1].ne.."\tCount: "..TBX_In_1.i[TBX_l_1].n.."\tBindState: "..TBX_In_1.i[TBX_l_1].b.."\tExpired: "..TBX_In_1.i[TBX_l_1].e.."\n")
					closefile(TBX_3)
				end
			end
		end
	end
	if TBX_In_1.ig and getn(TBX_In_1.ig) > 0 then
		for TBX_l_3 = 1, getn(TBX_In_1.ig) do
			for TBX_l_4 = 1, TBX_In_1.ig[TBX_l_3].n do
				TBX_1 = AddGoldItem(0, (TBX_In_1.ig[TBX_l_3].v[1] - 1))
				if TBX_In_1.ig[TBX_l_3].e ~= 0 then
					ITEM_SetExpiredTime(TBX_1, FormatTime2Date(TBX_In_1.ig[TBX_l_3].e + GetCurServerTime()))
					SyncItem(TBX_1)
				end
				if TBX_In_1.ig[TBX_l_3].b ~= 0 then
					SetItemBindState(TBX_1, TBX_In_1.ig[TBX_l_3].b)
				end
				if TBX_In_1.i[TBX_l_1].l and type(TBX_In_1.i[TBX_l_1].l) == "string" then
					TBX_3 = openfile("script/global/pgaming/xephang/xephang_log/"..(TBX_In_1.i[TBX_l_1].l)..".log", "a")
						write(TBX_3, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tGiveItemGold: ["..(TBX_In_1.ig[TBX_l_3].v[1] - 1).."] "..TBX_In_1.i[TBX_l_1].ne.."\tCount: "..TBX_In_1.i[TBX_l_1].n.."\tBindState: "..TBX_In_1.i[TBX_l_1].b.."\tExpired: "..TBX_In_1.i[TBX_l_1].e.."\n")
					closefile(TBX_3)
				end
			end
		end
	end
	if TBX_In_1.c and getn(TBX_In_1.c) > 0 then
		local TBX_2 = 1
		for TBX_l_5 = 1, getn(TBX_In_1.c) do
			if TBX_In_1.c[TBX_l_5][3] and TBX_In_1.c[TBX_l_5][3] > 0 then
				TBX_2 = TBX_In_1.c[TBX_l_5][3]
			end
			for TBX_l_6 = 1, TBX_2 do
				if TBX_In_1.c[TBX_l_5][2] and getn(TBX_In_1.c[TBX_l_5][2]) > 0 then
					call(TBX_In_1.c[TBX_l_5][1], TBX_In_1.c[TBX_l_5][2])
				else
					TBX_In_1.c[TBX_l_5][1]()
				end
			end
			TBX_2 = 1
		end
	end
end

function CallFunc_TBX_iNumber(_1)
	if not(TBX_INC_G_iNumber[PlayerIndex]) then
		return Msg2Player("CallBack iNumber NULL!")
	end
	
	local a = TBX_INC_G_iNumber[PlayerIndex]
	TBX_INC_G_iNumber[PlayerIndex] = nil
	
	tinsert(a[2], _1)
	
	return call(a[1], a[2])
end

function CallFunc_TBX_iItem(_1)
	if not(TBX_INC_G_iItem[PlayerIndex]) then
		return Msg2Player("CallBack iItem NULL!")
	end
	
	local a = TBX_INC_G_iItem[PlayerIndex]
	TBX_INC_G_iItem[PlayerIndex] = nil
	
	tinsert(a[2], _1)
	
	return call(a[1], a[2])
end

end