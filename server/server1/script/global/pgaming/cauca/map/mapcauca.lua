Include("\\script\\lib\\getrectangle_point.lua") 

function add_trap_bianjingximen()
	local tbpoint =
	{
		tbtoppoint={1222,3029},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile = "\\script\\global\\pgaming\\cauca\\map\\cong1.lua"
	local tballpoint = getRectanglePoint(tbpoint)
	for nx,tbp in tballpoint do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile)
	end
	
	local tbpoint_2 =
	{
		tbtoppoint={1237,3015},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile_2 = "\\script\\global\\pgaming\\cauca\\map\\cong2.lua"
	local tballpoint_2 = getRectanglePoint(tbpoint_2)
	for nx,tbp in tballpoint_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile_2)
	end

	local tbpoint2 =
	{
		tbtoppoint={1234,3017},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile2 = "\\script\\global\\pgaming\\cauca\\map\\cong2.lua"
	local tballpoint2 = getRectanglePoint(tbpoint2)
	for nx,tbp in tballpoint2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile2)
	end
	
	local tbpoint2_2 =
	{
		tbtoppoint={1224,3028},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile2_2 = "\\script\\global\\pgaming\\cauca\\map\\cong1.lua"
	local tballpoint2_2 = getRectanglePoint(tbpoint2_2)
	for nx,tbp in tballpoint2_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile2_2)
	end
	
	local tbpoint3 =
	{
		tbtoppoint={1249,3014},
		nleftstep = 3,
		nrightstep = 6,
	}
	local nMapID = 1009
	local szScriptfile3 = "\\script\\global\\pgaming\\cauca\\map\\cong3.lua"
	local tballpoint3 = getRectanglePoint(tbpoint3)
	for nx,tbp in tballpoint3 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile3)
	end
	
	local tbpoint3_2 =
	{
		tbtoppoint={1246,3010},
		nleftstep = 3,
		nrightstep = 6,
	}
	local nMapID = 1009
	local szScriptfile3_2 = "\\script\\global\\pgaming\\cauca\\map\\cong3.lua"
	local tballpoint3_2 = getRectanglePoint(tbpoint3_2)
	for nx,tbp in tballpoint3_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile3_2)
	end
	
	local tbpoint4 =
	{
		tbtoppoint={1302,3106},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile4 = "\\script\\global\\pgaming\\cauca\\map\\cong4.lua"
	local tballpoint4 = getRectanglePoint(tbpoint4)
	for nx,tbp in tballpoint4 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile4)
	end
	
	local tbpoint4_2 =
	{
		tbtoppoint={1304,3105},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile4_2 = "\\script\\global\\pgaming\\cauca\\map\\cong4.lua"
	local tballpoint4_2 = getRectanglePoint(tbpoint4_2)
	for nx,tbp in tballpoint4_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile4_2)
	end
	
	local tbpoint4_3 =
	{
		tbtoppoint={1304,3104},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile4_3 = "\\script\\global\\pgaming\\cauca\\map\\cong4.lua"
	local tballpoint4_3 = getRectanglePoint(tbpoint4_3)
	for nx,tbp in tballpoint4_3 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile4_3)
	end
	
	local tbpoint5 =
	{
		tbtoppoint={1299,3145},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile5 = "\\script\\global\\pgaming\\cauca\\map\\cong5.lua"
	local tballpoint5 = getRectanglePoint(tbpoint5)
	for nx,tbp in tballpoint5 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile5)
	end
	
	local tbpoint5_2 =
	{
		tbtoppoint={1301,3144},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile5_2 = "\\script\\global\\pgaming\\cauca\\map\\cong5.lua"
	local tballpoint5_2 = getRectanglePoint(tbpoint5_2)
	for nx,tbp in tballpoint5_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile5_2)
	end
	
	local tbpoint6 =
	{
		tbtoppoint={1287,3159},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile6 = "\\script\\global\\pgaming\\cauca\\map\\cong6.lua"
	local tballpoint6 = getRectanglePoint(tbpoint6)
	for nx,tbp in tballpoint6 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile6)
	end
	
	local tbpoint6_2 =
	{
		tbtoppoint={1289,3157},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile6_2 = "\\script\\global\\pgaming\\cauca\\map\\cong6.lua"
	local tballpoint6_2 = getRectanglePoint(tbpoint6_2)
	for nx,tbp in tballpoint6_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile6_2)
	end
	
	local tbpoint7 =
	{
		tbtoppoint={1555,2568},
		nleftstep = 3,
		nrightstep = 6,
	}
	local nMapID = 1009
	local szScriptfile7 = "\\script\\global\\pgaming\\cauca\\map\\cong7.lua"
	local tballpoint7 = getRectanglePoint(tbpoint7)
	for nx,tbp in tballpoint7 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile7)
	end
	
	local tbpoint7_2 =
	{
		tbtoppoint={1553,2565},
		nleftstep = 3,
		nrightstep = 6,
	}
	local nMapID = 1009
	local szScriptfile7_2 = "\\script\\global\\pgaming\\cauca\\map\\cong7.lua"
	local tballpoint7_2 = getRectanglePoint(tbpoint7_2)
	for nx,tbp in tballpoint7_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile7_2)
	end	
	
	local tbpoint8 =
	{
		tbtoppoint={1544,2557},
		nleftstep = 3,
		nrightstep = 6,
	}
	local nMapID = 1009
	local szScriptfile8 = "\\script\\global\\pgaming\\cauca\\map\\cong8.lua"
	local tballpoint8 = getRectanglePoint(tbpoint8)
	for nx,tbp in tballpoint8 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile8)
	end
	
	local tbpoint8_2 =
	{
		tbtoppoint={1542,2554},
		nleftstep = 3,
		nrightstep = 6,
	}
	local nMapID = 1009
	local szScriptfile8_2 = "\\script\\global\\pgaming\\cauca\\map\\cong8.lua"
	local tballpoint8_2 = getRectanglePoint(tbpoint8_2)
	for nx,tbp in tballpoint8_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile8_2)
	end
	
	local tbpoint9 =
	{
		tbtoppoint={1485,2398},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile9 = "\\script\\global\\pgaming\\cauca\\map\\cong9.lua"
	local tballpoint9 = getRectanglePoint(tbpoint9)
	for nx,tbp in tballpoint9 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile9)
	end
	
	local tbpoint9_2 =
	{
		tbtoppoint={1487,2397},
		nleftstep = 6,
		nrightstep = 3,
	}
	local nMapID = 1009
	local szScriptfile9_2 = "\\script\\global\\pgaming\\cauca\\map\\cong9.lua"
	local tballpoint9_2 = getRectanglePoint(tbpoint9_2)
	for nx,tbp in tballpoint9_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile9_2)
	end
	
	local tbpoint10 =
	{
		tbtoppoint={1481,2384},
		nleftstep = 3,
		nrightstep = 6,
	}
	local nMapID = 1009
	local szScriptfile10 = "\\script\\global\\pgaming\\cauca\\map\\cong10.lua"
	local tballpoint10 = getRectanglePoint(tbpoint10)
	for nx,tbp in tballpoint10 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile10)
	end
	
	local tbpoint10_1 =
	{
		tbtoppoint={1479,2383},
		nleftstep = 3,
		nrightstep = 6,
	}
	local nMapID = 1009
	local szScriptfile10_1 = "\\script\\global\\pgaming\\cauca\\map\\cong10.lua"
	local tballpoint10_1 = getRectanglePoint(tbpoint10_1)
	for nx,tbp in tballpoint10_1 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile10_1)
	end
	
	local tbpoint10_2 =
	{
		tbtoppoint={1478,2382},
		nleftstep = 3,
		nrightstep = 6,
	}
	local nMapID = 1009
	local szScriptfile10_2 = "\\script\\global\\pgaming\\cauca\\map\\cong10.lua"
	local tballpoint10_2 = getRectanglePoint(tbpoint10_2)
	for nx,tbp in tballpoint10_2 do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile10_2)
	end
	
SetProtectTime(18*3)
AddSkillState(963, 1, 0, 18*3) 
end