SPREADERNPC_ISADD = 1

spreadernpc = { 
	--{209,80,4,520,1556,3150,0,"T©y H¹ Th­¬ng Nh©n",0,"\\\script\\activitysys\\npcdailog.lua"}, 
	--{209,80,4,521,1556,3150,0,"T©y H¹ Th­¬ng Nh©n",0,"\\\script\\activitysys\\npcdailog.lua"}, 
	--{209,80,4,522,1556,3150,0,"T©y H¹ Th­¬ng Nh©n",0,"\\\script\\activitysys\\npcdailog.lua"}, 
	--{209,80,4,523,1556,3150,0,"T©y H¹ Th­¬ng Nh©n",0,"\\\script\\activitysys\\npcdailog.lua"}, 
	--{209,80,4,524,1556,3150,0,"T©y H¹ Th­¬ng Nh©n",0,"\\\script\\activitysys\\npcdailog.lua"}, 
	--{209,80,4,525,1556,3150,0,"T©y H¹ Th­¬ng Nh©n",0,"\\\script\\activitysys\\npcdailog.lua"}, 
	--{209,80,4,526,1556,3150,0,"T©y H¹ Th­¬ng Nh©n",0,"\\\script\\activitysys\\npcdailog.lua"}, 

	
	--{1849,80,4,20,3548,6221,0,"Hç Trî T©n Thñ",0,"\\script\\global\\npc\\hotrotanthu.lua"},
	--{1849,80,4,99,1620,3189,0,"Hç Trî T©n Thñ",0,"\\script\\global\\npc\\hotrotanthu.lua"},
	--{1849,80,4,100,1627,3189,0,"Hç Trî T©n Thñ",0,"\\script\\global\\npc\\hotrotanthu.lua"},
	--{1849,80,4,101,1694,3146,0,"Hç Trî T©n Thñ",0,"\\script\\global\\npc\\hotrotanthu.lua"},
	--{1849,80,4,121,1946,4505,0,"Hç Trî T©n Thñ",0,"\\script\\global\\npc\\hotrotanthu.lua"},
	--{1849,80,4,53,1600,3197,0,"Hç Trî T©n Thñ",0,"\\script\\global\\npc\\hotrotanthu.lua"},
	--{1849,80,4,153,1629,3242,0,"Hç Trî T©n Thñ",0,"\\script\\global\\npc\\hotrotanthu.lua"},
	--{1849,80,4,174,1592,3248,0,"Hç Trî T©n Thñ",0,"\\script\\global\\npc\\hotrotanthu.lua"},
	--{1849,80,4,174,1592,3248,0,"Hç Trî T©n Thñ",0,"\\script\\global\\npc\\hotrotanthu.lua"},


	--{229,80,4,78,1581,3204,0,"N©ng CÊp ThÇn M·",0,"\\script\\global\\pgaming\\nangcapngua\\npcnangcapngua.lua"},
}

function add_spreadernpc(tbnpc) 
	if (SPREADERNPC_ISADD) then 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
				if (Mid >= 0 ) then 
					TabValue5 = tbnpc[i][5] * 32; 
					TabValue6 = tbnpc[i][6] * 32; 
					local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
				end; 
		end; 
	end; 
end
