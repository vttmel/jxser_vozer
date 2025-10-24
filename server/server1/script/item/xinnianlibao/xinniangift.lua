IncludeLib("ITEM") 
-- script viet hoa By http://tranhba.com DinhHQ 
-- script viet hoa By http://tranhba.com 20110407: kh«ng thÓ ë x«ng quan lóc sö dông vi s¬n ®¶o lÖnh bµi 
Include("\\script\\vng_feature\\forbiditem\\vngforbidspecialitem.lua")

TB_XINNIAN_GIFE = { 
[908] = { { { 0, 11, 97, 1, 1, 1 }, 
{ 0, 11, 98, 1, 1, 1 }, 
{ 0, 11, 99, 1, 1, 1 }, 
{ 0, 11, 100, 1, 1, 1 }, 
{ 0, 11, 101, 1, 1, 1 }, 
{ 0, 11, 107, 1, 1, 1 }, 
{ 0, 11, 108, 1, 1, 1 }, 
{ 0, 11, 109, 1, 1, 1 }, 
{ 0, 11, 110, 1, 1, 1 }, 
{ 0, 11, 111, 1, 1, 1 }, },"TÊt c¶ ngò hµnh thuéc tÝnh thiÕu niªn cïng thanh niªn ®ång b¹n mÆt n¹ ", 0}, 

[909] = { { { 0, 11, 97, 1, 1, 1 }, 
{ 0, 11, 98, 1, 1, 1 }, 
{ 0, 11, 99, 1, 1, 1 }, 
{ 0, 11, 100, 1, 1, 1 }, 
{ 0, 11, 101, 1, 1, 1 }, 
{ 0, 11, 107, 1, 1, 1 }, 
{ 0, 11, 108, 1, 1, 1 }, 
{ 0, 11, 109, 1, 1, 1 }, 
{ 0, 11, 110, 1, 1, 1 }, 
{ 0, 11, 111, 1, 1, 1 }, },"NgÉu nhiªn ngò hµnh thuéc tÝnh thiÕu niªn cïng thanh niªn ®ång b¹n mÆt n¹ mét ng­êi trong ®ã ", 0}, 

[910] = { { 6, 0, 1, 1, 0, 1 },"M­êi toµn ®¹i bæ hoµn mét bé ", 3, 1, 10}, 
[911] = { { 0, 0, 0, 10, 0, 1 },"Ngò hµnh thuéc tÝnh thÐp kiÕm c¸c mét thanh ", 5, 0, 4}, 
[912] = { { 0, 0, 1, 10, 0, 1 },"Ngò hµnh thuéc tÝnh giã lín ®ao c¸c mét thanh ", 5, 0, 4}, 
[913] = { { 0, 0, 2, 10, 0, 1 },"Ngò hµnh thuéc tÝnh kim c« ca tông c¸c mét c©y ", 5, 0, 4}, 
[914] = { { 0, 0, 3, 10, 0, 1 },"Ngò hµnh thuéc tÝnh xÐ trêi kÝch c¸c mét chi ", 5, 0, 4}, 
[915] = { { 0, 0, 4, 10, 0, 1 },"Ngò hµnh thuéc tÝnh xÐ trêi chïy c¸c mét thanh ", 5, 0, 4}, 
[916] = { { 0, 1, 0, 10, 0, 1 },"Ngò hµnh thuéc tÝnh b¸ v­¬ng phiªu c¸c mét chi ", 5, 0, 4}, 
[917] = { { 0, 1, 1, 10, 0, 1 },"Ngò hµnh thuéc tÝnh bÓ th¸ng ®ao c¸c mét thanh ", 5, 0, 4}, 
[918] = { { 0, 1, 2, 10, 0, 1 },"Ngò hµnh thuéc tÝnh khæng t­íc linh c¸c mét chi ", 5, 0, 4}, 
[919] = { { 0, 8, 0, 10, 0, 1 },"Ngò hµnh thuéc tÝnh long ph­îng huyÕt ngäc tr¹c c¸c mét ®«i ", 5, 0, 4}, 
[920] = { { 0, 8, 1, 10, 0, 1 },"Ngò hµnh chóc ®­îc thiªn tµm hé cæ tay c¸c mét ®«i ", 5, 0, 4}, 
[921] = { { 0, 7, 3, 10, 0, 1 },"Ngò hµnh thuéc tÝnh th«ng thiªn ph¸t quan c¸c ®Ønh ®Çu ", 5, 0, 4}, 
[922] = { { 0, 7, 4, 10, 0, 1 },"Ngò hµnh thuéc tÝnh giÊu ngµy kh«i c¸c ®Ønh ®Çu ", 5, 0, 4}, 
[923] = { { 0, 6, 1, 10, 0, 1 },"Ngò hµnh thuéc tÝnh b¹ch kim ®ai l­ng c¸c mét c©y ", 5, 0, 4}, 
[924] = { { 0, 5, 1, 10, 0, 1 },"Ngò hµnh thuéc tÝnh thiªn tµm ngoa c¸c mét ®«i ", 5, 0, 4}, 
[925] = { { 0, 5, 3, 10, 0, 1 },"Ngò hµnh thuéc tÝnh bay ph­îng ngoa c¸c mét ®«i ", 5, 0, 4}, 
[926] = { { 6, 1, 834, 2, 1, 1 },"Kim c­¬ng kh«ng ph¸ # ®ång b¹n bÝ tÞch 2 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 2, 5}, 
[927] = { { 6, 1, 835, 2, 1, 1 },"B¸ch ®éc bÊt x©m # ®ång b¹n bÝ tÞch 2 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 2, 5}, 
[928] = { { 6, 1, 836, 2, 1, 1 },"B¨ng tuyÕt s¬ dung # ®ång b¹n bÝ tÞch 2 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 2, 5}, 
[929] = { { 6, 1, 837, 2, 1, 1 },"Ch©n háa kh¸ng lùc # ®ång b¹n bÝ tÞch 2 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 2, 5}, 
[930] = { { 6, 1, 838, 2, 1, 1 }, " l«i ®×nh hé gi¸p # ®ång b¹n bÝ tÞch 2 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 2, 5}, 
[931] = { { 6, 1, 849, 1, 1, 1 },"B×nh th¶n khÝ quyÕt # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[932] = { { 6, 1, 850, 1, 1, 1 },"H­ kh«ng nhanh chãng ¶nh # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[933] = { { 6, 1, 851, 1, 1, 1 },"Héi thÇn tØ mØ # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[934] = { { 6, 1, 852, 1, 1, 1 },"V« niÖm t©m tr¶i qua # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[935] = { { 6, 1, 853, 1, 1, 1 },"Ngò hµnh v« t­íng # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[936] = { { 6, 1, 854, 1, 1, 1 },"Di khÝ phiªu tung # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[937] = { { 6, 1, 855, 1, 1, 1 },"Hoa bay ®iÖp vò # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[938] = { { 6, 1, 901, 1, 1, 1 },"V« nh©n v« ng· # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[939] = { { 6, 1, 859, 1, 1, 1 },"TÝnh ng¹o ba ®«ng # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[940] = { { 6, 1, 860, 1, 1, 1 },"§iÓm m¸u chÆn m¹ch # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[941] = { { 6, 1, 861, 1, 1, 1 },"V¹n ®éc kh«ng phôc # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[942] = { { 6, 1, 862, 1, 1, 1 },"Ng­êi nhÑ nh­ yÕn # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[943] = { { 6, 1, 863, 1, 1, 1 },"Ng­ng ©m quy nguyªn # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[944] = { { 6, 1, 864, 1, 1, 1 },"DÞch cèt tr¶i qua # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[945] = { { 6, 1, 865, 1, 1, 1 },"Thóc th©n thuËt # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[946] = { { 6, 1, 866, 1, 1, 1 },"ChËm th©n thuËt # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[947] = { { 6, 1, 867, 1, 1, 1 },"HuyÔn con m¾t ®Þnh th©n thuËt # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[948] = { { 6, 1, 868, 1, 1, 1 }, " Ých thä ©m d­¬ng # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[949] = { { 6, 1, 869, 1, 1, 1 },"TrÊn an chi ng÷ # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[950] = { { 6, 1, 870, 1, 1, 1 },"Tam sinh h÷u h¹nh # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[951] = { { 6, 1, 871, 1, 1, 1 },"Quû mª mÞ hoÆc # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[952] = { { 6, 1, 872, 1, 1, 1 },"§o¹t mÖnh quÊn quanh # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[953] = { { 6, 1, 873, 1, 1, 1 },"Yªu hå xinh ®Ñp ¶nh # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[954] = { { 6, 1, 874, 1, 1, 1 },"HoÆc thÇn lo¹n t©m # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[955] = { { 6, 1, 875, 1, 1, 1 },"Mét m×nh bÓ ¶nh # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[956] = { { 6, 1, 876, 1, 1, 1 },"Tö vong ky b¸n # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[957] = { { 6, 1, 877, 1, 1, 1 },"S©u hån ®äc h¸t # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[958] = { { 6, 1, 878, 1, 1, 1 },"Cïng ph¸ch chi nguyÒn rña # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[959] = { { 6, 1, 879, 1, 1, 1 },"Hãa tñy v« t×nh # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[960] = { { 6, 1, 880, 1, 1, 1 },"Dung cèt mÊt tÝch # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[961] = { { 6, 1, 882, 1, 1, 1 },"ThÇm ®éc tay # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp c¸c mét quyÓn ", 4, 1, 5}, 
[962] = { { 6, 1, 883, 1, 1, 1 },"Ba phôc khÝ # ®ång b¹n bÝ tÞch 1 ®Õn 5 cÊp vèn mét quyÓn ", 4, 1, 5}, 

[963] = { { { 6, 1, 926, 1, 1, 1 }, 
{ 6, 1, 927, 1, 1, 1 }, 
{ 6, 1, 928, 1, 1, 1 }, 
{ 6, 1, 929, 1, 1, 1 }, 
{ 6, 1, 930, 1, 1, 1 }, },"N¨m ®ång b¹n kh¸ng ®­îc kü n¨ng s¸ch lÔ tói ", 0}, 

[964] = { { { 6, 1, 949, 1, 1, 1 }, 
{ 6, 1, 931, 1, 1, 1 }, 
{ 6, 1, 932, 1, 1, 1 }, 
{ 6, 1, 935, 1, 1, 1 }, 
{ 6, 1, 936, 1, 1, 1 }, 
{ 6, 1, 937, 1, 1, 1 }, 
{ 6, 1, 944, 1, 1, 1 }, 
{ 6, 1, 948, 1, 1, 1 }, 
{ 6, 1, 950, 1, 1, 1 }, },"ChÝn ®ång b¹n c«ng céng kü n¨ng s¸ch lÔ tói ", 0}, 

[965] = { { { 6, 1, 933, 1, 1, 1 }, 
{ 6, 1, 934, 1, 1, 1 }, 
{ 6, 1, 951, 1, 1, 1 }, 
{ 6, 1, 952, 1, 1, 1 }, 
{ 6, 1, 956, 1, 1, 1 }, },"N¨m kim lo¹i tÝnh ®ång b¹n kü n¨ng s¸ch lÔ tói ", 0}, 

[966] = { { { 6, 1, 939, 1, 1, 1 }, 
{ 6, 1, 940, 1, 1, 1 }, 
{ 6, 1, 958, 1, 1, 1 }, 
{ 6, 1, 961, 1, 1, 1 }, },"Bèn méc thuéc tÝnh ®ång b¹n kü n¨ng s¸ch lÔ tói ", 0}, 

[967] = { { { 6, 1, 943, 1, 1, 1 }, 
{ 6, 1, 946, 1, 1, 1 }, 
{ 6, 1, 955, 1, 1, 1 }, 
{ 6, 1, 957, 1, 1, 1 }, },"Bèn n­íc thuéc tÝnh ®ång b¹n kü n¨ng s¸ch lÔ tói ", 0}, 

[968] = { { { 6, 1, 942, 1, 1, 1 }, 
{ 6, 1, 953, 1, 1, 1 }, 
{ 6, 1, 954, 1, 1, 1 }, 
{ 6, 1, 959, 1, 1, 1 }, },"Bèn háa thuéc tÝnh ®ång b¹n kü n¨ng s¸ch lÔ tói ", 0}, 

[969] = { { { 6, 1, 938, 1, 1, 1 }, 
{ 6, 1, 941, 1, 1, 1 }, 
{ 6, 1, 947, 1, 1, 1 }, 
{ 6, 1, 960, 1, 1, 1 }, 
{ 6, 1, 962, 1, 1, 1 }, },"N¨m ®Êt thuéc tÝnh ®ång b¹n kü n¨ng s¸ch lÔ tói ", 0}, 

[970] = { { 6, 1, 977, 1, 1, 1 },"M­êi kü n¨ng râ rµng c©u hoµn ", -1, 10}, 

[971] = { { 6, 1, 130, 1, 1, 1 },"M­êi râ rµng c©u hoµn ", -1, 10}, 

[972] = { { { 0, 11, 101, 1, 1, 1 }, 
{ 0, 11, 111, 1, 1, 1 }, },"ThiÕu niªn kim phong # thanh niªn kim phong mÆt n¹ c¸c mét ", 0}, 

[973] = { { { 0, 11, 100, 1, 1, 1 }, 
{ 0, 11, 110, 1, 1, 1 }, },"ThiÕu niªn h¶i ®­êng # thanh niªn h¶i ®­êng mÆt n¹ c¸c mét ", 0}, 

[974] = { { { 0, 11, 98, 1, 1, 1 }, 
{ 0, 11, 108, 1, 1, 1 }, },"ThiÕu niªn c­êi s­¬ng # thanh niªn c­êi s­¬ng mÆt n¹ c¸c mét ", 0}, 

[975] = { { { 0, 11, 99, 1, 1, 1 }, 
{ 0, 11, 109, 1, 1, 1 }, },"ThiÕu niªn löa nhËn # thanh niªn löa nhËn mÆt n¹ c¸c mét ", 0}, 

[976] = { { { 0, 11, 97, 1, 1, 1 }, 
{ 0, 11, 107, 1, 1, 1 }, },"ThiÕu niªn l«i kiÕm # thanh niªn l«i th©n kiÕm cô c¸c mét ", 0}, 

[995] = { { 6, 1, 990, 1, 1, 1 },"M­êi l«i tèc hoµn ", -1, 10}, 
[996] = { { 6, 1, 985, 1, 1, 1 },"M­êi tr­¬ng kiÒn kh«n na di phï ", -1, 10}, 
[997] = { { 6, 1, 986, 1, 1, 1 },"M­êi tê dêi h×nh ®æi ¶nh phï ", -1, 10}, 
[998] = { { 6, 1, 982, 1, 1, 1 },"M­êi huyÒn thiªn bÉy rËp ", -1, 10}, 
[999] = { { 6, 1, 984, 1, 1, 1 },"M­êi ®ãng b¨ng bÉy rËp ", -1, 10}, 
[1000] = { { 6, 1, 988, 1, 1, 1 },"M­êi cao cÊp kinh nghiÖm lÖnh bµi ", -1, 10}, 
[1001] = { { 6, 1, 993, 1, 1, 1 },"M­êi l«i thÇn ngäc ", -1, 10}, 
[1002] = { { 6, 1, 992, 1, 1, 1 },"M­êi huyÒn b¨ng ngäc ", -1, 10}, 
[1003] = { { 6, 1, 979, 1, 1, 1 },"M­êi b¨ng s­¬ng kÌn hiÖu ", -1, 10}, 
[1004] = { { 6, 1, 980, 1, 1, 1 },"M­êi b¹o l«i kÌn hiÖu ", -1, 10}, 
[1014] = { { 6, 0, 1012, 1, 1, 1 },"M­êi mµu xanh da trêi yªu c¬ ", -1, 10}, 
[1015] = { { 6, 0, 1013, 1, 1, 1 },"M­êi b«ng tuyÕt ", -1, 10}, 
[1018] = { { 6, 0, 1017, 1, 1, 1 },"M­êi ngµy lÔ lÔ hoa ", -1, 10}, 
[1049] = { { 6, 1, 1016, 1, 1, 1 },"M­êi nh­ ý t¹p ", -1, 10}, 
[1055] = { { 6, 1, 1053, 1, 1, 1 },"M­êi huyÔn th¶i h¹ t¹p ", -1, 10}, 
[1074] = { { 6, 1, 402, 1, 1, 1 }, "10 c¸ thÇn bÝ ®¹i bao tiÒn l× x× ", -1, 10}, 
[1075] = { { 6, 1, 906, 1, 1, 1 }, "10 c¸ cao cÊp huy hoµng qu¶ ", -1, 10}, 
[1137] = { { 4, 967, 1, 1, 0, 0 }, "10 c¸ b¨ng th¹ch kÕt tinh ", -1, 10}, 
[1138] = { { 4, 963, 1, 1, 0, 0 }, "10 c¸ hoa cóc th¹ch ", -1, 10}, 
[1139] = { { 4, 968, 1, 1, 0, 0 }, "10 c¸ ngµy ®¸ bÓ phiÕn ", -1, 10}, 
[1140] = { { 4, 965, 1, 1, 0, 0 }, "10 b¨ng thiÒm tö ", -1, 10}, 
[1141] = { { 4, 966, 1, 1, 0, 0 }, "10 c¸ m¸u gµ th¹ch ", -1, 10}, 
[1142] = { { 4, 964, 1, 1, 0, 0 }, "10 c¸ m· n·o ", -1, 10}, 
[1143] = { { 4, 969, 1, 1, 0, 0 }, "10 c¸ ®iÒn hoµng th¹ch ", -1, 10}, 
[1373] = { { 6, 1, 74, 1, 1, 1 }, "5 c¸ b¹ch c©u hoµn ", -1, 5}, 
[1374] = { { 6, 1, 1372, 1, 1, 1 }, "5 kü n¨ng b¹ch c©u hoµn ", -1, 5}, 
[1665] = { { 6, 1, 23, 1, 1, 1 }, "10 cuèn thiÕt La H¸n ", -1, 10}, 
[2355] = { { 6, 1, 2348, 1, 1, 0 }, "5 c¸ huyÒn thiªn chïy ", -1, 5}, 
[2515] = { { 6, 0, 1, 1, 1, 0 }, format("%d %s", 5,"Tr­êng mÖnh hoµn "), -1, 5}, 
[2516] = { { 6, 0, 2, 1, 1, 0 }, format("%d %s", 5,"Nhµ bµo hoµn "), -1, 5}, 
[2517] = { { 6, 0, 3, 1, 1, 0 }, format("%d %s", 5,"§¹i lùc hoµn "), -1, 5}, 
[2518] = { { 6, 0, 4, 1, 1, 0 }, format("%d %s", 5,"Cao nhanh chãng hoµn "), -1, 5}, 
[2519] = { { 6, 0, 5, 1, 1, 0 }, format("%d %s", 5,"Trung häc ®Ö nhÞ cÊp hoµn "), -1, 5}, 
[2520] = { { 6, 0, 6, 1, 1, 0 }, format("%d %s", 5,"Nhanh chãng hoµn "), -1, 5}, 
[2521] = { { 6, 0, 7, 1, 1, 0 }, format("%d %s", 5,"B¨ng phßng hoµn "), -1, 5}, 
[2522] = { { 6, 0, 8, 1, 1, 0 }, format("%d %s", 5," l«i phßng hoµn "), -1, 5}, 
[2523] = { { 6, 0, 9, 1, 1, 0 }, format("%d %s", 5," löa phßng hoµn "), -1, 5}, 
[2524] = { { 6, 0, 10, 1, 1, 0 }, format("%d %s", 5,"§éc phßng hoµn "), -1, 5}, 
[2525] = { { 6, 1, 2432, 1, 1, 0 }, format("%d %s", 5,"Vi s¬n ®¶o lÖnh bµi "), -1, 5}, 
[4322] = { { 6, 1, 1372, 1, 1, 1 }, "100 Cµn Kh«n T¹o Hãa §an (®¹i) ", -1, 100},
} 

function main(nItemIdx) 
_,_,detail = GetItemProp(nItemIdx) 

local strItemName = GetItemName(nItemIdx) 
if strItemName == " vi s¬n ®¶o lÖnh bµi lÔ tói " then 
if tbVNGForbidItem:IsForbidMap(strItemName, {tbVNGForbidItem.CHALLENGE_OF_TIME}) == 1 then 
return 1 
end 
end 

tbGift = TB_XINNIAN_GIFE[detail][1] 
if ( tbGift == nil ) then 
print("error xinnian gift "..GetItemProp(nItemIdx)) 
return 1 
end 

if (TB_XINNIAN_GIFE[detail][3] == -1) then -- script viet hoa By http://tranhba.com  theo nh­ thø 4 c¸ tham sæ trÞ gi¸ cho bao nhiªu c¸ cïng c¸ vËt phÈm 
if (CalcFreeItemCellCount() < TB_XINNIAN_GIFE[detail][4]) then 
Msg2Player("ChuÈn bÞ chç trèng ch­a ®ñ #"); 
return 1; 
end; 
if (detail == 1075) then 
for i = 1, TB_XINNIAN_GIFE[detail][4] do 
local nItemID = AddItem(tbGift[1], tbGift[2], tbGift[3], tbGift[4], tbGift[5], tbGift[6]) 
ITEM_SetExpiredTime(nItemID, 10080); 
SyncItem(nItemID) 
end 

else 
for i = 1, TB_XINNIAN_GIFE[detail][4] do 
addGiftitem(tbGift[1], tbGift[2], tbGift[3], tbGift[4], tbGift[5], tbGift[6]) 
end 
end 

elseif (detail == 909) then -- script viet hoa By http://tranhba.com  ngÉu nhiªn cho mét 
ranitem = random( getn(tbGift) ) 
addGiftitem(tbGift[ranitem][1], tbGift[ranitem][2], tbGift[ranitem][3], tbGift[ranitem][4], tbGift[ranitem][5], tbGift[ranitem][6]) 

elseif (TB_XINNIAN_GIFE[detail][3] == 0) then -- script viet hoa By http://tranhba.com  liÖt biÓu trung ®Ých toµn cho 
for i = 1, getn(tbGift) do 
addGiftitem(tbGift[i][1], tbGift[i][2], tbGift[i][3], tbGift[i][4], tbGift[i][5], tbGift[i][6]) 
end 

elseif (TB_XINNIAN_GIFE[detail][3] == 3) then -- script viet hoa By http://tranhba.com  thø 3 c¸ tham sæ # cÆn kÏ lo¹i h×nh # theo nh­ ®iÒu kiÖn 
for i = TB_XINNIAN_GIFE[detail][4], TB_XINNIAN_GIFE[detail][5] do 
addGiftitem(tbGift[1], tbGift[2], i, tbGift[4], tbGift[5], tbGift[6]) 
end 

elseif (TB_XINNIAN_GIFE[detail][3] == 4) then -- script viet hoa By http://tranhba.com  thø 4 c¸ tham sæ # cÊp bËc # theo nh­ ®iÒu kiÖn 
for i = TB_XINNIAN_GIFE[detail][4], TB_XINNIAN_GIFE[detail][5] do 
addGiftitem(tbGift[1], tbGift[2], tbGift[3], i, tbGift[5], tbGift[6]) 
end 

elseif (TB_XINNIAN_GIFE[detail][3] == 5) then -- script viet hoa By http://tranhba.com  thø 5 c¸ tham sæ # ngò hµnh # theo nh­ ®iÒu kiÖn 
for i = TB_XINNIAN_GIFE[detail][4], TB_XINNIAN_GIFE[detail][5] do 
addGiftitem(tbGift[1], tbGift[2], tbGift[3], tbGift[4], i, tbGift[6]) 
end 
end 
Msg2Player("Ngµi ®¹t ®­îc <color=yellow>"..TB_XINNIAN_GIFE[detail][2]) 
end 

function addGiftitem(...) 
if ( arg.n == 6 ) then 
AddItem ( arg[1], arg[2], arg[3], arg[4], arg[5], arg[6] ) 
elseif ( arg.n == 2 ) then 
AddGoldItem( arg[1], arg[2] ) 
elseif ( arg.n == 1 ) then 
AddEventItem( arg[1] ) 
else 
print("the table of gift is wrong!!!") 
end 
end
