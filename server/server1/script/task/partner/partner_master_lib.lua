-------------------------------------------------------------------------
-- FileName		:	partner_master_lib.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-08-26 17:25:25
-- Desc			:	Í¬°é¾çÇéÈÎÎñ¶ÓÎéÄÚ·ÖÏíº¯Êı
-------------------------------------------------------------------------
--master_taskid£º		Íæ¼Ò×öÈÎÎñµÄ±äÁ¿
--master_value£º		Íæ¼Ò×öÈÎÎñÓ¦¸Ã´ïµ½µÄ±äÁ¿Öµ
--partner_uworld£º		¼Ç¢¼»ñµÃÎïÆ·ÊıÁ¿µÄ±äÁ¿
--partner_master_exp£º	Íæ¼Ò¿É»ñµÃµÄ¾­Ñé
--partner_taskid£º		ÊıÖµ¾ö¶¨ÁËÍæ¼Ò½«Ëæ»ú»ñµÃÄÄ¸öÈÎÎñµÄÎïÆ·
--BMapId£º				Íæ¼ÒÓ¦µ±ËùÔÚµÄµØÍ¼
--partner_valuebit£º    Òª¸Ä±äµÄÈÎÎñ±äÁ¿µÄÎ»Êı

Include("\\script\\task\\newtask\\newtask_head.lua") --µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀµ
Include("\\script\\task\\partner\\partner_head.lua") --°üº¬ÁËÍ¼Ïóµ÷ÓÃ
IncludeLib("PARTNER")

----------------------------------------------------------Ğ¡¹Ö¹Òµôºóµ÷ÓÃµÄ¸ø¶ÓÄÚËùÓĞÍæ¼Ò¼Ó¾­ÑéºÍµÀ¾ßÊıÁ¿µÄ½Å±¾---------------------------------------------------
function lib_master_shanzei(master_taskid,master_value,partner_uworld,partner_master_exp,partner_taskid,BMapId)  
	local nPreservedPlayerIndex = PlayerIndex
	local nMemCount = GetTeamSize()
	local yaocai = random(1,2)
	if (nMemCount == 0 ) then
		AddOwnExp(partner_master_exp)
		if ( yaocai == 1 ) and ( nt_getTask(master_taskid) == master_value ) then
			nt_setTask(partner_uworld,nt_getTask(partner_uworld)+1)
			if ( partner_taskid == 1 ) then
				Msg2Player("Ngµi thu ho¹ch ®­îc Hoµng Th¶o")
			elseif 	( partner_taskid == 2 ) then
				Msg2Player("Ngµi thu ho¹ch ®­îc Chu Phİ DiÖp")
			end
		end
		PlayerIndex = nPreservedPlayerIndex;
		return
	else
		for i = 1, nMemCount do
			PlayerIndex = GetTeamMember(i)
			local prize_mapid,prize_mapx,prize_mapy= GetWorldPos() --»ñµÃµ±Ç°Íæ¼ÒËùÔÚÎ»ÖÃ
			if ( BMapId == prize_mapid ) then   --ÅĞ¶ÏÊÇ·ñÔÚÉ±ËÀ¹ÖÎïµÄÍæ¼ÒµÄËùÔÚµØÍ¼
				AddOwnExp(partner_master_exp)
				if ( yaocai == 1 ) and ( nt_getTask(master_taskid) == master_value ) then
					nt_setTask(partner_uworld,nt_getTask(partner_uworld)+1)
					if ( partner_taskid == 1 ) then
						Msg2Player("Ngµi thu ho¹ch ®­îc Hoµng Th¶o")
					elseif 	( partner_taskid == 2 ) then
						Msg2Player("Ngµi thu ho¹ch ®­îc Chu Phİ DiÖp")
					end
				end
			end
		end
		PlayerIndex = nPreservedPlayerIndex;
		return
	end
end;

---------------------------------------------------------boss¹Òµôºó¸ø¸ø¶ÓÄÚËùÓĞÍæ¼ÒÔö¼Ó¾­ÑéºÍÉ±µôºó¿ª¹ØµÄ¹²Ïí½Å±¾----------------------------------

function lib_master_zhaizhu(master_taskid,master_value,partner_master_exp,partner_taskid,partner_valuebit,BMapId) 
	local nPreservedPlayerIndex = PlayerIndex
	local nMemCount = GetTeamSize()
	if (nMemCount == 0 ) then
		AddOwnExp(partner_master_exp)
		if ( nt_getTask(master_taskid) == master_value ) then
			nt_setTask(partner_taskid,SetBit(GetTask(partner_taskid),partner_valuebit,1))
		end
		PlayerIndex = nPreservedPlayerIndex;
		return
	else
		for i = 1, nMemCount do
			PlayerIndex = GetTeamMember(i)
			local prize_mapid,prize_mapx,prize_mapy= GetWorldPos() --»ñµÃµ±Ç°Íæ¼ÒËùÔÚÎ»ÖÃ
			if ( BMapId == prize_mapid ) then   --ÅĞ¶ÏÊÇ·ñÔÚÉ±ËÀ¹ÖÎïµÄÍæ¼ÒµÄËùÔÚµØÍ¼
				AddOwnExp(partner_master_exp)
				if ( nt_getTask(master_taskid) == master_value ) then
					nt_setTask(partner_taskid,SetBit(GetTask(partner_taskid),partner_valuebit,1))
				end
			end
		end
		PlayerIndex = nPreservedPlayerIndex;
		return
	end
end

---------------------------------------------------------boss¹Òµôºó¸ø¸ø¶ÓÄÚËùÓĞÍæ¼ÒÔö¼Ó¾­ÑéºÍ¸Ä±ä±äÁ¿µÄ¹²Ïí½Å±¾----------------------------------
function lib_master_shenzeiwang(master_taskid,master_value,partner_master_exp,partner_taskid,partner_value,BMapId) 
	local nPreservedPlayerIndex = PlayerIndex
	local nMemCount = GetTeamSize()
	if (nMemCount == 0 ) then
		AddOwnExp(partner_master_exp)
		if ( nt_getTask(master_taskid) == master_value ) then
			nt_setTask(partner_taskid,partner_value)
		end
		PlayerIndex = nPreservedPlayerIndex;
		return
	else
		for i = 1, nMemCount do
			PlayerIndex = GetTeamMember(i)
			local prize_mapid,prize_mapx,prize_mapy= GetWorldPos() --»ñµÃµ±Ç°Íæ¼ÒËùÔÚÎ»ÖÃ
			if ( BMapId == prize_mapid ) then   --ÅĞ¶ÏÊÇ·ñÔÚÉ±ËÀ¹ÖÎïµÄÍæ¼ÒµÄËùÔÚµØÍ¼
				AddOwnExp(partner_master_exp)
				if ( nt_getTask(master_taskid) == master_value ) then
					nt_setTask(partner_taskid,partner_value)
				end
			end
		end
		PlayerIndex = nPreservedPlayerIndex;
		return
	end
end
