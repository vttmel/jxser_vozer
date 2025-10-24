
local _GetNexStartTime = function(nStartHour, nStartMinute, nInterval)
	
	
	local nNextHour = nStartHour
	local nNextMinute = nInterval * ceil(nStartMinute / nInterval)
	
	if nNextMinute >= 60 then
		
		nNextHour = nNextHour + floor(nNextMinute / 60)
		nNextMinute = mod(nNextMinute, 60) 
	end
	
	if (nNextHour >= 24) then
		nNextHour = mod(nNextHour, 24);
	end;
	return nNextHour, nNextMinute
end

function TaskShedule()
	--ÉèÖÃ·½°¸Ãû³Æ
	TaskName("birthday0905")
	
	local  nInterval = 30;
	
	local nStartHour = tonumber(date("%H")) ;
	local nStartMinute = tonumber(date("%M"));
	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)
	--if nNextHour ~= 20 then
		--nNextHour, nNextMinute = 20, 0
	--end
	
	TaskTime(nNextHour	, nNextMinute);
	--ÉèÖÃ¼ä¸ôÊ±¼ä£¬µ¥Î»Îª·ÖÖÓ
	TaskInterval(nInterval) --15·ÖÖÓÒ»´Î
	
	--ÉèÖÃ´¥·¢´ÎÊı£¬0±íÊ¾ÎŞÏŞ´ÎÊı
	TaskCountLimit(0)
	local szMsg = format("=====>%s BAT DAU %d:%d VA %d PHUT SAU KET THUC", " HOAT DONG GIET NHIM BEO PHI",nNextHour, nNextMinute, nInterval)
	OutputMsg(szMsg);
end

function TaskContent()
	local n_date = tonumber(date("%Y%m%d"));

	if (n_date > 20200719 or n_date < 20110619) then
		return
	end
	
	local n_weekid = tonumber(date("%w"));
	local n_hour = tonumber(date("%H"));
	if (n_weekid == 5 and n_hour == 0) then
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", "Ho¹t ®éng giÕt Nhİm bĞo ph× ®· më, c¸c ®¹i hiÖp h·y mau chuÈn bŞ lªn ®­êng s¨n nhİm!"));
	elseif (n_weekid == 1 and n_hour == 0) then
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", "Ho¹t ®éng giÕt Nhİm bĞo ph× ®· kÕt thóc, chóc c¸c vŞ anh hïng hµo kiÖt 1 tuÇn vui vÎ !"));
	end
	
	if (n_weekid == 5 or n_weekid == 6 or n_weekid == 0) then
		local szMsg = "Ho¹t ®éng giÕt Nhİm bĞo ph× ®· më, c¸c ®¹i hiÖp h·y mau ®Õn 7 Thµnh thŞ, 8 T©n thñ th«n ®Ó t×m!"
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
		GlobalExecute(format("dwf \\script\\event\\birthday_jieri\\200905\\panghaozhu\\addnpc_haozhu.lua birthday0905_addnpc_haozhu(%d)", 15));
		OutputMsg("Hoat dong nhim beo phi bat dau")
	end
end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


