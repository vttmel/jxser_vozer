
Include("\\script\\misc\\eventsys\\type\\npc.lua");

TAB_PHIPHONG = {
	{szName="Phi phong L¨ng V©n", tbProp={0,3465}, nQuality=1},
	{szName="Phi phong TuyÖt ThÕ", tbProp={0,3466}, nQuality=1},
	{szName="Phi phong cÊp Ph¸ Qu©n ( dÞch chuyÓn tøc thêi )", tbProp={0,3467}, nQuality=1},
	{szName="Phi phong Ngao tuyÕt (DÞch chuyÓn tøc thêi)", tbProp={0,3468}, nQuality=1},
	{szName="Phi phong Ng¹o TuyÕt (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3469}, nQuality=1},
	{szName="Phi phong Kinh L«i (DÞch chuyÓn tøc thêi)", tbProp={0,3470}, nQuality=1},
	{szName="Phi phong Kinh L«i (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3471}, nQuality=1},
	{szName="Phi phong Kinh L«i ( Träng kÝch )", tbProp={0,3472}, nQuality=1},
	{szName="Phi phong Ngù Phong (DÞch chuyÓn tøc thêi )", tbProp={0,3473}, nQuality=1},
	{szName="Phi phong Ngù Phong (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3474}, nQuality=1},
	{szName="Phi phong Ngù Phong (Träng kÝch)", tbProp={0,3475}, nQuality=1},
	{szName="Phi Phong PhÖ Quang ( dÞch chuyÓn tøc thêi)", tbProp={0,3476}, nQuality=1},
	{szName="Phi Phong PhÖ Quang (hãa gi¶i s¸t th­¬ng)", tbProp={0,3477}, nQuality=1},
	{szName="Phi Phong PhÖ Quang ( träng kÝch)", tbProp={0,3478}, nQuality=1},
	{szName="Phi Phong KhÊp ThÇn (dÞch chuyÓn tøc thêi)", tbProp={0,3479}, nQuality=1},
	{szName="Phi Phong KhÊp ThÇn (Hãa Gi¶i S¸t Th­¬ng)", tbProp={0,3480}, nQuality=1},
	{szName="Phi Phong KhÊp ThÇn (Träng KÝch)", tbProp={0,3481}, nQuality=1},
	{szName="Phi phong K×nh Thiªn ( DÞch chuyÓn tøc thêi)", tbProp={0,3482}, nQuality=1},
	{szName="Phi phong K×nh Thiªn (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3483}, nQuality=1},
	{szName="Phi phong K×nh Thiªn ( Träng kÝch)", tbProp={0,3484}, nQuality=1},
	{szName="Phi phong V« Cùc ( DÞch chuyÓn tøc thêi)", tbProp={0,3485}, nQuality=1},
	{szName="Phi phong V« Cùc (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3486}, nQuality=1},
	{szName="Phi phong V« Cùc ( Träng kÝch)", tbProp={0,3487}, nQuality=1},
	{szName="Phi Phong Siªu cÊp V« Cùc ( DÞch chuyÓn tøc thêi)", tbProp={0,3488}, nQuality=1},
	{szName="Phi Phong Siªu cÊp V« Cùc (X¸c suÊt hãa gi¶i s¸t th­¬ng)", tbProp={0,3489}, nQuality=1},
	{szName="Phi Phong Siªu cÊp V« Cùc ( Träng kÝch)", tbProp={0,3490}, nQuality=1},
};

function PhiPhong()
	AddItemByTable("B¹n muèn lÊy phi phong lo¹i nµo?", TAB_PHIPHONG)
end

-- pEventType:Reg("TÝnh n¨ng thö nghiÖm", "Phi Phong", PhiPhong);