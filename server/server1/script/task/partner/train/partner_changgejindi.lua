Include("\\script\\task\\partner\\train\\partner_addtrainnpc.lua")

function Goto_jindichangge() 
Describe(DescLink_ChangGeMen.."# ë tr­êng ca cöa cÊm ®Þa trung , nhµ ch¬i cïng ®ång b¹n luyÖn cÊp cã thÓ ®¹t ®­îc kh¸ nhiÒu ®Ých kinh nghiÖm , ®ång thêi cßn sÏ r¬i xuèng ®ång b¹n bÝ tÞch . mçi giê c¶ ®iÓm , cÊm ®Þa ®Ých tÕ ®µn ngò hµnh linh lùc sÏ thøc tØnh , mang theo ®ång b¹n tíi tÕ b¸i , sÏ cã ý kh«ng nghÜ tíi chuyÖn ph¸t sinh . ng­¬i b©y giê muèn ®i tr­íc sao ? ", 2, 
"V©ng, ta muèn ®i /sure_gotojindi", 
" ®îi l¸t n÷a råi h·y nãi /OnCancel") 
end 

function OnCancel() 
end 

function sure_gotojindi() 
local filehigh = pt_GetTabFileHeight( jindienter_pos_file ) - 1 
local row = random(filehigh) 
	local posx = pt_GetTabFileData(jindienter_pos_file, row + 1, 1)
	local posy = pt_GetTabFileData(jindienter_pos_file, row + 1, 2)

if (posx > 0 and posy > 0) then 
NewWorld(539, posx, posy) 
SetFightState(1) 
else 
print("jindienter_pos_file error row = "..row) 
end 
end