-- Created by Danielsun 2006-12-07
-- Ê¥µ®ÀñºĞ
-- °´¼¸ÂÊ»ñµÃÊ¥µ®ÀñÎï²ÄÁÏ

TB_Giftbox = {
 --1.ÎïÆ·Ãû	    2.ÎïÆ·ID	3.µôÂä¼¸ÂÊ
	{"Hoa tuyÕt", 			1312,		20	},
	{"Cµ rèt",		1313,		15	},
	{"Cµnh th«ng",	1314,		15	},
	{"Nãn gi¸ng sinh",		1315,		15	},
	{"Kh¨n choµng (xanh)",	1316,		15	},
	{"Kh¨n choµng (®á)",	1317,		15		},
--	{"C©y th«ng ",		1318,		25		},
}

function main()
	
	local PItem = 0;
	local PGetItem = random();
	local PGetItem = PGetItem * 100;
	for ngift,mgift in TB_Giftbox do
		PItem = PItem + TB_Giftbox[ngift][3];
		if(PGetItem < PItem) then
			AddItem(6,1,TB_Giftbox[ngift][2],1,0,0,0);
			Msg2Player("B¹n nhÆt ®­îc nguyªn liÖu gi¸ng sinh:"..TB_Giftbox[ngift][1]);
			return
		end
	end
	return 1;
end
