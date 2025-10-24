--Started by ZhuYingTai 14/5/2015 3p xo 1 lan
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\basic.lua") 
-- Include("\\script\\lib\\player.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

tbWinCashMsg = {
"Ng­êi ch¬i %s ®· ¨n ®­îc %s v¹n l­îng tõ Banh X¸c ®¹i nh©n. ThËt may m¾n",
-- "Con b¹c %s cÇm %s v¹n l­îng ¨n ®­îc tõ bÇu cua mµ khãc r»ng: Trêi vÉn cßn th­¬ng con.. Cuéc ®êi thËt kh«ng nhÉn t©m víi nh÷ng ng­êi khèn khæ nh­ ta.",
-- "Banh X¸c ®¹i nh©n h¨ng m¸u h« lªn: %s!, Ng­¬i ¨n ®­îc cña ta %s v¹n råi. §õng cã ¨n non mµ bá vÒ nhÐ. Ha ha",
-- "£. %s. Ng­¬i lµm c¸ch nµo mµ th¾ng ®­îc %s v¹n l­îng tõ ta hay vËy? Ng­¬i cã d¸m thö víi ta lÇn n÷a kh«ng? ",
-- "%s bçng d­ng hÐt to¸ng lªn: H¶o h÷u vÒ trung t©m T­¬ng D­¬ng ta chia tiÒn nÌ. Võa tróng %s v¹n l­îng ®· thiÖt ®ã chø.",
-- "%s mÆt mµy nh­ hãa ®iªn hãa d¹i, tay ch©n ®Ëp lo¹n x¹ rÇm rÇm lªn bµn. Cuèi cïng «ng trêi ®· kh«ng phô lßng ta. ¡n ®­îc %s v¹n råi. H« h«.",
}
tbWinCoinMsg = {
"Ng­êi ch¬i %s ®· ¨n ®­îc %s tiÒn ®ång tõ Banh X¸c ®¹i nh©n. ThËt may m¾n",
-- "BÇu cua, cua bÇu. Cuéc ®êi ®· sang trang kh¸c víi %s sau khi h¾n tróng %s tiÒn ®ång tõ Banh X¸c ®¹i nh©n.",
-- "Th©n bÊt do kØ trêi chu ®Êt diÖt. %s sau khi tróng bÇu cua véi v¹ ch¹y vÒ thñ khè cÊt hÕt %s tiÒn ®ång ¨n ®­îc. ThËt lµ trang h¶o h¸n..",
-- "Ng­êi ®êi th­êng nãi: ®á b¹c ®en t×nh. ThËt qu¶ lµ chÝnh x¸c. %s tróng lu«n %s tiÒn ®ång. ¤ng trêi kh«ng lÊy kh«ng cña ai mét c¸i g×.",
-- "Mçi ngµy %s d¸n m¾t vµo mµn h×nh bÇu cua dïng giÊy mùc ghi chÐp l¹i quy luËt thËt kh«ng uæng c«ng. Tróng liÒn %s tiÒn ®ång. Cã c«ng mµi s¾t cã ngµy nªn kim.",
-- "Lµm giµu kh«ng khã víi bÇu cua. %s ®Æt tróng ngay %s tiÒn ®ång. Xa gÇn tËn trêi mµ gÇn ngay tr­íc m¾t. Ba L¨ng th¼ng tiÕn nµo.",
-- "§Õn víi Vâ l©m bÝ sö tr¶i nghiÖm bÇu cua. Ai ngê %s tróng ngay %s tiÒn ®ång. Sao hªn vËy ta?",
}
FishGame = FishGame or {
tbPlayerList = {},--luu toan bo thong tin nguoi choi: {nIndex,{Chua so cac con danh:["Bau"] = nCash,["Cua"] = nCash....},nAwardCash = 0-- luu so tien thang neu nguoi choi out game hoac trong truong hop dac biet khong add duoc tien}
nResult = {},--{"Bau","Cua"}

nTotalCash = 0,-- luu toan bo so tien danh
nTotalCoin = 0,-- lua tona bo so xu danh
nStarted = 0,
nTOTAL_RATE = 0,
DOUBLE_RATE = 2,-- ti le ra 2 amt giong nhau ti le chuan
NORMAL_RATE = 1,-- ti le ra 3 mat khac nhau ti le chuan
}
tbAllResult = tbAllResult or {

}


function FishGame:Init()
if SubWorldID2Idx(78) < 0 then-- kiem tra xem co phai map tuong duong ko?
	return
end
if self.nStarted == 0 then
self.TimerID = TimerList:AddTimer(self, 18*60); --1 phut se chay 1 lan
self.nStarted = 1
self.nStatus = 0
end
local nLuckRand= random(1,100)
self.NORMAL_RATE = nLuckRand
self.DOUBLE_RATE = nLuckRand * 2
for i=1,6 do-- khoi tao bang gia tri
	for j=1,6 do
		for k=1,6 do
			if i==j or i==k or k==j then
				tinsert(tbAllResult,1,{i,j,k,self.DOUBLE_RATE})
				self.nTOTAL_RATE = self.nTOTAL_RATE + self.DOUBLE_RATE
			else
				tinsert(tbAllResult,1,{i,j,k,self.NORMAL_RATE})
				self.nTOTAL_RATE = self.nTOTAL_RATE + self.NORMAL_RATE
			end
		end
	end
end
end
function FishGame:Stop()-- dong bau cua
self.nStarted = 0
--TimerList:DelTimer(self.TimerID);
end
-- FishGame:Init()
function FishGame:GetNextResult()
print("Da chay qua")
local nRand = random(1,self.nTOTAL_RATE)
local nResult = 0
local nValue = 0
for i = 1,getn(tbAllResult) do
	nValue = nValue + tbAllResult[i][4]
	if nRand <= nValue then
		nResult = i
		break
	end
end
if nResult == 0 then
return nil
end
local tbResult = {ChangeToString(tbAllResult[nResult][1]),ChangeToString(tbAllResult[nResult][2]),ChangeToString(tbAllResult[nResult][3])}
for i=1,3 do
self.nResult[tbResult[i]] = self.nResult[tbResult[i]] or 0--
self.nResult[tbResult[i]] = self.nResult[tbResult[i]] + 1
end
--- GHI LAI LOG KET QUA BAU CUA ------------------
	WriteLog("Ket qua bau cua lan nay"..tbResult[1].."va"..tbResult[2].."va"..tbResult[3])
--- THAY DOI GIA TRI HIEN THI RA KENH CONG BO -----
	local SprThongBao = {SprMsg(tbAllResult[nResult][1]),SprMsg(tbAllResult[nResult][2]),SprMsg(tbAllResult[nResult][3])}
	for i=1,3 do
		self.nResult[SprThongBao[i]] = self.nResult[tbResult[i]] or 0--
		self.nResult[SprThongBao[i]] = self.nResult[tbResult[i]] + 1
	end
		local szMsg = format("<bclr=white>KÕt Qu¶ LÇn Më N¾p Nµy Lµ:<bclr><enter> <enter><color=violet> Ba MÆt<color> %s   --  %s  --  %s <enter> <enter><color=green>Mêi rót tay ra ®Ó ta L¾c Hét !<color>",SprThongBao[1],SprThongBao[2],SprThongBao[3])
		--Msg2SubWorld(szMsg)
		Msg2Map(78, szMsg)
	return 1
end
-----  GAN GIA TRI MOI CHO NVALUE DE HIEN THI RA BEN NGOAI HE THONG -----
function SprMsg(nValue)
	if nValue == 1 then
		return "<pic=146>" -- bau
	elseif nValue == 2 then
		return "<pic=147>" -- cua
	elseif nValue == 3 then
		return "<pic=148>" -- tom
	elseif nValue == 4 then 
		return "<pic=149>"  -- ca
	elseif nValue == 5 then
		return "<pic=150>"  -- ga
	elseif nValue == 6 then
		return "<pic=151>"  -- nai
	end
end
-----  GAN GIA TRICHO NVALUE DE GHI LAI LOG THONG TIN GAME VA THUC HIEN SCRIPT TIEP THEO -----
function ChangeToString(nValue)
	if nValue == 1 then
		return "BÇu"
	elseif nValue == 2 then
		return "Cua"
	elseif nValue == 3 then
		return "T«m"
	elseif nValue == 4 then
		return "C¸"
	elseif nValue == 5 then
		return "Gµ"
	elseif nValue == 6 then
		return "Nai"
	end
end

function FishGame:CalAwardForPlayer()
print("Da chay qua 2")
local nLoseCash = 0
local nLoseCoint = 0
for szName,tbInfo in self.tbPlayerList do
	for szChoice,nPoint in self.nResult do
	local tbKind = tbInfo.tbPut[szChoice]
	if tbKind then--
		if tbKind.nCash then--
			tbInfo.nAwardCash =  tbInfo.nAwardCash + (nPoint + 1)*tbKind.nCash
			nLoseCash = nLoseCash + (nPoint + 1)*tbKind.nCash
		end
		if tbKind.nCoin then--
			tbInfo.nAwardCoin =  tbInfo.nAwardCoin + (nPoint + 1)*tbKind.nCoin
			nLoseCoint = nLoseCoint + (nPoint + 1)*tbKind.nCoin
		end
	end
	end
tbInfo.tbPut = {-- reset sau khi nhan giai

}-- xoa toan bo du lieu danh truoc day
-- end
end
WriteLog("Bau cua lan nay tong tien van dat "..self.nTotalCash.." thua "..nLoseCash)
WriteLog("Bau cua lan nay tong tien don dat "..self.nTotalCoin.." thua "..nLoseCoint)
-------------------------------------------------------------Luu Dat Cuoc Chung Bau Cua --------------------------------------------------------
		local LogOpenItemFileName = openfile("script/global/pgaming/cobac/baucua/logs/baucua_"..date("%d_%m_%Y")..".log", "a");
		write(LogOpenItemFileName, date("%H:%M:%S").."\t ----------------------So Dat Cuoc : "..self.nTotalCoin.."\t So Chi Tra "..nLoseCoint.."\tLoi Tuc\t"..self.nTotalCoin-nLoseCoint.."\n")
		closefile(LogOpenItemFileName)
------------------------------------------------------------------------------------------------------------------------------------------------
self.nTotalCash = 0--
self.nTotalCoin = 0
self.nResult = {}
end

function FishGame:AddAwardForPlayer()
print("Da chay qua 3")
for szName,tbInfo in self.tbPlayerList do
	
	if callPlayerFunction(tbInfo.nIndex,GetName) == szName and tbInfo.nAwardCash and tbInfo.nAwardCash > 0 then--  tien van
		callPlayerFunction(tbInfo.nIndex,Earn,tbInfo.nAwardCash*10000)
		callPlayerFunction(tbInfo.nIndex,Msg2Player,format("Ng­¬i nhËn ®­îc sè tiÒn %d v¹n tõ BÇu Cua ®¹i nh©n",tbInfo.nAwardCash))
		if tbInfo.nAwardCash > 100  then--<color=yellow> %d v¹n <color>
				Msg2SubWorld(format("Nh©n vËt <color=green>%s<color> ¨n ®­îc <color=yellow>%d tiÒn v¹n <color>tõ ho¹t ®éng BÇu cua. ThËt may m¾n",szName,tbInfo.nAwardCash))
			-- Msg2SubWorld(format(tbWinCashMsg[random(getn(tbWinCashMsg))],"<color=green>"..szName.."<color>","<color=yellow>"..tbInfo.nAwardCash.."<color>"))
			WriteLog(format("Nhan vat %s th¾ng so tien %d v¹n",szName ,tbInfo.nAwardCash))
		end
		tbInfo.nAwardCash = 0
	end
	if callPlayerFunction(tbInfo.nIndex,GetName) == szName and tbInfo.nAwardCoin and tbInfo.nAwardCoin > 0 then-- tiÒn ®ång
		-- print ("Da trao thuong tien dong cho"..szName)
		local nCoin = tbInfo.nAwardCoin
		if nCoin <= 100 then
			callPlayerFunction(tbInfo.nIndex,AddStackItem,nCoin,4,417,1,1,0,0)
		else-- lon hon 100
			local nRound = nCoin/100
			for i=1,nRound do
				callPlayerFunction(tbInfo.nIndex,AddStackItem,100,4,417,1,1,0,0)
			end
			if mod(nCoin,100) > 0 then
				callPlayerFunction(tbInfo.nIndex,AddStackItem,mod(nCoin,100),4,417,1,1,0,0)
			end
		end
		callPlayerFunction(tbInfo.nIndex,Msg2Player,format("Ng­¬i nhËn ®­îc %d tiÒn ®ång tõ BÇu Cua ®¹i nh©n",nCoin))
		Msg2SubWorld(format("Con b¹c <color=green>%s<color> ®· nhËn ®­îc <enter><color=yellow>%d TiÒn §ång<color> tõ <bclr=white>Sßng BÇu Cua<bclr>",szName,nCoin))
		WriteLog(format("Nhan vat %s th¾ng so tien %d ®ång",szName ,nCoin))
-------------------------------------------------------------Luu So Tien Dong Sau Moi Luot Danh--------------------------------------------------------
	local LogOpenItemFileName = openfile("script/global/pgaming/cobac/baucua/logs/baucua_"..date("%d_%m_%Y")..".log", "a");
	write(LogOpenItemFileName, date("%H:%M:%S").."\t Name: "..szName.."\t Chien Thang Bau Cua "..nCoin.." Tien Dong\n")
	closefile(LogOpenItemFileName)
------------------------------------------------------------------------------------------------------------------------------------------------
		tbInfo.nAwardCoin = 0
	end
end
end
function main()-- doi thoai voi npc
dofile("script/global/pgaming/cobac/baucua/baucua.lua")
local nNowTime = tonumber(date( "%H%M "))
if (nNowTime > ThoiGianBatDauBauCua and nNowTime < ThoiGianKetThucBauCua ) then  
Say("Ng­êi anh em cÇn g× ë ta?",3,"BÇu cua/OnChoseKind","Xem c¸c cña ®Æt lÇn nµy/showFishGate","Th«i ta hÕt tiÒn råi/no")
else
Say(""..ThoiGianBatDauBauCuaText.."",0)
return
end
end
function showFishGate()
local szName = GetName()
if not FishGame.tbPlayerList[szName]  then--
Say("Ng­¬i ch­a ®Æt cöa nµo c¶",0)
return
end
local pPlayer =FishGame.tbPlayerList[szName]
local szMsg = ""
for szChoice,tbKind in pPlayer.tbPut do
szMsg = szMsg.."Cöa: <color=green>"..szChoice.."<color> ".."TiÒn ®Æt:"
if tbKind.nCash then
szMsg = szMsg.."<color=red>"..tbKind.nCash.."<color> v¹n "
end
if tbKind.nCoin then
szMsg = szMsg.." <color=green>"..tbKind.nCoin.."<color> tiÒn ®ång"
end
szMsg=szMsg.."\n"
end
Describe(szMsg,0)
end

function OnChoseKind()
Say("Ng­¬i muèn ch¬i kh« m¸u?",3,"TiÒn v¹n/#joinFishGame(1)","TiÒn ®ång/#joinFishGame(2)","Th«i ta thua nhiÒu qu¸ råi/no")
	--Say("Ng­¬i muèn ch¬i kh« m¸u?",2,"TiÒn ®ång/#joinFishGame(2)","Th«i ta thua nhiÒu qu¸ råi/no")
-- Say("Ng­¬i muèn ch¬i b»ng g×?",2,"TiÒn v¹n/#joinFishGame(1)","Th«i ta thua nhiÒu qu¸ råi/no")
end

function joinFishGame(nKind)
if FishGame.nStatus ~= 1 then
Talk(1,"","<color=green> ===== Ta ®ang l¾c hò ®õng véi! ===== <enter><color=violet>§îi 1 Phót n÷a ta l¾c hò xong råi ®Æt !<color>")
return
end
FishGame:OnPlayerJoin(PlayerIndex,GetName())
if nKind == 1 then
local tbSay = {
"BÇu/#OnChoose(1,1)",
"Cua/#OnChoose(2,1)",
"T«m/#OnChoose(3,1)",
"C¸/#OnChoose(4,1)",
"Gµ/#OnChoose(5,1)",
"Nai/#OnChoose(6,1)",
"Th«i ta kh«ng ch¬i n÷a/no"
}
Say("Ng­¬i chän con nµo?<enter><color=yellow>ChØ cã thÓ ®Æt c­îc 1 lÇn duy nhÊt, h·y suy nghÜ kü.<color>",getn(tbSay),tbSay)
else
local tbSay = {
"BÇu/#OnChoose(1,2)",
"Cua/#OnChoose(2,2)",
"T«m/#OnChoose(3,2)",
"C¸/#OnChoose(4,2)",
"Gµ/#OnChoose(5,2)",
"Nai/#OnChoose(6,2)",
"Th«i ta kh«ng ch¬i n÷a/no"
}
Say("Ng­¬i chän con nµo?<enter><color=yellow>ChØ cã thÓ ®Æt c­îc 1 lÇn duy nhÊt, h·y suy nghÜ kü.<color>",getn(tbSay),tbSay)

end
end
function OnChoose(nChoice,nKind)
-- Say("")
if nKind == 1 then
local nMaxCount = 100
g_AskClientNumberEx(1,nMaxCount, format("TiÒn (1-%d) v¹n", nMaxCount), {FishGame.GetNumberFromClient,{FishGame,nChoice,nKind} })
else
local nMaxCount = 100
g_AskClientNumberEx(1,nMaxCount, format("TiÒn ®ång (1-%d)", nMaxCount), {FishGame.GetNumberFromClient,{FishGame,nChoice,nKind} })
end
end

function FishGame:GetNumberFromClient(nChoice,nKind,nPutCash)
self:OnPlayerPut(PlayerIndex,GetName(),nPutCash,nChoice,nKind)
end

function FishGame:OnPlayerPut(nPlayerIndex,szName,nPutCash,nChoice,nKind)
if nPutCash > 100 then
Say("§õng cã ¨n gian...:D",0)
return
end
if not self.tbPlayerList[szName] or self.tbPlayerList[szName].nIndex ~= nPlayerIndex then
callPlayerFunction(nPlayerIndex,Say,"Cã lçi xay ra vui lßng liÖn hÖ GM ®Ó biÕt thªm chi tiÕt",0)
return
end
local pPlayer = self.tbPlayerList[szName]
local szChoice =""
	if nChoice == 1 then
		szChoice = "BÇu"
		szChoiceSpr = "<pic=140>" -- bau
	elseif nChoice == 2 then
		szChoice = "Cua"
		szChoiceSpr = "<pic=141>" -- cua
	elseif nChoice == 3 then
		szChoice = "T«m"
		szChoiceSpr = "<pic=142>" -- tom
	elseif nChoice == 4 then
		szChoice = "C¸"
		szChoiceSpr = "<pic=143>" -- ca
	elseif nChoice == 5 then
		szChoice = "Gµ"
		szChoiceSpr = "<pic=144>" -- ga
	elseif nChoice == 6 then
		szChoice = "Nai"
		szChoiceSpr = "<pic=145>" -- nai
	end
-- if nKind == 1 then-- tien van ne

-- else -- tien dong

-- end
if nKind == 1 then-- tien van
if pPlayer.tbPut[szChoice] and pPlayer.tbPut[szChoice].nCash and pPlayer.tbPut[szChoice].nCash + nPutCash > 100 then
Say("Ng­¬i ®Æt qu¸ 100 v¹n mét cöa råi. Th¾ng ta quÞt tiÒn lu«n ®ã:T...",0)
return
end

if pPlayer.tbPut["Cua"] and pPlayer.tbPut["Cua"].nCash and pPlayer.tbPut["Cua"].nCash + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["BÇu"] and pPlayer.tbPut["BÇu"].nCash and pPlayer.tbPut["BÇu"].nCash + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["T«m"] and pPlayer.tbPut["T«m"].nCash and pPlayer.tbPut["T«m"].nCash + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["Gµ"] and pPlayer.tbPut["Gµ"].nCash and pPlayer.tbPut["Gµ"].nCash + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["C¸"] and pPlayer.tbPut["C¸"].nCash and pPlayer.tbPut["C¸"].nCash + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["Nai"] and pPlayer.tbPut["Nai"].nCash and pPlayer.tbPut["Nai"].nCash + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

local nOwnCash = callPlayerFunction(nPlayerIndex,GetCash)
if nOwnCash < nPutCash * 10000 then
callPlayerFunction(nPlayerIndex,Say,"Kh«ng ®ñ tiÒn mµ còng d¸m ®Æt cöa. §i chç kh¸c ch¬i gióp kÎ kiÕt x¸c nµy",0)
return
end
callPlayerFunction(nPlayerIndex,Pay,nPutCash*10000)
pPlayer.tbPut[szChoice] = pPlayer.tbPut[szChoice] or {}
pPlayer.tbPut[szChoice].nCash = pPlayer.tbPut[szChoice].nCash or 0-- chua co thi khoi tao
pPlayer.tbPut[szChoice].nCash = pPlayer.tbPut[szChoice].nCash + nPutCash	
WriteLog(format("Nhan vat %s dat cua %s so tien %d v¹n",szName,szChoice,nPutCash))
if nPutCash > 0 then--
--MsgTienVan = (format("Con b¹c <color=green> %s <color> quyÕt ch¬i banh x¸c víi BÇu Cua ®¹i nh©n víi  <color=yellow> %d v¹n <color> . §éng §×nh hå Ba l¨ng cã mÊy ®«i giµy cña mÊy ng­êi thua bÇu cua ®Ó l¹i råi ®Êy.!!!",szName,nPutCash))
MsgTienVan = (format("Con b¹c <color=green>%s<color> ®· ®Æt c­îc:<enter> <enter>Cöa %s víi <bclr=white>%d V¹n<bclr>.",szName,szChoiceSpr,nPutCash))
Msg2Map(78, MsgTienVan) 
end
self.nTotalCash = self.nTotalCash + nPutCash
else-- tien dong
if pPlayer.tbPut[szChoice] and pPlayer.tbPut[szChoice].nCoin and pPlayer.tbPut[szChoice].nCoin + nPutCash > 100 then
Say("Ng­¬i ®Æt qu¸ 100 tiÒn ®ång mét cöa råi. §õng kh« m¸u nh­ thÕ chø..",0)
return
end

if pPlayer.tbPut["Cua"] and pPlayer.tbPut["Cua"].nCoin and pPlayer.tbPut["Cua"].nCoin + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["BÇu"] and pPlayer.tbPut["BÇu"].nCoin and pPlayer.tbPut["BÇu"].nCoin + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["T«m"] and pPlayer.tbPut["T«m"].nCoin and pPlayer.tbPut["T«m"].nCoin + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["Gµ"] and pPlayer.tbPut["Gµ"].nCoin and pPlayer.tbPut["Gµ"].nCoin + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["C¸"] and pPlayer.tbPut["C¸"].nCoin and pPlayer.tbPut["C¸"].nCoin + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

if pPlayer.tbPut["Nai"] and pPlayer.tbPut["Nai"].nCoin and pPlayer.tbPut["Nai"].nCoin + nPutCash > 0 then
Say("ChØ ®­îc ®Æt c­îc 1 lÇn",0)
return
end

local nOwnCoin = callPlayerFunction(nPlayerIndex,CalcEquiproomItemCount,4, 417, 1, -1)
if nOwnCoin < nPutCash then
callPlayerFunction(nPlayerIndex,Say,"Kh«ng ®ñ tiÒn ®ång mµ còng d¸m ®Æt cöa. TÐ ®i",0)
return
end
if callPlayerFunction(nPlayerIndex,ConsumeEquiproomItem,nPutCash, 4, 417, 1, -1) ~= 1 then--
callPlayerFunction(nPlayerIndex,Say,"Xin lçi cã lçi xÈy nghiªm träng vui lßng liªn hÖ GM")
return
end
pPlayer.tbPut[szChoice] = pPlayer.tbPut[szChoice] or {}
pPlayer.tbPut[szChoice].nCoin = pPlayer.tbPut[szChoice].nCoin or 0-- chua co thi khoi tao
pPlayer.tbPut[szChoice].nCoin = pPlayer.tbPut[szChoice].nCoin + nPutCash
WriteLog(format("Nhan vat %s dat cua %s so tien %d tiÒn ®ång",szName,szChoice,nPutCash))
-------------------------------------------------------------Luu Dat Cuoc Tung Cua--------------------------------------------------------
	local LogOpenItemFileName = openfile("script/global/pgaming/cobac/baucua/logs/baucua_"..date("%d_%m_%Y")..".log", "a");
	write(LogOpenItemFileName, date("%H:%M:%S").."\t Name: "..szName.."\t Dat Cuoc "..szChoice.." Voi "..nPutCash.." Tien Dong\n")
	closefile(LogOpenItemFileName)
------------------------------------------------------------------------------------------------------------------------------------------------
if nPutCash > 0 then
MsgTienDong = (format("Con b¹c <color=green>%s<color> ®· ®Æt c­îc:<enter> <enter>Cöa %s víi <bclr=white>%d TiÒn §ång<bclr>.",szName,szChoiceSpr,nPutCash))
Msg2Map(78, MsgTienDong) 
end
self.nTotalCoin = self.nTotalCoin + nPutCash

end
end





function FishGame:OnPlayerJoin(nPlayerIndex,szName)
if not self.tbPlayerList[szName] then
self:AddNewPlayer(nPlayerIndex,szName)
return
end
if self.tbPlayerList[szName].nAwardCash > 0 then-- tra lai tien thang truoc do
	callPlayerFunction(nPlayerIndex,Earn,self.tbPlayerList[szName].nAwardCash*10000 )
	callPlayerFunction(nPlayerIndex,Msg2Player,format("Ng­¬i nhËn ®­îc sè tiÒn %d v¹n tõ bÇu cua thËt may m¾n",self.tbPlayerList[szName].nAwardCash))
	WriteLog(format("Nhan vat %s th¾ng so tien %d v¹n",szName ,self.tbPlayerList[szName].nAwardCash))
	self.tbPlayerList[szName].nAwardCash = 0
end
if self.tbPlayerList[szName].nAwardCoin > 0 then-- tra lai tien thang truoc do
		local nCoin = self.tbPlayerList[szName].nAwardCoin
		if nCoin <= 100 then
			callPlayerFunction(nPlayerIndex,AddStackItem,nCoin,4,417,1,1,0,0)
		else-- lon hon 100
			local nRound = nCoin/100
			for i=1,nRound do
				callPlayerFunction(nPlayerIndex,AddStackItem,100,4,417,1,1,0,0)
			end
			if mod(nCoin,100) > 0 then
				callPlayerFunction(nPlayerIndex,AddStackItem,mod(nCoin,100),4,417,1,1,0,0)
			end
		end
		self.tbPlayerList[szName].nAwardCoin = 0
		callPlayerFunction(nPlayerIndex,Msg2Player,format("Ng­¬i nhËn ®­îc %d tiÒn ®ång tõ bÇu cua thËt may m¾n",nCoin))
		-- Msg2SubWorld(format("Con b¹c <color=green> %s<color> ¨n ®­îc tõ Banh X¸c phu nh©n <color=yellow> %d tiÒn ®ång <color> tõ bÇu cua thËt may m¾n.",szName,nCoin))
-------------------------------------------------------------Luu So Tien Dong Nguoi Thang Cuoc--------------------------------------------------------
		local LogOpenItemFileName = openfile("script/global/pgaming/cobac/baucua/logs/baucua_"..date("%d_%m_%Y")..".log", "a");
		write(LogOpenItemFileName, date("%H:%M:%S").."\t Name: "..szName.."\t Chien Thang Bau Cua "..nCoin.."\n")
		closefile(LogOpenItemFileName)
------------------------------------------------------------------------------------------------------------------------------------------------
		WriteLog(format("Nhan vat %s th¾ng so tien %d ®ång",szName ,nCoin))
		-- tbInfo.nAwardCoin = 0
end
self.tbPlayerList[szName].nIndex = nPlayerIndex-- tra lai index cho dung
end


function FishGame:AddNewPlayer(nPlayerIndex,szName)
self.tbPlayerList[szName] = {
nIndex = nPlayerIndex,
tbPut ={
-- ["BÇu"] = {}
-- ["Cua"] = {}
-- ["T«m"] = {}
-- ["C¸"] = {}
-- ["Gµ"] = {}
-- ["Nai"] = {}
},
nAwardCash = 0,
nAwardCoin = 0,
}
end
function FishGame:OnTime()-- moi 1 phut se chay 1 lan 
print("BAU CUA DA CHAY")
local nMin = tonumber(GetLocalDate("%M")); -- lay so phut
local nX = mod(nMin,3)-- phut 1, 2 cho danh phut thu 3 ko cho danh
if nX == 0 then-- dang tinh ket qua khong cho danh tranh bug
FishGame.nStatus = 0
if FishGame:GetNextResult() ~= 1 then-- loi tinh toan
print("Bi dien roi")
return
end
FishGame:CalAwardForPlayer()
FishGame:AddAwardForPlayer()
else
FishGame.nStatus = 1
end
-- Say("TÝnh n¨ng chØ ®­îc khai më c¸c khung giê 6h-7h, 12h-13h,17h-19h, 22h-23h59h»ng ngµy. Vui lßng quay l¹i sau",0)
local nNowTime = tonumber(date( "%H%M "))
-- if (nNowTime >=600 and nNowTime < 700 ) or (nNowTime >=1200 and nNowTime < 1300 ) or (nNowTime >=1700 and nNowTime < 1900 ) or (nNowTime >=2200) then
if (nNowTime > ThoiGianBatDauBauCua and nNowTime < ThoiGianKetThucBauCua ) then  
if nX == 1 then
Msg2Map(78, "<bclr=white> B¾t ®Çu ®Æt c­îc bÇu cua, h·y lùa chän cöa ®Ó xuèng x¸c nµo, thêi gian ®Æt c­îc lµ <color=yellow>1<color> phót.<bclr>")
end
return 1
end
-- if (nNowTime >= 0 and nNowTime < 1100) or (nNowTime >= 1300 and nNowTime < 2200)  then
 self:Stop()
 return
 -- end
-- return
end
-------------------------------------- TU DONG NOI CHUYEN --------------------------------
function OnTimer(nNpcIndex,nTimeOut)
local nNowTime = tonumber(date( "%H%M "))
    if (nNowTime > ThoiGianBatDauBauCua and nNowTime < ThoiGianKetThucBauCua ) then   
		DynamicExecute("\\script\\global\\pgaming\\cobac\\baucua\\baucua.lua", "FishGame:Init")
    local tab_Chat = {
			"     <pic=115><pic=115><pic=115><bclr=blue><enter>LiÒu th× ¨n Shit <pic=00>!!!<color><bclr>",
            "     <pic=36><bclr=blue><enter>Chóc c¸c nh©n sü gÆp nhiÒu may m¾n vµ ph¸t tµi...! <bclr>",            
    }
    local ran = random(1,getn(tab_Chat))
    NpcChat(nNpcIndex,tab_Chat[ran])
    local ranTimer = random(10,20)
    SetNpcTimer(nNpcIndex,ranTimer*18)
    SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\cobac\\baucua\\baucua.lua") 
else
    local tab_Chat2 = {
      "     <pic=35><color=green><enter>"..ThoiGianBatDauBauCuaText.."<color>",
        }
		local ran = random(1,getn(tab_Chat2))
		NpcChat(nNpcIndex,tab_Chat2[ran])
		local ranTimer = random(10,20)
		SetNpcTimer(nNpcIndex,ranTimer*18)
		DynamicExecute("\\script\\global\\pgaming\\cobac\\baucua\\baucua.lua", "FishGame:Stop")
    end
end

function Add_Npc_BauCua()
    local tb_npc_hotro = {
        {1571,3229},
    }
    local nMapIndex = SubWorldID2Idx(78)
    for i=1,getn(tb_npc_hotro) do
            local npcID    = (447)
            local npcName = "BÇu Cua §¹i Nh©n"
            local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hotro[i][1])*32,(tb_npc_hotro[i][2])*32,0,npcName,1)
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\cobac\\baucua\\baucua.lua")     
    end
end
