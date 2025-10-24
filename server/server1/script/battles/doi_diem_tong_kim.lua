Include("\\script\\battles\\inc.lua")

SJ_PointExChange = {
	Task = {
		Point = 747,
		Date = 5876,
		TotalExp = 5875,
	},
	ExpPerOne = 500,
	NeedLevel = 40,
	LimitPerDay = 10000000,
	--LimitLevelPercent = {80, 10},
}

function SJ_PointExChange:Main()
	return Say("PhÇn th­ëng chiÕn tr­êng chØ dµnh cho c¸c chiÕn sÜ tËn t©m nhÊt!", 2, 
		"T¹i h¹ muèn ®Ó ®iÓm Tİch lòy thµnh ®iÓm Kinh nghiÖm/#SJ_PointExChange:ExChange()",
		"Ta lµ 1 chiÕn sÜ tËn t©m!/#SJ_PointExChange:No()")
end

function SJ_PointExChange:ExChange(_1)
	local a = GetTask(self.Task.Point)
	local b = GetLevel()
	
	if a <= 0 then
		return battles.Talk("ChØ chiÕn sÜ ®· tham gia chiÕn tr­êng vµ ph¶i cã ®iÓm tİch lòy míi cã thÓ sö dông c«ng n¨ng nµy!")
	end

	if b < self.NeedLevel then
		return battles.Talk("C«ng n¨ng nµy chØ dµnh cho c¸c chiÕn sÜ ®· tham gia chiÕn tr­êng hoÆc ®¼ng cÊp tõ "..self.NeedLevel.." trë lªn!")
	end
	
	if _1 and _1 > 0 then
		local c, d, e = GetTask(self.Task.Date), GetTask(self.Task.TotalExp), tonumber(GetLocalDate("%y%m%d"))
		local h = ((GetLevelExp(b, 0) / 100) )
		local f = floor(_1*self.ExpPerOne)
		local i = 0
		
		if c ~= e then
			SetTask(self.Task.Date, e)
			SetTask(self.Task.TotalExp, 0)
		end
		
		if d >= h then
			return battles.Talk("HiÖn t¹i nh©n vËt cña b¹n chØ cã thÓ ®æi tèi ®a "..h.." ®iÓm kinh nghiÖm trong 1 ngµy, xin h·y ®îi ®Õn ngµy mai!")
		elseif self.LimitPerDay > 0 and d >= self.LimitPerDay then
			return battles.Talk("HiÖn t¹i nh©n vËt cña b¹n chØ cã thÓ ®æi tèi ®a "..self.LimitPerDay.." ®iÓm kinh nghiÖm trong 1 ngµy, xin h·y ®îi ®Õn ngµy mai!")
		elseif a < _1 then
			return battles.Talk("HiÖn t¹i c¸c h¹ kh«ng ®ñ ".._1.." ®iÓm tİch lòy, cô thÓ c¸c h¹ cßn: "..a.." ®iÓm tİch lòy, xin nhËp l¹i sè l­îng ®iÓm!")
		end
		
		i = (((d + f) > self.LimitPerDay) and 1 or 0)
		
		if i ~= 0 then
			return battles.Talk("L­îng kinh nghiÖm b¹n muèn ®æi vµ tæng l­îng ®· ®æi h«m nay sÏ v­ît giíi h¹n ®æi trong ngµy, kinh nghiÖm ®· ®æi h«m nay lµ "..d..", xin kiÓm tra l¹i!")
		end
		
		SetTask(self.Task.Point, floor(a - _1))
		AddOwnExp(f)
		
		SetTask(self.Task.TotalExp, (GetTask(self.Task.TotalExp) + f))
		
		Msg2Player(battles.C(11, "§æi thµnh c«ng ".._1.." ®iÓm tİch lòy TK lÊy: "..f.." ®iÓm kinh nghiÖm!"))
		
		local g = openfile("script/battles/battles_log/mis_SJ_PointExChange.log", "a")
			write(g, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tPoint: ".._1.."\tToExp: "..f.."\tLeftPoint: "..GetTask(self.Task.Point).."\n")
		closefile(g)
		return
	end

	if _1 and _1 == -1 then
		return AskClientForNumber("SJ_PointExChange_ReturnExC",0,GetTask(self.Task.Point),"1 Tİch lòy = "..self.ExpPerOne)
	end
	
	return Talk(1, "#SJ_PointExChange:ExChange(-1)", "Tû lÖ quy ®æi hiÖn t¹i 1 ®iÓm Tİch lòy b»ng "..self.ExpPerOne.." ®iÓm Kinh nghiÖm (<color=0x00ffff>kh«ng céng dån<color>), xin chiÕn sÜ h·y nhËp sè ®iÓm tİch lòy cÇn quy ®æi!")
end
function SJ_PointExChange_ReturnExC(_1)
	return SJ_PointExChange:ExChange(_1)
end

function SJ_PointExChange:No()
	return
end


































