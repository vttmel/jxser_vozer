SPREADERNPC_ISADD = 1

npccauca = { 
	{181,80,4,1009,1238,3071,0,"CÇn Thñ L·o Nh©n",0,"\\script\\global\\pgaming\\cauca\\npc\\canthulaonhan.lua"}, 
	{203,80,4,1009,1251,3084,0,"HiÖu Thuèc",0,"\\script\\global\\pgaming\\cauca\\npc\\hieuthuoc.lua"}, 
	{625,80,4,1009,1572,2505,0,"R­¬ng chøa ®å",0,"\\script\\global\\pgaming\\cauca\\npc\\ruongchuado2.lua"}, 
	{235,80,4,1009,1213,3076,0,"Xa phu",0,"\\script\\global\\pgaming\\cauca\\npc\\xaphu.lua"}, 
	{181,80,4,1009,1563,2502,0,"CÇn Thñ L·o Nh©n",0,"\\script\\global\\pgaming\\cauca\\npc\\canthulaonhan.lua"}, 
	{203,80,4,1009,1577,2515,0,"HiÖu Thuèc",0,"\\script\\global\\pgaming\\cauca\\npc\\hieuthuoc.lua"}, 
	{625,80,4,1009,1246,3073,0,"R­¬ng chøa ®å",0,"\\script\\global\\pgaming\\cauca\\npc\\ruongchuado1.lua"},
	{235,80,4,1009,1549,2498,0,"Xa phu",0,"\\script\\global\\pgaming\\cauca\\npc\\xaphu.lua"}, 
}

function add_npccauca(tbnpc) 
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
