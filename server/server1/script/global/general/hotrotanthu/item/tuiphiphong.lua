Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

TAB_PHIPHONG = {
	[1] = {
		{szName="Phi phong L¨ng V©n", tbProp={0,3465}, nQuality=1, nBindState=-2},
	},
	[2] = {
		{szName="Phi phong TuyÖt ThÕ", tbProp={0,3466}, nQuality=1, nBindState=-2},
	},
	[3] = {
		{szName="Phi phong cÊp Ph¸ Qu©n ( dÞch chuyÓn tøc thêi )", tbProp={0,3467}, nQuality=1, nBindState=-2},
	},
	[4] = {
		{szName="Phi phong Ngao tuyÕt (DÞch chuyÓn tøc thêi)", tbProp={0,3468}, nQuality=1, nBindState=-2},
		{szName="Phi phong Ng¹o TuyÕt (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3469}, nQuality=1, nBindState=-2},
	},
	[5] = {
		{szName="Phi phong Kinh L«i (DÞch chuyÓn tøc thêi)", tbProp={0,3470}, nQuality=1, nBindState=-2},
		{szName="Phi phong Kinh L«i (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3471}, nQuality=1, nBindState=-2},
		{szName="Phi phong Kinh L«i ( Träng kÝch )", tbProp={0,3472}, nQuality=1, nBindState=-2},
	},
	[6] = {
		{szName="Phi phong Ngù Phong (DÞch chuyÓn tøc thêi )", tbProp={0,3473}, nQuality=1, nBindState=-2},
		{szName="Phi phong Ngù Phong (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3474}, nQuality=1, nBindState=-2},
		{szName="Phi phong Ngù Phong (Träng kÝch)", tbProp={0,3475}, nQuality=1, nBindState=-2},
	},
	[7] = {
		{szName="Phi Phong PhÖ Quang ( dÞch chuyÓn tøc thêi)", tbProp={0,3476}, nQuality=1, nBindState=-2},
		{szName="Phi Phong PhÖ Quang (hãa gi¶i s¸t th­¬ng)", tbProp={0,3477}, nQuality=1, nBindState=-2},
		{szName="Phi Phong PhÖ Quang ( träng kÝch)", tbProp={0,3478}, nQuality=1, nBindState=-2},
	},
	[8] = {
		{szName="Phi Phong KhÊp ThÇn (dÞch chuyÓn tøc thêi)", tbProp={0,3479}, nQuality=1, nBindState=-2},
		{szName="Phi Phong KhÊp ThÇn (Hãa Gi¶i S¸t Th­¬ng)", tbProp={0,3480}, nQuality=1, nBindState=-2},
		{szName="Phi Phong KhÊp ThÇn (Träng KÝch)", tbProp={0,3481}, nQuality=1, nBindState=-2},
	},
	[9] = {
		{szName="Phi phong K×nh Thiªn ( DÞch chuyÓn tøc thêi)", tbProp={0,3482}, nQuality=1, nBindState=-2},
		{szName="Phi phong K×nh Thiªn (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3483}, nQuality=1, nBindState=-2},
		{szName="Phi phong K×nh Thiªn ( Träng kÝch)", tbProp={0,3484}, nQuality=1, nBindState=-2},
	},
	[10] = {
		{szName="Phi phong V« Cùc ( DÞch chuyÓn tøc thêi)", tbProp={0,3485}, nQuality=1, nBindState=-2},
		{szName="Phi phong V« Cùc (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3486}, nQuality=1, nBindState=-2},
		{szName="Phi phong V« Cùc ( Träng kÝch)", tbProp={0,3487}, nQuality=1, nBindState=-2},
	},
}

function main(nItemIndex)
	dofile("script/global/general/hotrotanthu/item/tuiphiphong.lua")
	local nG,nD,nP,nL,nS,nM = GetItemProp(nItemIndex)
	print(nG,nD,nP,nL,nS,nM)
	if not (TAB_PHIPHONG[nL]) then
		Talk(1, "", "§¼ng cÊp phi phong nµy kh«ng ®­îc hç trî!")
	return 1 end;
	
	local szTitle = "Mêi b¹n lùa chän phi phong:";
	local tbOpt = {}
	for i = 1, getn(TAB_PHIPHONG[nL]) do
		tinsert(tbOpt, {format("%s", TAB_PHIPHONG[nL][i].szName), PhiPhongConfirm, {nItemIndex, TAB_PHIPHONG[nL][i]}})
	end
		tinsert(tbOpt, {"§ãng."})
	CreateNewSayEx(szTitle, tbOpt)
return 1 end

function PhiPhongConfirm(nItemIndex, tbItem)
	tbAwardTemplet:GiveAwardByList(tbItem, "Tói phi phong")
	RemoveItemByIndex(nItemIndex);
end