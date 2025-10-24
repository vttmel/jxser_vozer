Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\battles\\inc.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

battlesSongJinCheck = {
	battles_sImg = "<link=image:\\spr\\skill\\christmas\\star2.spr><link><color><color=orange>Anti Post: <color>",
	battles_tbTempIP = {},
}

function battlesSongJinCheck:FuncCheckIP(battles_In_1)
	if KiemTraIpChongBoostDiemTongKim ~= 1 then 
		return nil 
	end
	
	local battles_2 = GetStringTask(7)
	
	if battlesGetIPAdressWithProtocol == 1 then
		battles_2 = GetStringTask(7)
	else
		local battles_1 = GetIP()
		battles_2 = strsub(battles_1, 1, strfind(battles_1, ":") - 2)
	end
	local battles_3 = battles.Str2Byte(battles_2)
	local battles_4 = tonumber(date("%H"))
	if getn(self.battles_tbTempIP) > 0 then
		if battles.False(self.battles_tbTempIP[battles_4]) then
			self.battles_tbTempIP = {nil}
			self.battles_tbTempIP[battles_4] = {
				battlesSong = {},
				battlesJin = {}}
		end
	else
		self.battles_tbTempIP[battles_4] = {
			battlesSong = {},
			battlesJin = {}}
	end
	local battles_5, battles_6 = 0, {"Tèng", "Kim"}
	if battles.True(self.battles_tbTempIP[battles_4].battlesSong[battles_3]) then
		battles_5 = 1
	elseif battles.True(self.battles_tbTempIP[battles_4].battlesJin[battles_3]) then
		battles_5 = 2
	end
	if battles_5 ~= 0 and battles_5 ~= battles_In_1 then
		CreateNewSayEx(self.battles_sImg.."§Þa chØ IP cña b¹n: "..battles_2.."<enter>Ng­êi ®Çu tiªn tham gia chiÕn tr­êng cña ®Þa chØ IP<enter>trªn ®· chän phe "..battles.C(1, battles_6[battles_5])
			.." nªn b¹n kh«ng thÓ chän phe kh¸c<enter>vui lßng ®Õn ®iÓm b¸o danh phe "..battles.C(1, battles_6[battles_5]).." ®Ó tham gia chiÕn tr­êng!",
			{{"T¹i h¹ biÕt råi!", battles.OnCancel}})
		return 1
	end
	if battles_5 == 0 then
		if battles_In_1 == 1 then
			if battles.False(self.battles_tbTempIP[battles_4].battlesSong[battles_3]) then
				self.battles_tbTempIP[battles_4].battlesSong[battles_3] = battles_2
			end
		elseif battles_In_1 == 2 then
			if battles.False(self.battles_tbTempIP[battles_4].battlesJin[battles_3]) then
				self.battles_tbTempIP[battles_4].battlesJin[battles_3] = battles_2
			end
		end
	end
end


































