-- IncludeLib("BATTLE")
-- Include("\\script\\mission\\sevencity\\war.lua")
Include("\\script\\lib\\remoteexc.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
function OpenTongKim()
    if ThamGiaTongKim ~= 1 then
        return
    end
    local nCurrentHour = tonumber(date("%H"))
	local nCurrentMinute = tonumber(date("%M"))
	local nTotalCurrentMinutes = nCurrentHour * 60 + nCurrentMinute

	local isTimeAllowed = 0
	for i =1, getn(ThoiGianOpenTK) do
		local nTime = ThoiGianOpenTK[i]
		local nHour = floor(nTime / 100)
		local nMinute = nTime - (floor(nTime / 100) * 100)
		local nTotalAllowedMinutes = nHour * 60 + nMinute

		if nTotalCurrentMinutes >= nTotalAllowedMinutes - 5 and nTotalCurrentMinutes <= nTotalAllowedMinutes + 5 then
			
			isTimeAllowed = 1
			break
		end
	end
    
	if isTimeAllowed == 0 then
		print("TK is not allowed at this time")
		return
	end
    
    RemoteExc("\\script\\simcity.lua", "Mo_TongKim", {1})	-- GM chØ lÖnh, khëi ®éng tèng kim s¬ cÊp

    RemoteExc("\\script\\simcity.lua", "Mo_TongKim", {2})-- GM chØ lÖnh, khëi ®éng tèng kim trung cÊp
    
    RemoteExc("\\script\\simcity.lua", "Mo_TongKim", {3})
end