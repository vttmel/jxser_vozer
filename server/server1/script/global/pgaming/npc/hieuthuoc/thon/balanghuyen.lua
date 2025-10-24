Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
function main(sel)
if TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc ~= 1 then
	Talk(1,"","TÝnh n¨ng nµy hiÖn t¹i ®ang t¹m ®ãng!")
	return 1
elseif TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc == 1 then
	local tbOpt = {
		{"Giao DÞch",scripthieuthuocall},
		{"KÕt Thóc §èi Tho¹i",No},
	}
	CreateNewSayEx("<color=green>Ng­¬i muèn mua thuèc g×?<color>", tbOpt)
else
	UTask_tw = GetTask(3)
	UTask_world18 = GetTask(46)
	if (UTask_tw == 40*256+20) then						
		Talk(5, "L40_tw_talk2", "T¹i h¹ lµ ®Ö tö Thiªn V­¬ng bang, cã mét ®ång m«n bÞ tróng näc r¾n XÝch LiÖm. Xin thÇn y cho thuèc gi¶i!", "R¾n XÝch LiÖm µ? ThËt lµ nguy hiÓm qu¸!..Ta cã thÓ cøu, c¸i khã lµ ph¶i t×m ®­îc d­îc liÖu ®Ó phèi thuèc!", "Kh«ng biÕt ph¶i cÇn nh÷ng d­îc liÖu g×?", "§©y lµ bÝ quyÕt gia truyÒn, nh­ng ng­¬i lµ ®Ö tö Thiªn V­¬ng nªn ta nãi cho nghe! CÇn cã <color=Red>da th»n l»n ®á<color> vµ <color=Red>Lôc Thñ Quy<color>. T×m ®­îc hai thø nµy th× ®ång m«n cña ng­¬i sÏ ®­îc cøu", "Kh«ng biÕt cã thÓ t×m hai thø nµy ë ®©u?")
	elseif(UTask_world18 == 1) then				
		Talk(1,"","H¶?Bè cña TiÓu Ng­ bÖnh µ? Ng­¬i ®Õn chËm råi! Ta võa b¸n viªn Tú Bµ hoµn cuèi cïng cho ®Ö tö Thiªn V­¬ng. Hay lµ ng­¬i hái thö «ng ta xem")
		Msg2Player("Chñ d­îc ®iÕm cho biÕt Tú Bµ hoµn ®· b¸n hÕt. B¹n h·y ®i hái thö ®Ö tö Thiªn V­¬ng Bang. ")
		AddNote("Tú Bµ hoµn ®· b¸n hÕt. B¹n h·y ®i hái thö ®Ö tö Thiªn V­¬ng Bang. ")
	elseif (UTask_tw == 40*256+50) then
		Say("Nghe nãi trong <color=Red>Phôc L­u ®éng<color> cã <color=Red>Th»n lµn ®á<color> vµ<color=Red>Lôc Thñ Quy<color>, cã ng­êi trªn <color=Red>Thiªn V­¬ng ®¶o<color> ®· nh×n thÊy. ChØ cÇn t×m ®­îc nã th× ®ång m«n sÏ ®­îc cøu", 2, "Ta mua Ýt thuèc tr­íc ®·/yes", "Ta ph¶i lËp tøc ®i t×m thuèc dÉn/no")
	else							
		Say("Bæn tiÖm ®Òu lµ thÇn d­îc! Cã bÖnh sÏ khái bÖnh, kh«ng bÖnh sÏ kháe, gi¸ c¶ ph¶i ch¨ng. Mua mét Ýt chø?", 3, "Giao dÞch/yes", "Ta ®Õn nhËn nhiÖm vô S¬ nhËp/yboss","Kh«ng giao dÞch/no");
	end
end
end;

function L40_tw_talk2()
	Talk(2,"","Nghe nãi trong <color=Red>Phôc L­u ®éng<color> cã <color=Red>Th»n lµn ®á<color> vµ<color=Red>Lôc Thñ Quy<color>, cã ng­êi trªn <color=Red>Thiªn V­¬ng ®¶o<color> ®· nh×n thÊy", "§a t¹ Ng« thÇn y!")
	SetTask(3, 40*256+50)								
	AddNote("Ng« thÇn y t¹i Ba L¨ng huyÖn cho biÕt: muèn gi¶i näc r¾n cÇn cã da th»n l»n ®á vµ Lôc Thñ Quy")
	Msg2Player("Muèn trÞ ®­îc näc cña §éc xµ, cÇn ph¶i cã da Th»n l»n ®á vµ Lôc Thñ Quy.")
end;

function yes()
	Sale(85);  			
end;

function no()
end;
