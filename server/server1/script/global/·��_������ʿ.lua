-- ÓÃÍ­Ç®³öÊÛÒ×ÈİÎïÆ·µÄNPC
-- Fanghao Wu
-- 2004.11.1

function main()

	--Say("Ò×ÈİÊõÊ¿£ºÕâÎ»¿Í¹Ù£¬ÏëÒªÊ²Ã´ºÃ¶«Î÷Ö±½ÓÈ¥<color=yellow>ÆæÕä¸ó<color>ÀïÌô¾ÍÊÇÁË£¬ÀÏ·òÖÕÓÚ¿ÉÒÔÇåÏĞÇåÏĞÁËÄØ£¡Ê²Ã´£¿²»¶®ÔõÃ´È¥<color=yellow>ÆæÕä¸ó<color>£¿Ö±½Óµã»÷<color=green>ÓÒÏ¢½ÇµÄÄÇ¸öÔ²ĞÎµÄÍ¼±ê<color>¾ÍÊÇÁË¡£", 0);
	--return
	
	 Say ( "DŞch Dung ThuËt SÜ : Muèn häc thuËt dŞch dung ? ThËt ra th× rÊt ®¬n gi¶n, ë ta ®©y mua mét ®Æc chÕ dŞch dung mÆt n¹ ta liÒn cã thÓ d¹y ng­¬i. BÊt ®ång mÆt n¹ cã thÓ dŞch dung ®­îc kh«ng cïng ®İch d¸ng vÎ , ®¹i hiÖp cã muèn hay kh«ng nh×n mét chót ? ", 3, "Mua/OnBuy", "T¹m thêi kh«ng mua /OnCancel", "Liªn quan tíi dŞch dung mÆt n¹/OnAbout" );
end

function OnBuy()
	Sale( 95, 3 );
end

function OnCancel()
end

function OnAbout()
	Say( "§em tïy ı mÆt n¹ trang bŞ ®Õn trang bŞ<color=yellow> mÆt n¹ <color> mét c¸ch, ng­êi ch¬i nh©n vËt d¸ng ngoµi söa ®æi v× nªn mÆt n¹ ®èi øng NPC h×nh t­îng, nh©n vËt tªn cïng tÊt c¶ thuéc tİnh ®Òu <color=yellow> kh«ng thay ®æi <color> , còng <color=yellow> kh«ng ¶nh h­ëng <color> nh©n vËt b×nh th­êng sö dông c¸c lo¹i trang bŞ ®¹o cô cïng chøc n¨ng. §em mÆt n¹ tõ trang bŞ lan gë xuèng, nh©n vËt d¸ng ngoµi thay ®æi trë vÒ bé d¸ng lóc tr­íc, mÆt n¹ ®İch sö dông sè lÇn <color=yellow> gi¶m bít mét lÇn <color>.", 0 );
end
