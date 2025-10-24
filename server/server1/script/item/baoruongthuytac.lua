---------------Youtube PGaming---------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")

function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------------------
function main()

------------------------------------
if GetLevel() < 50 then
	Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 50 kh«ng thÓ sö dông")
return 1 end	
tbAwardTemplet:GiveAwardByList(tbAward,1)		
end
-----------------------------------------------------------------------------------------------------------------------
tbAward = {
	[1] = {
		{nExp_tl=500000},
	},
	[2] = {
		{szName="Tiªn Th¶o Lé",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=43200,nRate=3},	
		{szName="Phóc Duyªn Lé §¹i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Phóc Duyªn Lé Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Phóc Duyªn Lé TiÓu",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="HuyÒn Tinh CÊp 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Tiªn Th¶o Lé §Æc BiÖt",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=43200,nRate=0.5},
		{szName="LÖnh Bµi Phong L¨ng §é",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=43200},
		{szName="Tinh Hång B¶o Th¹ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Thñy Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="Lôc Thñy Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="Tö Thñy Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
------------------------------------------------------------------------------------------------------------------------------------------------