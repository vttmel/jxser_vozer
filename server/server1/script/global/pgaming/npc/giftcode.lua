IncludeLib("SETTING");
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\player.lua")
IL("TITLE");
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\lib\\common.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

----------------------M· Gift Code-------------------------------------------------
ListGift =
{
	[1]={'WmGKWpTNgjPS74E',1},
	[2]={'oTeFTeDfuCTKJ27',1},	
}
----------------------------------------------------------------------------------

function main() 
dofile("script/global/pgaming/npc/giftcode.lua")
local nRuong = CalcFreeItemCellCount() 
if nRuong < 20 then
		Talk(1,"","CÇn trèng 20 « r­¬ng chøa ®å")
		return 1
end 
	local tbOpt = {
		{"NhËp Gift Code",CodeStrings},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Inbox FanePage:<color> <enter>      <bclr=red>"..FanePage.."<bclr> <enter>           <color=green>§Ó nhËn GiftCode!!!<color>", tbOpt)
end

--------------------------------Th­ viÖn--------------------------------
function server_setdata(filename,szsect,szkey,szvalue)
	IniFile_SetData(filename, szsect, szkey, szvalue)	
end

function server_getdata(filename,szsect,szkey)
	return IniFile_GetData(filename, szsect, szkey)
end

function server_savedata(filename)
	IniFile_Save(filename,filename)
end

function server_loadfile(filename)
	if (IniFile_Load(filename,filename) == 0) then 
			File_Create(filename)
			IniFile_Load(filename, filename)
	end
end

tbKandy = {}
tbKandy.szFile = "\\dulieu\\bandbygm.dat"
server_loadfile(tbKandy.szFile)
--------------------PhÈn Th­ëng---------------------------------------------------
function CodeStrings()
	AskClientForString("CODECHECK","",1,999999999,"M· GIFT")
end;
function CODECHECK(nVar)
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if GetTask(5742) == 1 then
	Talk(1,"","B¹n chØ nhËn code 1 lÇn th«i")
	return 1
	end
	if IsClone ~= "" then 
		return Say("M· gift nµy ®· ®­îc sö dông!!")
	end
		for k=1,getn(ListGift) do
			if nVar == ListGift[k][1] then
				local nCurLevel = GetLevel()
				local nAddLevel = 125 - nCurLevel
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");
				server_savedata(tbKandy.szFile);
				Msg2Player("NhËn th­ëng GIFTCODE thµnh c«ng!")
------------------------------------------------------------PhÇn Th­ëng----------------------------------------------------------------------------------------------
					tbAwardTemplet:GiveAwardByList({tbProp = {0,10,7,10,0,0}, nCount = 1, nBindState = -2,nExpiredTime = 4320}, "test", 1);
					tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4904,1,0,0}, nCount = 1, nBindState = -2,nExpiredTime = 4320}, "test", 1);
-----------------------------------------------------------------------------------------------------------------------------------------
					SetTask(5742,1)				
			return
			else 
				nillVar = 0
			end
		end
		
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
	end;
end;

function OnTimer(nNpcIndex,nTimeOut)
    local tab_Chat = {
        "<bclr=blue><enter>NhËp Gift Code t¹i ®©y ®Ó nhËn phÇn th­ëng v« cïng hÊp dÉn <pic=82>!!!<color><bclr>",      
    }
    local ran = random(1,getn(tab_Chat))
    NpcChat(nNpcIndex,tab_Chat[ran])
    local ranTimer = random(10,20)
    SetNpcTimer(nNpcIndex,ranTimer*18)
    SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\npc\\giftcode.lua") 
end

function Add_Npc_GiftCode()
    local tb_npc_hotro = {
        {SubWorldID2Idx(53),1620,3183},
	 {SubWorldID2Idx(20),3544,6202},
	 {SubWorldID2Idx(99),1624,3207},
	 {SubWorldID2Idx(100),1615,3178},
	 {SubWorldID2Idx(101),1684,3149},
	 {SubWorldID2Idx(121),1951,4507},
	 {SubWorldID2Idx(153),1644,3221},
	 {SubWorldID2Idx(174),1614,3207},
    } 
    local nMapIndex = SubWorldID2Idx(53)
    for i=1,getn(tb_npc_hotro) do
            local npcID    = (1236)
            local npcName = "Gift Code"
            local npcdialog = AddNpc(npcID,0,(tb_npc_hotro[i][1]),(tb_npc_hotro[i][2])*32,(tb_npc_hotro[i][3])*32,0,npcName,1)	
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\npc\\giftcode.lua")    
    end
end