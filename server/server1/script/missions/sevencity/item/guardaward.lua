Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
--Giíi h¹n ®iÓm kinh nghiÖm mçi ngµy lµ 50triÖu khi sö dông c¸c lo¹i b¶o r­¬ng -vu tru le bao
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")



function main()
	local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh«ng §ñ "..SoLuongRuongTrongNhanThuong.." r­¬ng chøa ®å, kh«ng thÓ nhËn th­ëng")
		return 1
	end
	tbAwardTemplet:Give(VuTruLeBao, 1, {"SEVENCITY", "UseGuardAward"})
	return 0
end

function test()
	local rate = 0
	for i = 1, getn(VuTruLeBao) do
		rate = rate + VuTruLeBao[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("invalid rate: %d", rate))
	end
end

