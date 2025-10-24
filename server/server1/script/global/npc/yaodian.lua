Include("\\script\\dailogsys\\dailogsay.lua")

function main()
	local szTitle = "<npc>Ng≠¨i c«n mua thuËc sao ?"
	local tbOpt = {}
	tinsert(tbOpt, {"Giao dﬁch", yes}) 
	tinsert(tbOpt, {"ß” ta Æi l y ti“n !"}) 
	CreateNewSayEx(szTitle, tbOpt);
	Sale(176)
end

function yes()
	Sale(176)
end
