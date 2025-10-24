-- Xa phu ë Nam Nh¹c TrÊn - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

CurStation = 11;
Include("\\script\\global\\station.lua")
--Include("\\script\\global\\skills_table.lua")

function main(sel)
--	check_update()					-- ¼¼ÄÜ¸üÐÂ¡¢ÃÅÅÉ¼Ó±êÊ¶£¨2004-05-31£©
--	UTask_world15 = GetTask(15)
--	if (UTask_world15 < 255) then	
--		Say("³µ·ò£º°¦£¬ÏÖÔÚµÄÉúÒâÔ½À´Ô½ÄÑ×öÁË£¬Ô­±¾»¹ÓÐ²»ÉÙ¸»ÉÌ´óÒ¯È¥ÉñÅ©¼ÜÄÇ¶ùÓÎÍæ£¬¿ÉÊÇ×î½ü²»Öª´ÓÄÄ¶ù´Ü³öÒ»ÈººÚÒ¶ºï£¬ÑØÂ·´ò½Ù¿ÍÈË£¬¸ãµÃÎÒÉúÒâ´óÊÜÓ°Ïì£¬Èç¹ûÓÐÈËÄÜ¸Ï×ßÕâÐ©ºÚÒ¶ºï¾ÍºÃÁË¡£Äã°ïÎÒ¸Ï×ßÊ®Ö»ºï×Ó£¬¾Í¿ÉÒÔÃâ·ÑÔÚÎÒÕâÀïÊ¹ÓÃÒ»´Î³µÂí¡£ÄúÒª×ø³µÂð£¿", 2, "°ïÃ¦/yes", "²»°ïÃ¦/no")
--		SetTask(15, 1)
--	else
		Say("<color=green>Xa phu<color>: Lµm nghÒ xa phu thËt lµ khæ cùc, cã lóc ®Õn ch¸o tr¾ng còng kh«ng cã mµ ¨n!"..Note("xaphu_namnhactran"), 4, "Nh÷ng n¬i ®· ®i qua/WayPointFun", "Nh÷ng thµnh thÞ ®· ®i qua/StationFun", "Quay l¹i ®Þa ®iÓm cò /TownPortalFun", "Kh«ng cÇn ®©u/OnCancel");
--	end
end;

function yes()
	Task0013 = GetTaskTemp(13);
	if (Task0013 < 10) then			--Ã»ÓÐÉ±µ½Ê®Ö»ºÚÒ¶ºï
		Say("Lµm nghÒ xa phu thËt lµ khæ cùc, cã lóc ®Õn ch¸o tr¾ng còng kh«ng cã mµ ¨n!", 4, "Nh÷ng n¬i ®· ®i qua/WayPointFun", "Nh÷ng thµnh thÞ ®· ®i qua/StationFun", "Quay l¹i ®Þa ®iÓm cò /TownPortalFun", "Kh«ng cÇn ®©u/OnCancel");
	else
		SetTaskTemp(13, 0)
		Say("C¶m ¬n ng­¬i ®· b¾t dïm ta H¾c DiÖp HÇu! Ta ®­a ng­¬i ®i miÔn phÝ!", 4, "Nh÷ng n¬i ®· ®i qua/WayPointFun", "Nh÷ng thµnh thÞ ®· ®i qua/StationFun", "Quay l¹i ®Þa ®iÓm cò /TownPortalFun", "Kh«ng cÇn ®©u/OnCancel")
	end
end;

function  OnCancel()
	Say("Kh«ng tiÒn kh«ng thÓ ngåi xe!",0)
end;
