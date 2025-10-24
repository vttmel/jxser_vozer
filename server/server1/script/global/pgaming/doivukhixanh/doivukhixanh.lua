Include("\\script\\global\\pgaming\\doivukhixanh\\makeitemblue.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\task\\random\\task_head.lua");

function main()
dofile("script/global/pgaming/doivukhixanh/doivukhixanh.lua")
	local tbOpt = 
	{
		"<dec><npc>Ng­¬i muèn chÕ t¹o trang bÞ nµo ®©y?",
		"ChÕ t¹o trang bÞ xanh/ITEMBLUE_MakeItem",
		"ChÕ t¹o trang bÞ xanh 2/ITEMBLUE_MakeItemBlue",
		"Ta chØ ghÐ qua xem thö/cancel",
	}
	CreateTaskSay(tbOpt);
end

function cancel()
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnTimer(nNpcIndex,nTimeOut)
    local tab_Chat = {
            "     <pic=36><bclr=blue><enter>Muèn t×m hiÓu ®å xanh th× mau t×m ta...! <bclr>",            
    }
    local ran = random(1,getn(tab_Chat))
    NpcChat(nNpcIndex,tab_Chat[ran])
    local ranTimer = random(10,20)
    SetNpcTimer(nNpcIndex,ranTimer*18)
    SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\doivukhixanh\\doivukhixanh.lua") 
end

function Add_Npc_DoiVuKhiXanh()
    local tb_npc_hotro = {
        {1571,3247},
    }
    local nMapIndex = SubWorldID2Idx(78)
    for i=1,getn(tb_npc_hotro) do
            local npcID    = (198)
            local npcName = "§æi Vò KhÝ Xanh"
            local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hotro[i][1])*32,(tb_npc_hotro[i][2])*32,0,npcName,1)
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\doivukhixanh\\doivukhixanh.lua")     
    end
end
