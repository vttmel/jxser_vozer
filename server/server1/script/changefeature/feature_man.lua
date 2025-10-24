Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\changefeature\\equip_tryon.lua")
Include("\\script\\vng_lib\\extpoint.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
tbFeatureNpc = {}

function tbFeatureNpc:SelectType()
	local szTitle = "Xin h·y chän vÞ trÝ"
	
	
	local tbOpt = {}
	
	for key , value in tbEquipTryOn.tbTemplate do
		tinsert(tbOpt, {key, value.DailogMenu, {value, 1}})
	end
	
	tinsert(tbOpt, {"Trë l¹i", self.Dialog, {self}})
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i"})
	
	CreateNewSayEx(szTitle, tbOpt)
end
	
function tbFeatureNpc:Dialog()
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Trªn ng­êi c¸c h¹ kh«ng cã TiÒn §ång, ch¾c c¸c h¹ ®ang trªu chäc ta ph¶i kh«ng?")
	return 1
	end
	local szTitle = "Ngµi cã muèn thay ®æi ngo¹i trang kh«ng?"
	local tbOpt = 
	{
		{"Xem vµ thay ®æi ngo¹i h×nh trang bÞ", self.SelectType, {self}},
		--{"Thay ®æi ngo¹i h×nh trang bÞ ­ng ý nhÊt cho trang bÞ", self.InjectToItem, {self}},
		{"Trë vÒ ngo¹i h×nh ban ®Çu", self.RestoreItem, {self}},
		{"Xãa hiÖu øng hiÖn t¹i", RestoreOwnFeature},
		--{"Lµm thÕ nµo ®Ó thay ®æi ngo¹i h×nh trang bÞ",  self.Explain, {self}},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function tbFeatureNpc:Dialog2()
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Trªn ng­êi c¸c h¹ kh«ng cã TiÒn §ång, ch¾c c¸c h¹ ®ang trªu chäc ta ph¶i kh«ng?")
	return 1
	end
	local szTitle = "Ngµi cã muèn thay ®æi ngo¹i trang kh«ng?"
	local tbOpt = 
	{
		{"Xem vµ thay ®æi ngo¹i h×nh trang bÞ", self.SelectType, {self}},
		--{"Thay ®æi ngo¹i h×nh trang bÞ ­ng ý nhÊt cho trang bÞ", self.InjectToItem, {self}},
		{"Trë vÒ ngo¹i h×nh ban ®Çu", self.RestoreItem, {self}},
		{"Xãa hiÖu øng hiÖn t¹i", RestoreOwnFeature},
		--{"Lµm thÕ nµo ®Ó thay ®æi ngo¹i h×nh trang bÞ",  self.Explain, {self}},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)

end

function tbFeatureNpc:Explain()
	local szTitle = "Bæn tiÖm cã thÓ t¹o ra 'ngo¹i h×nh trang bÞ' theo nh­ ý muèn, thu thËp ®ñ nguyªn liÖu cÇn thiÕt nh­ tinh luyÖn th¹ch vµ trang bÞ cÇn thay ®æi ®em ®Õn cho l·o phu th× ta sÏ gióp ng­¬i thay ®æi ngo¹i h×nh trang bÞ nh­ ý muèn. Nªn nhí ta chØ gióp ng­¬i thay ®æi ngo¹i h×nh trang bÞ mµ kh«ng thay ®æi ®é m¹nh yÕu cña trang bÞ ®©u nhÐ."
	local tbOpt = 
	{
		{"Trë l¹i", self.Dialog, {self}},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function tbFeatureNpc:InjectToItem()
	local szTitle = "Xin h·y chän vÞ trÝ"
	
	
	local tbOpt = {}
	
	for key , value in tbEquipTryOn.tbTemplate do
		tinsert(tbOpt, {key, value.AskFeatureNo, {value}})
	end
	
	tinsert(tbOpt, {"Trë l¹i", self.Dialog, {self}})
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i"})
	
	CreateNewSayEx(szTitle, tbOpt)
end

function tbFeatureNpc:RestoreItem()
	local szTitle = "Xin h·y chän vÞ trÝ cña trang bÞ hiÖn t¹i"
	
	
	local tbOpt = {}
	
	for key , value in tbEquipTryOn.tbTemplate do
		tinsert(tbOpt, {key, value.GiveEquip2, {value}})
	end
	
	tinsert(tbOpt, {"Trë l¹i", self.Dialog, {self}})
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i"})
	
	CreateNewSayEx(szTitle, tbOpt)
end

function main()
	dofile("script/global/pgaming/item/lunglinhhap.lua")
if GetSex() == 1 then
	 tbFeatureNpc:Dialog2()
	 else
	 tbFeatureNpc:Dialog()	 
end
return 1
end
------------------------------
function xemtruocngoaitrangnu()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"Nãn", nonnu},	
		{"¸o", aonu},
		--{"Vò KhÝ", vukhi},	
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nonnu()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"1. ThÝch Ni M·o", thichnico},
		{"2. Thiªn Thanh M·o", thienthanhmao},
		{"3. XÝch ¶nh ph¸t Qu¸n", xichphatquan},
		{"4. B×Trô", botro},
		{"5. Thó Cèt Tr©m", thucottram},
		{"Trang KÕ", trangkenonnu2},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thichnico()
local szTitle =  NONNU_001.."Lo¹i mò c¸c ni c« th­êng ®éi.."
		local tbOpt =
	{
		{"Trë vÒ",nonnu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thienthanhmao()
local szTitle =  NONNU_002.."Lo¹i mò mµu xanh cña PhËt gia, thanh tho¸t cao quý."
		local tbOpt =
	{
		{"Trë vÒ",nonnu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function xichphatquan()
local szTitle =  NONNU_003.."Lo¹i mò cao cÊp cña PhËt gia, dïng trong nh÷ng lóc nghiªm trang."
		local tbOpt =
	{
		{"Trë vÒ",nonnu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function botro()
local szTitle =  NONNU_004.."Lo¹i mò b¶o hé ®­îc tinh chÕ tõ nh÷ng lo¹i da thó, ca kh¶ n¨ng tÊn c«ng vµ phßng ngù rÊt tèt."
		local tbOpt =
	{
		{"Trë vÒ",nonnu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thucottram()
local szTitle =  NONNU_005.."Lo¹i Tr©m lµm b»ng x­¬ng thó."
		local tbOpt =
	{
		{"Trë vÒ",nonnu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenonnu2()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"6. HuyÒn Tª DiÖn Tr¸o", huyentedienmao},
		{"7. Th« ThiÕt §Çu Hoµn", thietthietdauhoan},
		{"8. Kª VÜ Thoa", kevuthoa},
		{"9. Long HuyÕt §Çu hoµn", longhuyetdauhoan},
		{"10. Viªn M·o", vienmao},
		{"Trang Truíc", nonnu},
		{"Trang KÕ", trangkenonnu3},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function huyentedienmao()
local szTitle =  NONNU_006.."Lo¹i mò phßng hé th­îng ®¼ng b»ng da tª gi¸c, cùc kú quý hiOm."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thietthietdauhoan()
local szTitle =  NONNU_007.."Lo¹i mò b¶o hé tinh chÕ tõ thÐp, kh¶ n¨ng phßng ngù rÊt cao."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kevuthoa()
local szTitle =  NONNU_008.."Lo¹i thoa ®­îc lµm to ®u«i chim, rÊt n÷ tÝnh."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function longhuyetdauhoan()
local szTitle =  NONNU_009.."Lo¹i mò b¶o hé tinh chÕ tõ vµng cùc kú quu hiÕm."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function vienmao()
local szTitle =  NONNU_010.."Mét lo¹i mò th«ng th­êng."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenonnu3()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"11. Song Phông TriÒu Thiªn Qu¸n", phongtrieuthienquan},
		{"12. Long L©n Kh«i", longlankhoi},
		{"13. Bè M·o", bomao},
		{"14. L­u Ly Thoa", luulythoa},
		{"15. Thanh Tinh Thoa", thanhtinhthoa},
		{"Trang Truíc", trangkenonnu2},
		{"Trang KÕ", trangkenonnu4},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end


function phongtrieuthienquan()
local szTitle =  NONNU_011.."Lo¹i mò b¶o hé tinh chÕ tõ vµng, trïm kUn c¶ ®Çu."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function longlankhoi()
local szTitle =  NONNU_012.."Kh«i ph¸t ra hµo quang nh­ rång l©n uèn l­în, Võa nh×n ®· biÕt ngay lµ mét phÈm vËt cùc kú quu hiÕm."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function bomao()
local szTitle =  NONNU_013.."Lo¹i mò th«ng th­êng."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function luulythoa()
local szTitle =  NONNU_014.."Thoa lµm to ngäc L­u Ly, cùc kú quu hiÕm."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thanhtinhthoa()
local szTitle =  NONNU_015.."Thoa ca kh¶m thñy tinh xanh, ¸nh s¸ng huyÒn ¶o, cùc kú quu hiÕm"
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenonnu4()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"16. Hoµng Bè Ph¸t §¸i", hoangbophatdai},
		{"17. Thanh L­u Ly Ph¸t Xoa", thanhluulyphatxoa},
		{"18. Kim Phông TriÓn SÝ", kimphongtriensy},
		{"Trang Truíc", trangkenonnu3},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function hoangbophatdai()
local szTitle =  NONNU_016.."Mét lo¹i ®ai th¾t th«ng th­êng."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu4},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thanhluulyphatxoa()
local szTitle =  NONNU_017.."Lo¹i tr©m cµi b»ng L­u Ly pha lÉn nhiÒu lo¹i b¶o th¹ch."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu4},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kimphongtriensy()
local szTitle =  NONNU_018.."Lo¹i kh«i gi¸p ca h×nh d¸ng nh­ ®Çu chim phông, chØ dµnh cho t­íng lÜnh."
		local tbOpt =
	{
		{"Trë vÒ",trangkenonnu4},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function aonu()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"1. Sa Ni phôc", saniphuc},
		{"2. NguyÖn B¹ch cµ sa", nguyenbachcasanu},
		{"3. ThÊt B¶o cµ sa", thatbaocasanu},
		{"4. Linh Xµ y", linhxay},
		{"5. Hæ B× y", hobiy},
		{"Trang KÕ", trangkeaonu2},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function saniphuc()
local szTitle =  AONU_001.."T¨ng y dµnh cho c¸c tiÓu Sa Di voa nhËp m«n"
		local tbOpt =
	{
		{"Trë vÒ",aonu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nguyenbachcasanu()
local szTitle =  AONU_002.."Cßn gäi lµ ThÊt §iÓu y, y phôc cña c¸c t¨ng nh©n chøc vÞ cao"
		local tbOpt =
	{
		{"Trë vÒ",aonu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thatbaocasanu()
local szTitle =  AONU_003.."Lµ PhËt m«n chi b¶o, do PhËt Tæ tÆng cho §­êng Tam T¹ng khi ®i thØnh kinh"
		local tbOpt =
	{
		{"Trë vÒ",aonu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function linhxay()
local szTitle =  AONU_004.."Gièng nh­ kho¸t trªn ng­êi mét tÊm da r¾n, cö ®éng cùc kú linh ho¹t"
		local tbOpt =
	{
		{"Trë vÒ",aonu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function hobiy()
local szTitle =  AONU_005.."May b»ng da hæ, mÆc vµo khÝ lùc t¨ng lªn, cùc kú hiÕm thÊy."
		local tbOpt =
	{
		{"Trë vÒ",aonu},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkeaonu2()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"6. Cöu VÜ B¹ch Hå trang", bachhotrang},
		{"7. CÈm Sam", camsam},
		{"8. Thanh La sam", thanhlasam},
		{"9. TrÇm H­¬ng sam", tramhuongsam},
		{"10. Kh¶m ThiÕt n÷ gi¸p", kiemthietnugiap},
		{"Trang Tr­íc", aonu},
		{"Trang KÕ", trangkeaonu3},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function bachhotrang()
local szTitle =  AONU_006.."§­îc may to ®u«i cña 9 con Hå Ly tinh, mÆc vµo n¨ng lùc v« song"
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function camsam()
local szTitle =  AONU_007.."Y phôc ®­îc chÕ tõ nh÷ng lo¹i v¶i th«ng th­êng."
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thanhlasam()
local szTitle =  AONU_008.."Bªn ngoµi lµ ¸o nh­ng bªn trong lµ gi¸p, kh¶ n¨ng phßng ngù rÊt tèt"
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tramhuongsam()
local szTitle =  AONU_009.."Trong ¸o lu«n ph¶ng phÊt mïi trÇm h­¬ng, nh­ tiªn n÷ gi¸ng trÇn."
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kiemthietnugiap()
local szTitle =  AONU_010.."¸o gi¸p th«ng th­êng cña n÷ giíi."
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkeaonu3()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"11. XÝch Nh¹n gi¸p", xichnhangiap},
		{"12. TÝch LÞch Kim Phông gi¸p", tichlichkimphonggiap},
		{"13. Ph¸ Ma y", phapmay},
		{"14. B¹ch §iÖp quÇn", dichdichquan},
		{"15. NguyÖt Hoa quÇn", nguyethoaquan},
		{"16. L­u Tiªn QuÇn", luutienquan},
		{"Trang Tr­íc", trangkeaonu2},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function xichnhangiap()
local szTitle =  AONU_011.."¸o gi¸p ®­îc kÕt b»ng l«ng Nh¹n ®á, n÷ tÝnh th­êng hay dïng."
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tichlichkimphonggiap()
local szTitle =  AONU_012.."Hé gi¸p cña Môc QuÕ Anh, theo truy?n thuyOt lµ do Th¸nh MÉu ban tÆng."
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function phapmay()
local szTitle =  AONU_013.."Lµ lo¹i ¸o ®­îc lµm to vá c©y Ma thô."
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function dichdichquan()
local szTitle =  AONU_014.."Lµ lo¹i th­êng phôc cña n÷ giíi."
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nguyethoaquan()
local szTitle =  AONU_015.."Lo¹i quÇn ph¸t ra ¸nh s¸ng kú ¶o nh­ ¸nh s¸ng tr¨ng."
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function luutienquan()
local szTitle =  AONU_016.."TruyÒn thuyÕt nãi r»ng ®©y lµ do TriÖu Phi YOn thêi H¸n tù tay lµm ra, mÆc vµo nh­ ®ang du tiªn."
		local tbOpt =
	{
		{"Trë vÒ",trangkeaonu3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

----------------------------


function xemtruocngoaitrangnam()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"Nãn", nonnam},	
		{"¸o", aonam},
		--{"Vò KhÝ", vukhi},	
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function vukhi()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"1. KiÕm", kiem1},
		{"2. Trïy", truy1},
		{"3. §ao", dao1},
		{"4. Th­¬ng", thuong1},
		{"5. Bçng", kiem2},
		{"6. Vò KhÝ §­êng M«n", duongmon2},
		{"Trang KÕ", trangkevukhi},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kiem1()
local szTitle =  VUKHI_001.."§ai cña c¸c tiÓu Sa Di th­êng ®eo."
		local tbOpt =
	{
		{"Trë vÒ",vukhi},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function truy1()
local szTitle =  VUKHI_002.."§ai cña c¸c tiÓu Sa Di th­êng ®eo."
		local tbOpt =
	{
		{"Trë vÒ",vukhi},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function dao1()
local szTitle =  VUKHI_003.."§ai cña c¸c tiÓu Sa Di th­êng ®eo."
		local tbOpt =
	{
		{"Trë vÒ",vukhi},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thuong1()
local szTitle =  VUKHI_004.."§ai cña c¸c tiÓu Sa Di th­êng ®eo."
		local tbOpt =
	{
		{"Trë vÒ",vukhi},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kiem2()
local szTitle =  VUKHI_005.."§ai cña c¸c tiÓu Sa Di th­êng ®eo."
		local tbOpt =
	{
		{"Trë vÒ",vukhi},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function duongmon2()
local szTitle =  VUKHI_006.."§ai cña c¸c tiÓu Sa Di th­êng ®eo."
		local tbOpt =
	{
		{"Trë vÒ",vukhi},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

----------------------------------------------------
function nonnam()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"1. Sa Di Giíi C«", sadigioico},
		{"2. Phï Dung M·o", phudungmao},
		{"3. Tú L« m·o", tulaomao},
		{"4. Tróc L¹p", triclap},
		{"5. Nh©n B× DiÖn Tr¸o", nhanbidientrao},
		{"Trang KÕ", trangkenon},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function sadigioico()
local szTitle =  NONNAM_001.."§ai cña c¸c tiÓu Sa Di th­êng ®eo."
		local tbOpt =
	{
		{"Trë vÒ",nonnam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function phudungmao()
local szTitle =  NONNAM_002.."C¸c T¨ng L÷ trung ®¼ng th­êng ®eo, lµm b»ng thø lôa th­îng ®¼ng."
		local tbOpt =
	{
		{"Trë vÒ",nonnam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tulaomao()
local szTitle =  NONNAM_003.."C¸c T¨ng L÷ th­îng ®¼ng th­êng ®eo, trªn ca Ên PhËt, §­êng T¨ng th­êng ®eo na"
		local tbOpt =
	{
		{"Trë vÒ",nonnam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function triclap()
local szTitle =  NONNAM_004.."Lo¹i mò th­êng thÊy ë vïng Giang Nam."
		local tbOpt =
	{
		{"Trë vÒ",nonnam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nhanbidientrao()
local szTitle =  NONNAM_005.."Nghe nai sau khi giÕt ng­êi th× lét da lµm ¸o, o¸n khÝ cuån cuén."
		local tbOpt =
	{
		{"Trë vÒ",nonnam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenon()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"6. Tu La Ph¸t kÕt", tulaphatket},
		{"7. Phi YÕn Qu¸n", phiyenquan},
		{"8. Anh L¹c Qu¸n", anhlucquan},
		{"9. Th«ng Thiªn Ph¸t Qu¸n", thongthienphatquan},
		{"10. ThiÕt Kh«i", thietkhoi},
		{"Trang Tr­íc", nonnam},
		{"Trang KÕ", trangkenon2},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tulaphatket()
local szTitle =  NONNAM_006.."Lµ mét di vËt trªn thÕ gian, s¸t khÝ táa ra ngïn ngôt."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function phiyenquan()
local szTitle =  NONNAM_007.."Lo¹i mò rÊt ®Ñp, danh sÜ ­a dïng."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function anhlucquan()
local szTitle =  NONNAM_008.."Lo¹i mò rÊt ®Ñp, ®­îc kh¶m b»ng cá Anh L¹c, c¸c v¨n nh©n Nho sÜ th­êng thÝch ®éi"
		local tbOpt =
	{
		{"Trë vÒ",trangkenon},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thongthienphatquan()
local szTitle =  NONNAM_009.."Lµ lo¹i mò cao quý, chØ ca Hoµng Th­îng míi ®­îc ®éi"
		local tbOpt =
	{
		{"Trë vÒ",trangkenon},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thietkhoi()
local szTitle =  NONNAM_010.."Lo¹i kh«i lµm b»ng tinh thÐp th­îng ®¼ng."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenon2()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"11. Ng©n Kh«i", ngankhoi},
		{"12. YÓm NhËt kh«i", yemnhatkhoi},
		{"13. Ph¸ Bè C©n", phabocan},
		{"14. Song TÇng L­u Ly Hoµn", songtangluulyhoan},
		{"15. TrÝch Tinh hoµn", trichtinhhoan},
		{"Trang Tr­íc", trangkenon},
		{"Trang KÕ", trangkenon3},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function ngankhoi()
local szTitle =  NONNAM_011.."Lo¹i kh«i b»ng b¹c nguyªn chÊt."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function yemnhatkhoi()
local szTitle =  NONNAM_012.."Lo¹i kh«i gi¸p b»ng vµng, kh¶ n¨ng phßng ngù rÊt cao."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function phabocan()
local szTitle =  NONNAM_013.."Lo¹i kh¨n nh÷ng ng­êi an mµy th­êng quÊn trªn ®Çu, rÊt r¸ch n¸t."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function songtangluulyhoan()
local szTitle =  NONNAM_014.."Lo¹i vßng ®eo ca kh¶m nhiÒu ngäc L­u Ly, ca hai líp."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trichtinhhoan()
local szTitle =  NONNAM_015.."Lo¹i vßng ®eo ca kh¶m nhiÒu ngäc L­u Ly, b¶o vËt cña C¸i Bang."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenon3()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"16. Bè C©n", bocan},
		{"17. Chu Khëi Qu¸n", chukhoiquan},
		{"18. ¤ Tµm M·o", otammao},
		{"Trang Tr­íc", trangkenon2},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function bocan()
local szTitle =  NONNAM_016.."Lo¹i kh¨n th­êng ®éi cña nh÷ng ng­êi b×nh d©n."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function chukhoiquan()
local szTitle =  NONNAM_017.."Lo¹i m? dÖt b»ng t¬ th­îng phÈm, kiÓu d¸ng rÊt ®Ñp."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function otammao()
local szTitle =  NONNAM_018.."Lo¹i mò dÖt b»ng t¬ ¤ TÇm th­îng phÈm, phong c¸ch quu ph¸i."
		local tbOpt =
	{
		{"Trë vÒ",trangkenon3},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

--------------------------------------------------------------------


function aonam()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"1. Sa Di Phôc", sadiphuc},
		{"2. NguyÖn B¹ch Cµ Sa", nguyenbachcasa},
		{"3. ThÊt B¶o Cµ Sa", thatbaocasa},
		{"4. Cæn y", cony},
		{"5. Ng­ NhÉn y", nhany},
		{"Trang KÕ", trangke},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end
	

function sadiphuc()
local szTitle =  AONAM_001.."T¨ng y dµnh cho c¸c tiÓu Sa Di vµo nhËp m«n"
		local tbOpt =
	{
		{"Trë vÒ",aonam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nguyenbachcasa()
local szTitle =  AONAM_002.."Cßn gäi lµ ThÊt §iÓu y, y phôc cña c¸c t¨ng nh©n chøc vÞ cao"
		local tbOpt =
	{
		{"Trë vÒ",aonam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thatbaocasa()
local szTitle =  AONAM_003.."Lµ PhËt m«n chi b¶o, do PhËt Tæ tÆng cho §­êng Tam T¹ng khi ®i thØnh kinh"
		local tbOpt =
	{
		{"Trë vÒ",aonam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function cony()
local szTitle =  AONAM_004.."¸o dµnh cho c¸c s¸t thñ cÊp thÊp nhÊt Èn giÊu th©n phËn"
		local tbOpt =
	{
		{"Trë vÒ",aonam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nhany()
local szTitle =  AONAM_005.."Trang bÞ cho c¸c s¸t thñ cÊp cao."
		local tbOpt =
	{
		{"Trë vÒ",aonam},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end


function trangke()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"6. Thiªn NhÉn MËt Trang", thiennhanmattrang},
		{"7. Th« Bè tr­êng bµo", thobotruongbao},
		{"8. Ng©n T¬ Bµo", ngantambao},
		{"9. Gi¸ng Sa Bµo", giangsabao},
		{"10. Táa Tö gi¸p", toatugiap},
		{"Trang Tr­íc", xemtruocngoaitrang},
		{"Trang KÕ", trangke2},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thiennhanmattrang()
local szTitle =  AONAM_006.."TËp trung s¸t khÝ v« biªn, gÆp thÇn giÕt thÇn, gÆp PhËt giÕt PhËt."
		local tbOpt =
	{
		{"Trë vÒ",trangke},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thobotruongbao()
local szTitle =  AONAM_007.."Do c¸c lo¹i v¶i th« dÖt thµnh"
		local tbOpt =
	{
		{"Trë vÒ",trangke},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function ngantambao()
local szTitle =  AONAM_008.."Dïng Tµm t¬ phèi hîp víi Ng©n t¬ chÕ thµnh, cã kh¶ n¨ng phßng ngù cùc tèt."
		local tbOpt =
	{
		{"Trë vÒ",trangke},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function giangsabao()
local szTitle =  AONAM_009.."Dïng Gi¸ng Sa chÕ thµnh, dïng cho c¸c bËc ®Õ v­¬ng, cao quý khã t¶."
		local tbOpt =
	{
		{"Trë vÒ",trangke},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function toatugiap()
local szTitle =  AONAM_010.."Trang bÞ cho nh©n sÜ tèt trong qu©n ®éi, søc phßng ngù kÐm."
		local tbOpt =
	{
		{"Trë vÒ",trangke},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end


function trangke2()
local szTitle =  "Thay ®æi ngo¹i trang gióp c¸c nh©n sÜ trë nªn xinh ®Ñp h¬n, c¸c b¹n cã muèn thö kh«ng nµo ? "
		local tbOpt =
	{
		{"11. S¬n V¨n Tù gi¸p", sonvantugiap},
		{"12. §­êng Nghª gi¸p", duongnghegiap},
		{"13. Lan Bè y", lanbony},
		{"14. ¸o v¶i th«", aovaitho},
		{"15. HuyÒn Hoµng ®o¶n gi¸p", huyenhoangdoangiap},
		{"16. TuyÒn Long bµo", tuyenlongbao},
		{"Trang Tr­íc", trangke},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function sonvantugiap()
local szTitle =  AONAM_011.."Lµ mét m¶nh ¸o gi¸p. gi÷a låi, hai bªn lâm, c«ng dông chèng tªn."
		local tbOpt =
	{
		{"Trë vÒ",trangke2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function duongnghegiap()
local szTitle =  AONAM_012.."truyÒn thiÕt ®©y lµ hé th©n b¶o gi¸p cña L· ¤n HÇu, lµ hé ph¸p cùc phÈm"
		local tbOpt =
	{
		{"Trë vÒ",trangke2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function lanbony()
local szTitle =  AONAM_013.."lµ thø v¶i b»ng vâ c©y, chØ mÆc nh÷ng lóc b×nh th­êng"
		local tbOpt =
	{
		{"Trë vÒ",trangke2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function aovaitho()
local szTitle =  AONAM_014.."¸o v¶i th« s¬, kh«ng ca tªn gäi"
		local tbOpt =
	{
		{"Trë vÒ",trangke2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function huyenhoangdoangiap()
local szTitle =  AONAM_015.."Bªn ngoµi lµ ¸o, bªn trong thùc chÊt lµ mét ¸o gi¸p, søc phßng ngù cù h¹n."
		local tbOpt =
	{
		{"Trë vÒ",trangke2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tuyenlongbao()
local szTitle =  AONAM_016.."Ph¶i hao søc cña 100 ng­êi thî rÌn lµm trong m­êi n¨m"
		local tbOpt =
	{
		{"Trë vÒ",trangke2},		
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end
-------------------------


--nId = pEventType:Reg("Ch­ëng §¨ng Cung N÷", "Thay §æi Ngo¹i Trang", tbFeatureNpc.Dialog,{tbFeatureNpc})
--pEventType:Reg("Ch­ëng §¨ng Cung N÷", "Thay §æi Ngo¹i Trang", platina_main);