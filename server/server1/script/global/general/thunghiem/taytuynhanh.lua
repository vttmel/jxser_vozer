
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function TayTuyNhanh()
	local tbSay = {"Ng­¬i muèn tÈy tñy lo¹i g× ®©y?"}
		tinsert(tbSay, "T¨ng ®iÓm nhanh/tangdiemnhanh")
		tinsert(tbSay, "TÈy ®iÓm kü n¨ng/taydiemkynang")
		tinsert(tbSay, "TÈy ®iÓm tiÒm n¨ng/taydiemtiemnang")
		tinsert(tbSay, "KÕt thóc ®èi tho¹i./OnCancel")
	CreateTaskSay(tbSay)
end

function taydiemkynang()
	Say("Ng­¬i ®ång ý TÈy ®iÓm kü n¨ng kh«ng?", 2, "TÈy ®iÓm kü n¨ng /taydiemkynangok","Kh«ng tÈy /OnCancel")
end

function taydiemkynangok()
	i = HaveMagic(210)
	j = HaveMagic(400)
	n = RollbackSkill()
	x = 0
	if (i ~= -1) then x = x + i end
	if (j ~= -1) then x = x + j end
	rollback_point = n - x
	if (rollback_point + GetMagicPoint() < 0) then
		rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210,i) end
	if (j ~= -1) then AddMagic(400,j) end
	Msg2Player("TÈy Tñy thµnh c«ng! ng­¬i ®· cã thÓ ph©n phèi "..rollback_point.." ®iÓm. ")
	Talk(1,"KickOutSelf","TÈy Tñy thµnh c«ng! ng­¬i ®· cã thÓ ph©n phèi "..rollback_point.." ®iÓm.")
end

function taydiemtiemnang()
	Say("Ng­¬i ®ång ý tÈy ®iÓm tiÒm n¨ng kh«ng?", 2, "TÈy ®iÓm tiÒm n¨ng/taydiemtiemnangok", "Kh«ng tÈy /OnCancel")
end

function taydiemtiemnangok()
	base_str = {35,20,25,30,20}
	base_dex = {25,35,25,20,15}
	base_vit = {25,20,25,30,25}
	base_eng = {15,25,25,20,40}
	player_series = GetSeries() + 1
	Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
end

function tangdiemnhanh()
	Say("ThÝch Minh: Ng­¬i muèn t¨ng ®iÓm kü n¨ng nµo?", 4,
		"T¨ng Søc M¹nh/add_prop_str",
		"T¨ng Th©n Ph¸p/add_prop_dex",
		"T¨ng Ngo¹i C«ng/add_prop_vit",
		"T¨ng Néi C«ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "Xin h·y nhËp ®iÓm sè søc m¹nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "Xin h·y nhËp ®iÓm sè th©n ph¸p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "Xin h·y nhËp ®iÓm sè ngo¹i c«ng:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "Xin h·y nhËp ®iÓm sè néi c«ng: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end
function OnCancel()
end;


-- pEventType:Reg("TÝnh n¨ng thö nghiÖm", "TÈy tñy ®iÓm", TayTuyNhanh);