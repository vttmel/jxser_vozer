Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main()
	local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh«ng §ñ "..SoLuongRuongTrongNhanThuong.." r­¬ng chøa ®å, kh«ng thÓ nhËn th­ëng")
		return 1
	end
	local nNpcIndex = GetLastDiagNpc()	
	if GetNpcParam(nNpcIndex, 4) ~= 1 then
		SetNpcParam(nNpcIndex, 4, 1)
		tbAwardTemplet:GiveAwardByList(%PhanThuongRuongDauNguu, "®iÓm b¶o r­¬ng")
		DelNpc(nNpcIndex)
	else
		return
	end
end

