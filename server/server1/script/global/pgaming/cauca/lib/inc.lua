IncludeLib("ITEM")
IncludeLib("FILESYS")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\remoteexc.lua")

_INC_G_iNumber = {}
_INC_G_iItem = {}

if not (_INC) then
	_INC = 1
	
pg = {
	iNumber = function(_1, _2, _3, _4)
		if not(_INC_G_iNumber[PlayerIndex]) then
			_INC_G_iNumber[PlayerIndex] = {}
		end
		_INC_G_iNumber[PlayerIndex] = _4
		return AskClientForNumber("CallFunc_pg_iNumber", _1, _2, _3)
	end,
	
	iItem = function(Title, Desc, Array)
		if not(_INC_G_iItem[PlayerIndex]) then
			_INC_G_iItem[PlayerIndex] = {}
		end
		_INC_G_iItem[PlayerIndex] = Array
		return GiveItemUI(Title, Desc, "CallFunc_pg_iItem", "pg.OnCancel", 1)
	end,

	Time = {
		SetExpired = function(nTime, nTask)
			if not(nTask) or pg.False(nTask) then
				return Msg2Player("Time.SetExpired: Null Task!")
			end
			SetTask(nTask, (nTime or 0) + ((GetTask(nTask) ~= 0) and GetTask(nTask) or GetCurServerTime()))
		end,
		
		GetExpired = function(Task)
			return pg.False(GetTask(Task)) and nil or (((GetTask(Task) - GetCurServerTime()) > 0) and (GetTask(Task) - GetCurServerTime()) or nil)
		end,
	},

	False = function(pgVal)
		if (not(pgVal) or pgVal == nil or pgVal == 0 or pgVal == "") then return 1 
		else return nil end
	end,
	
	True = function(pg_In_1)
		if pg.False(pg_In_1) then return nil
		else return 1 end
	end,
	
	Str2Byte = function(string, b_Count)
		local len, pgByteRet = strlen(string), ""
		for i = 1, len do pgByteRet = pgByteRet..strbyte(string, i) end
		if (b_Count == 1) then
			return pgByteRet, pg.Math.Count(pgByteRet)
		else
			return pgByteRet
		end
	end,
	
	Math = {
		Count = function(nListNumber)
			local a_s = tostring(nListNumber)
			local a = strlen(a_s)
			local b, b_n = 0, 0
			if pg.False(a) then return 0 end
			for i = 1, a do
				b_n = 0
				b_n = tonumber(strsub(a_s, i, i))
				b = b + ((type(b_n) == "number") and b_n or 0)
			end
			return b
		end,
	},
	
	C = function(CodeColor, pgStr)
		local pgColorTb = {yel = "yellow",gre = "green",ora = "Orange",blu = "blue",red = "red",woo = "wood",fir = "fire",}
		-- 										1				2			  3		 4				5			6			 7			 8				9					10				11
		local pgColorTbNum = {"yellow","green","red","Orange","blue","wood","fire", "white", "0x92ff8f", "0xa9ffe0", "0x00ffff"}
		if type(CodeColor) == "number" then return "<color="..pgColorTbNum[CodeColor]..">"..pgStr.."<color>" end
		return "<color="..pgColorTb[CodeColor]..">"..pgStr.."<color>"
	end,
	
	InitRandMemTb = function(pg_1)
		local pg_tb, pg_2, pg_3 = {}, 0, 0
		for i = 1, pg_1 do tinsert(pg_tb, i) end
		for i2 = 1, pg_1 do
			pg_2 = random(1, pg_1)
			pg_3 = pg_tb[i2]
			pg_tb[i2] = pg_tb[pg_2]
			pg_tb[pg_2] = pg_3
		end
		return pg_tb
	end,
	
	TaskDate = function(pg_1, pg_2, pg_3)
		local pg_4 = tonumber(date("%y%m%d"))
		if GetTask(pg_1) ~= pg_4 then
			SetTask(pg_1, pg_4)
			SetTask(pg_3, pg_2)
			return 0
		else
			return GetTask(pg_3)
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
	
	Say = function(pg_In_1, pg_In_2, pg_In_3, pg_In_4)
		local pg_1, pg_2, pg_3, pg_4, pg_6, pg_7 = pg_In_1, nil, {}, 1, nil, {cc = {}}
		if not(pg_In_1) then return end
		if getn(pg_In_1) > 1 then
			pg_4 = getn(pg_In_1)
		end
		for pg_l_1 = 1, pg_4 do
			if pg_In_1[pg_l_1] then
				pg_1 = pg_In_1[pg_l_1].P
				pg_2 = pg_In_1[pg_l_1].M or nil
				pg_6 = pg_In_1[pg_l_1].H or nil
			elseif pg_1.P then
				return pg.Talk(pg.C(3, "Input Param is Incorect"))
			end
			if not(pg_In_1[pg_l_1]) or not(pg_In_1[pg_l_1].P) or pg_In_3 then
				if pg_1.cc and getn(pg_1.cc) > 0 then
					for pg_l_2 = 1, getn(pg_1.cc) do
						local pg_5
						if getn(pg_1.cc[pg_l_2][3]) > 0 then
							pg_5 = call(pg_1.cc[pg_l_2][1], pg_1.cc[pg_l_2][3])
						else
							pg_5 = pg_1.cc[pg_l_2][1]()
						end
							-- [2] 0: =, 1 >, -1 <, 2 ~=, 3 >= - [4]: value
						if pg_1.cc[pg_l_2][2] == 1 then
							if pg_5 > pg_1.cc[pg_l_2][4] then 
								if pg_In_4 then return nil end
								return pg.Talk(pg_1.cc[pg_l_2][5]) 
							end
						elseif pg_1.cc[pg_l_2][2] == 0 then
							if pg_5 == pg_1.cc[pg_l_2][4] then 
								if pg_In_4 then return nil end
								return pg.Talk(pg_1.cc[pg_l_2][5]) 
							end
						elseif pg_1.cc[pg_l_2][2] == -1 then
							if pg_5 < pg_1.cc[pg_l_2][4] then 
								if pg_In_4 then return nil end
								return pg.Talk(pg_1.cc[pg_l_2][5]) 
							end
						elseif pg_1.cc[pg_l_2][2] == 2 then
							if pg_5 ~= pg_1.cc[pg_l_2][4] then 
								if pg_In_4 then return nil end
								return pg.Talk(pg_1.cc[pg_l_2][5]) 
							end
						elseif pg_1.cc[pg_l_2][2] == 3 then
							if pg_5 >= pg_1.cc[pg_l_2][4] then 
								if pg_In_4 then return nil end
								return pg.Talk(pg_1.cc[pg_l_2][5]) 
							end
						else
							return pg.Talk(pg.C(3, "Condition: "..(pg_1.cc[pg_l_2][2] or  "NIL").." is Unknow"))
						end
					end
					if pg_In_4 then return 1 end
				end
			else
				if pg_2 then
					if pg_6 then
						pg_7.cc = pg_6
						if pg.Say(pg_7, nil, 1, 1) then
							tinsert(pg_3, {pg_2, pg.Say, {pg_1, nil, 1}})
						end
					else
						tinsert(pg_3, {pg_2, pg.Say, {pg_1, nil, 1}})
					end
				end
			end
		end
		if getn(pg_3) > 0 or pg_6 then
			tinsert(pg_3, {"KÕt thóc ®èi tho¹i", pg.OnCancel})
			if not(pg_In_2) then 
				pg_In_2 = "<< Xin lùa chän c¸c tïy chän liÖt kª bªn d­íi >>"
			end
			return CreateNewSayEx(pg_In_2, pg_3)
		end
		return Say_Step2(pg_1)
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
			if pg.True(_1[_i]) then
				b = b + (_1[_i]*a[_i][1])
			end
		end
		
		b = pg.True(_1[getn(_1)]) and (_1[getn(_1)] + b) or b
		
		return pg.True(_2) and SetTask(_2, ((_3 and GetTask(_2) or 0) + b)) or b
	end,
	
	IniFile = {
		_In_a = "",
	
		Load = function(_1)
			_In_a = "\\script\\global\\pgaming\\tieubangchien\\tieubangchien_log\\".._1
			if (IniFile_Load(_In_a, _In_a) == 0) then 
				File_Create(_In_a)
				IniFile_Load(_In_a, _In_a)
			end
		end,
		
		Get = function(Sect, Key)
			local a = IniFile_GetData(_In_a, Sect, Key)
			return pg.False(a) and nil or a
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
		RemoteExc("\\script\\pgaming\\pgaming_msg2allworld.lua", "pgMsg2AllWorld:Send2All", {_1})
	end,
	
	OnCancel = function() return end,
}

function Say_Step2(pg_In_1)
	local pg_1, pg_3
	if pg_In_1.i and getn(pg_In_1.i) > 0 then
		for pg_l_1 = 1, getn(pg_In_1.i) do
			for pg_l_2 = 1, pg_In_1.i[pg_l_1].n do
				pg_1 = AddItemNoStack(unpack(pg_In_1.i[pg_l_1].v))
				if pg_In_1.i[pg_l_1].e ~= 0 then
					ITEM_SetExpiredTime(pg_1, FormatTime2Date(pg_In_1.i[pg_l_1].e + GetCurServerTime()))
					SyncItem(pg_1)
				end
				if pg_In_1.i[pg_l_1].b ~= 0 then
					SetItemBindState(pg_1, pg_In_1.i[pg_l_1].b)
				end
				if pg_In_1.i[pg_l_1].p and getn(pg_In_1.i[pg_l_1].p) > 0 then
					for _i = 1, getn(pg_In_1.i[pg_l_1].p) do
						SetSpecItemParam(pg_1, _i, pg_In_1.i[pg_l_1].p[_i])
						SyncItem(pg_1)
					end
				end
				if pg_In_1.i[pg_l_1].l and type(pg_In_1.i[pg_l_1].l) == "string" then
					pg_3 = openfile("script/global/pgaming/tieubangchien/lib/tieubangchien_log/"..(pg_In_1.i[pg_l_1].l)..".log", "a")
						write(pg_3, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tGiveItem: ["..pg_In_1.i[pg_l_1].v[1]..", "..pg_In_1.i[pg_l_1].v[2]..", "..pg_In_1.i[pg_l_1].v[3]..", "..pg_In_1.i[pg_l_1].v[4].."] "..pg_In_1.i[pg_l_1].ne.."\tCount: "..pg_In_1.i[pg_l_1].n.."\tBindState: "..pg_In_1.i[pg_l_1].b.."\tExpired: "..pg_In_1.i[pg_l_1].e.."\n")
					closefile(pg_3)
				end
			end
		end
	end
	if pg_In_1.ig and getn(pg_In_1.ig) > 0 then
		for pg_l_3 = 1, getn(pg_In_1.ig) do
			for pg_l_4 = 1, pg_In_1.ig[pg_l_3].n do
				pg_1 = AddGoldItem(0, (pg_In_1.ig[pg_l_3].v[1] - 1))
				if pg_In_1.ig[pg_l_3].e ~= 0 then
					ITEM_SetExpiredTime(pg_1, FormatTime2Date(pg_In_1.ig[pg_l_3].e + GetCurServerTime()))
					SyncItem(pg_1)
				end
				if pg_In_1.ig[pg_l_3].b ~= 0 then
					SetItemBindState(pg_1, pg_In_1.ig[pg_l_3].b)
				end
				if pg_In_1.i[pg_l_1].l and type(pg_In_1.i[pg_l_1].l) == "string" then
					pg_3 = openfile("script/global/pgaming/tieubangchien/lib/tieubangchien_log/"..(pg_In_1.i[pg_l_1].l)..".log", "a")
						write(pg_3, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tGiveItemGold: ["..(pg_In_1.ig[pg_l_3].v[1] - 1).."] "..pg_In_1.i[pg_l_1].ne.."\tCount: "..pg_In_1.i[pg_l_1].n.."\tBindState: "..pg_In_1.i[pg_l_1].b.."\tExpired: "..pg_In_1.i[pg_l_1].e.."\n")
					closefile(pg_3)
				end
			end
		end
	end
	if pg_In_1.c and getn(pg_In_1.c) > 0 then
		local pg_2 = 1
		for pg_l_5 = 1, getn(pg_In_1.c) do
			if pg_In_1.c[pg_l_5][3] and pg_In_1.c[pg_l_5][3] > 0 then
				pg_2 = pg_In_1.c[pg_l_5][3]
			end
			for pg_l_6 = 1, pg_2 do
				if pg_In_1.c[pg_l_5][2] and getn(pg_In_1.c[pg_l_5][2]) > 0 then
					call(pg_In_1.c[pg_l_5][1], pg_In_1.c[pg_l_5][2])
				else
					pg_In_1.c[pg_l_5][1]()
				end
			end
			pg_2 = 1
		end
	end
end

function CallFunc_pg_iNumber(_1)
	if not(_INC_G_iNumber[PlayerIndex]) then
		return Msg2Player("CallBack iNumber NULL!")
	end
	
	local a = _INC_G_iNumber[PlayerIndex]
	_INC_G_iNumber[PlayerIndex] = nil
	
	tinsert(a[2], _1)
	
	return call(a[1], a[2])
end

function CallFunc_pg_iItem(_1)
	if not(_INC_G_iItem[PlayerIndex]) then
		return Msg2Player("CallBack iItem NULL!")
	end
	
	local a = _INC_G_iItem[PlayerIndex]
	_INC_G_iItem[PlayerIndex] = nil
	
	tinsert(a[2], _1)
	
	return call(a[1], a[2])
end

end