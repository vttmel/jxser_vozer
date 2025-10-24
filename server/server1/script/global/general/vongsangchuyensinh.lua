IL("TITLE");
IncludeLib("SETTING");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function VongSangChuyenSinh()
	local tbOption = {"Ng≠¨i muËn nhÀn vﬂng s∏ng nµo?"};
		tinsert(tbOption, "Vﬂng s∏ng chuy”n sinh l«n 1/vongsang_ts1")
		tinsert(tbOption, "Vﬂng s∏ng chuy”n sinh l«n 2/vongsang_ts2")
		tinsert(tbOption, "Vﬂng s∏ng chuy”n sinh l«n 3/vongsang_ts3")
		tinsert(tbOption, "Vﬂng s∏ng chuy”n sinh l«n 4/vongsang_ts4")
		tinsert(tbOption, "Vﬂng s∏ng chuy”n sinh l«n 5/vongsang_ts5")
		tinsert(tbOption, "K’t thÛc ÆËi thoπi./no")
	CreateTaskSay(tbOption)
end

function vongsang_ts1()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 1) then
		Talk(1, "", "Bπn ch≠a ÆÒ Æi“u ki÷n Æ” nhÀn Æ≠Óc hÁ trÓ nµy, h∑y Æi tu luy™n ti’p Æi.")
	return end
	local nID = 5001;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "Bπn Æang sˆ dÙng vﬂng s∏ng nµy, kh´ng th” nhÀn th™m l«n nˆa. Khi nµo m t vﬂng s∏ng rÂi Æ’n Æ©y g∆p ta Æ” nhÀn lπi.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end

function vongsang_ts2()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 2) then
		Talk(1, "", "Bπn ch≠a ÆÒ Æi“u ki÷n Æ” nhÀn Æ≠Óc hÁ trÓ nµy, h∑y Æi tu luy™n ti’p Æi.")
	return end
	local nID = 5002;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "Bπn Æang sˆ dÙng vﬂng s∏ng nµy, kh´ng th” nhÀn th™m l«n nˆa. Khi nµo m t vﬂng s∏ng rÂi Æ’n Æ©y g∆p ta Æ” nhÀn lπi.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end

function vongsang_ts3()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 3) then
		Talk(1, "", "Bπn ch≠a ÆÒ Æi“u ki÷n Æ” nhÀn Æ≠Óc hÁ trÓ nµy, h∑y Æi tu luy™n ti’p Æi.")
	return end
	local nID = 5003;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "Bπn Æang sˆ dÙng vﬂng s∏ng nµy, kh´ng th” nhÀn th™m l«n nˆa. Khi nµo m t vﬂng s∏ng rÂi Æ’n Æ©y g∆p ta Æ” nhÀn lπi.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end

function vongsang_ts4()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 4) then
		Talk(1, "", "Bπn ch≠a ÆÒ Æi“u ki÷n Æ” nhÀn Æ≠Óc hÁ trÓ nµy, h∑y Æi tu luy™n ti’p Æi.")
	return end
	local nID = 5004;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "Bπn Æang sˆ dÙng vﬂng s∏ng nµy, kh´ng th” nhÀn th™m l«n nˆa. Khi nµo m t vﬂng s∏ng rÂi Æ’n Æ©y g∆p ta Æ” nhÀn lπi.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end

function vongsang_ts5()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 5) then
		Talk(1, "", "Bπn ch≠a ÆÒ Æi“u ki÷n Æ” nhÀn Æ≠Óc hÁ trÓ nµy, h∑y Æi tu luy™n ti’p Æi.")
	return end
	local nID = 5005;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "Bπn Æang sˆ dÙng vﬂng s∏ng nµy, kh´ng th” nhÀn th™m l«n nˆa. Khi nµo m t vﬂng s∏ng rÂi Æ’n Æ©y g∆p ta Æ” nhÀn lπi.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end


--pEventType:Reg("L‘ Quan", "NhÀn vﬂng s∏ng chuy”n sinh", VongSangChuyenSinh);