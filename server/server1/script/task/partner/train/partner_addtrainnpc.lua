-- script viet hoa By http://tranhba.com MAPID: 539 
jindienter_pos_file = "\\settings\\maps\\partner\\enter.txt"
jindiexit_trap_file = "\\settings\\maps\\partner\\exit.txt"
trainnpc_file = { 
	{	{1114		}, 40, "\\settings\\maps\\partner\\middle.txt"},
	{	{1112,	1113}, 50, "\\settings\\maps\\partner\\northeast_1.txt"},
	{	{1112,	1113}, 50, "\\settings\\maps\\partner\\northeast_2.txt"},
	{	{1112,	1113}, 50, "\\settings\\maps\\partner\\northwest_1.txt"},
	{	{1112,	1113}, 50, "\\settings\\maps\\partner\\northwest_2.txt"},
	{	{1112,	1113}, 50, "\\settings\\maps\\partner\\southeast_1.txt"},
	{	{1112,	1113}, 50, "\\settings\\maps\\partner\\southeast_2.txt"},
	{	{1112,	1113}, 50, "\\settings\\maps\\partner\\southwest_1.txt"},
	{	{1112,	1113}, 50, "\\settings\\maps\\partner\\southwest_2.txt"},
} 

tb_jitan_pos = { 
{1637,3277}, {1832,3345}, {1736,3462}, {1622,3658}, {1798,3636} 
} 

function partner_trainnpc() 
if (SubWorldID2Idx(539) >= 0) then 
-- script viet hoa By http://tranhba.com  thªm t¸i tu luyÖn b¶n ®å NPC b×nh th­êng tr¸ch —1112 , 1113 , b¶n ®å thªm t¸i lóc bèn phÝa 8 c¸i khu vùc xøc ®Ó 
-- script viet hoa By http://tranhba.com  b×nh th­êng tr¸ch —1114 , b¶n ®å thªm t¸i lóc trung gian khu vùc xøc ®Ó 
for i = 1, getn(trainnpc_file) do 
local filehigh = pt_GetTabFileHeight( trainnpc_file[i][3] ) - 1 
local tbpos = get_ncount_pos(trainnpc_file[i][3], trainnpc_file[i][2]) 
partner_addjindinpc( SubWorldID2Idx(539), trainnpc_file[i][1], 95, trainnpc_file[i][3], tbpos) 
end 

-- script viet hoa By http://tranhba.com  tr­êng ca cöa tÕ ®µn —1116 , thªm ®Õn täa ®é #1637,3277) , (1780,3354) , (1736,3462) , (1622,3658# , #1798,3636) 
for i = 1, getn(tb_jitan_pos) do 
local npcindex = AddNpc(1116, 95, SubWorldID2Idx(539), tb_jitan_pos[i][1] * 32, tb_jitan_pos[i][2] * 32) 
if (npcindex > 0) then 
				SetNpcScript(npcindex, "\\script\\task\\partner\\train\\partner_jitan"..i..".lua")
end 
end 

-- script viet hoa By http://tranhba.com  cöa ra trap 
for i = 1, pt_GetTabFileHeight(jindiexit_trap_file) - 1 do 
			local x = pt_GetTabFileData(jindiexit_trap_file, i + 1, 1);
			local y = pt_GetTabFileData(jindiexit_trap_file, i + 1, 2);
			AddMapTrap(539, x,y, "\\script\\task\\partner\\trap\\trap_jindichukou.lua");
end 
end 
end 

function get_ncount_pos(mapfile, count) 
local tbpos_t = {} 
local flag = 0 
local n = 0 
while(n < count) do 
flag = 0 
local dpos = random(pt_GetTabFileHeight(mapfile) - 1) 
if getn(tbpos_t) == 0 then 
tbpos_t[1] = dpos 
			n = n + 1
else 
for j = 1, getn(tbpos_t) do 
if (tbpos_t[j] == dpos) then 
flag = 1 
end 
end 
if (flag ~= 1) then 
				tbpos_t[getn(tbpos_t) + 1] = dpos
				n = n + 1
end 
end 
end 
return tbpos_t 
end 

function partner_addjindinpc( mapidx, tbnpcid, npclevel, mapfile, tbpos) 
for i = 1, getn(tbpos) do 
local npcid = tbnpcid[ random( getn(tbnpcid) ) ] 
		local posx = pt_GetTabFileData(mapfile, tbpos[i] + 1, 1)
		local posy = pt_GetTabFileData(mapfile, tbpos[i] + 1, 2)
AddNpc(npcid, npclevel, mapidx, posx, posy, 0) 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function pt_GetIniFileData(mapfile, sect, key) 
if (IniFile_Load(mapfile, mapfile) == 0) then 
print("Load IniFile Error!"..mapfile) 
return "" 
else 
return IniFile_GetData(mapfile, sect, key) 
end 
end 

function pt_GetTabFileHeight(mapfile) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFileError!"..mapfile); 
return 0 
end 
return TabFile_GetRowCount(mapfile) 
end; 

function pt_GetTabFileData(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end
