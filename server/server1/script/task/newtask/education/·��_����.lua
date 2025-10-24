Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main(sel)
if NPCLongNgu ~= 1 then
	Talk(1,"","T›nh n®ng nµy hi÷n tπi Æang tπm Æ„ng!")
	return 1
end
 	Uworld1000_word()
 	return 0
end