Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

local tbFormula = 
{
	szName = "Bπch HÊ Kim Bµi",
	tbMaterial = {{szName="Hµnh Hi÷p L÷nh",tbProp={6,1,2566,1,0,0},nCount = 1000,},},
	tbProduct = {szName="Bπch HÊ Kim Bµi",tbProp={6,1,3183,1,0,0},},
	nWidth = 1,
	nHeight = 1,
	nFreeItemCellLimit = 1,
}
local tbCompose_XinXiaLing2BaiHuJinPai = tbActivityCompose:new(tbFormula, "xingxialin2baihujinpai")


--Tπm Æ„ng t›nh n®ng ch’ tπo Bπch HÊ - Modified By DinhHQ - 20120511
--pEventType:Reg("Hµng rong", "Mua Bπch HÊ Kim Bµi", tbCompose_XinXiaLing2BaiHuJinPai.ComposeDailog, {tbCompose_XinXiaLing2BaiHuJinPai})

--DÔng Phong V©n Thπch ÆÊi Bπch HÊ L÷nh - Modified By DinhHQ - 20120612
local tbFormula2 = 
{
	szName = "Bπch HÊ L÷nh",
	tbMaterial = {{szName="Phong V©n Thπch",tbProp={6,1,30224,1,0,0},nCount = 10,},},
	tbProduct = {szName="Bπch HÊ L÷nh",tbProp={6,1,2357,1,0,0},},
	nWidth = 1,
	nHeight = 1,
	nFreeItemCellLimit = 1,
}
local tbCompose_PVT2BHL = tbActivityCompose:new(tbFormula2, "DungPhongVanThachDoiBachHoLenh")
-- pEventType:Reg("Hµng rong", "ßÊi Bπch HÊ L÷nh", tbCompose_PVT2BHL.ComposeDailog, {tbCompose_PVT2BHL})