Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  
Include("\\script\\task\\task_addplayerexp.lua") 
Include("\\script\\task\\tollgate\\killbosshead.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_baoxiangtask.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
IncludeLib("RELAYLADDER");	
-------------PhÇn Th­ëng Ho¹t §éng-----------------------
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
----------------------------------------------------------
nTSK_USE_TIMES_LIMIT = 5748
--1201 ®­a tin nhiÖm vô phong chi kş nhiÖm vô thay ®æi l­îng 
--1202 ®­a tin nhiÖm vô miÕu s¬n thÇn nhiÖm vô thay ®æi l­îng 
--1203 ®­a tin nhiÖm vô thiªn b¶o kho nhiÖm vô thay ®æi l­îng

citygo = { 
	{1204,1,"D­¬ng Ch©u","BiÖn Kinh",1201,80,37,1601,3001}, 
	{1204,2,"D­¬ng Ch©u","Ph­îng T­êng ",1201,80,1,1561,3114}, 
	{1204,3,"D­¬ng Ch©u","L©m An",1201,80,176,1592,2925}, 
	{1204,4,"D­¬ng Ch©u","Thµnh §«",1201,80,11,3021,5090}, 
	{1204,5,"D­¬ng Ch©u","T­¬ng D­¬ng",1201,80,78,1596,3379}, 
	{1204,6,"D­¬ng Ch©u","§¹i Lı",1201,80,162,1674,3132}, 

	{1204,7,"BiÖn Kinh","D­¬ng Ch©u",1201,37,80,1676,3000}, 
	{1204,8,"BiÖn Kinh","Ph­îng T­êng ",1201,37,1,1561,3114}, 
	{1204,9,"BiÖn Kinh","L©m An",1201,37,176,1592,2925}, 
	{1204,10,"BiÖn Kinh","Thµnh §«",1201,37,11,3021,5090}, 
	{1204,11,"BiÖn Kinh","T­¬ng D­¬ng",1201,37,78,1596,3379}, 
	{1204,12,"BiÖn Kinh","§¹i Lı",1201,37,162,1674,3132},

	{1204,13,"Ph­îng T­êng","D­¬ng Ch©u",1202,1,80,1676,3000}, 
	{1204,14,"Ph­îng T­êng","BiÖn Kinh",1202,1,37,1601,3001}, 
	{1204,15,"Ph­îng T­êng","L©m An",1202,1,176,1592,2925}, 
	{1204,16,"Ph­îng T­êng","Thµnh §«",1202,1,11,3021,5090}, 
	{1204,17,"Ph­îng T­êng","T­¬ng D­¬ng",1202,1,78,1596,3379}, 
	{1204,18,"Ph­îng T­êng","§¹i Lı",1202,1,162,1674,3132}, 

	{1204,19,"L©m An","D­¬ng Ch©u",1202,176,80,1676,3000}, 
	{1204,20,"L©m An","Ph­îng T­êng",1202,176,1,1561,3114}, 
	{1204,21,"L©m An","BiÖn Kinh",1202,176,37,1601,3001}, 
	{1204,22,"L©m An","Thµnh §«",1202,176,11,3021,5090}, 
	{1204,23,"L©m An","T­¬ng D­¬ng",1202,176,78,1596,3379}, 
	{1204,24,"L©m An"," §¹i Lı ",1202,176,162,1674,3132}, 

	{1204,25,"Thµnh §«","D­¬ng Ch©u",1203,11,80,1676,3000}, 
	{1204,26,"Thµnh §«","Ph­îng T­êng",1203,11,1,1561,3114}, 
	{1204,27,"Thµnh §«","BiÖn Kinh",1203,11,37,1601,3001}, 
	{1204,28,"Thµnh §«","L©m An",1203,11,176,1592,2925}, 
	{1204,29,"Thµnh §«","T­¬ng D­¬ng",1203,11,78,1596,3379}, 
	{1204,30,"Thµnh §«","§¹i Lı",1203,11,162,1674,3132},

	{1204,31,"T­¬ng D­¬ng","D­¬ng Ch©u",1203,78,80,1676,3000}, 
	{1204,32,"T­¬ng D­¬ng","Ph­îng T­êng",1203,78,1,1561,3114}, 
	{1204,33,"T­¬ng D­¬ng","BiÖn Kinh",1203,78,37,1601,3001}, 
	{1204,34,"T­¬ng D­¬ng","L©m An",1203,78,176,1592,2925}, 
	{1204,35,"T­¬ng D­¬ng","Thµnh §«",1203,78,11,3021,5090}, 
	{1204,36,"T­¬ng D­¬ng","§¹i Lı",1203,78,162,1674,3132}, 

	{1204,37,"§¹i Lı","D­¬ng Ch©u",1203,162,80,1676,3000}, 
	{1204,38,"§¹i Lı","Ph­îng t­êng",1203,162,1,1561,3114}, 
	{1204,39,"§¹i Lı","BiÖn kinh",1203,162,37,1601,3001}, 
	{1204,40,"§¹i Lı","L©m An",1203,162,176,1592,2925}, 
	{1204,41,"§¹i Lı","T­¬ng D­¬ng",1203,162,78,1596,3379}, 
	{1204,42,"§¹i Lı","Thµnh §«",1203,162,11,3021,5090},
}

-------------------------------------------ÌØÊâĞÅÊ¹ÈÎÎñµÄÖ÷½çÃæ-------------------------------------------------
function especiallymessenger()
	local nDay = tonumber(GetLocalDate("%d"))
	if (GetTask(nTSK_USE_TIMES_LIMIT) ~= nDay) then
	SetTask(5749,0)
	SetTask(nTSK_USE_TIMES_LIMIT, nDay)
	end
	if ( nt_getTask(3000) == 1 ) then
		nt_setTask(3000,0)
		Msg2Player("Xin lçi, ng­¬i nhËn nhiÖm vô tİn sø ®· qu¸ h¹n.")
	end

	--Æß´óÖ÷³Çæä¹ÙÖ»ÓĞ³É¶¼ºÍ´óÀíÓĞÈÎÎñ
	local _, _, nMapIndex = GetPos()
	local MapId = SubWorldIdx2ID( nMapIndex )
	--if MapId ~= 11 and MapId ~= 162 and MapId ~= 1 and MapId ~= 80 then
		--Talk(1,"","Tham gia nhiÖm vô tİn sø, xin mêi ®i t×m DŞch Quan <color=red> Thµnh §« <color>,<color=red> §¹i Lı <color>,<color=red>Ph­îng T­êng<color>,<color=red>D­¬ng Ch©u<color>!")
		--return
	--end
	nt_setTask(1211,0)
	Ladder_NewLadder(10187, GetName(),nt_getTask(3000),1);--»ı·ÖÅÅÃû
	Describe(DescLink_YiGuan..": triÒu ®×nh qu©n c¬ gÇn nhÊt tæng bŞ kim tÆc biÕt tr­íc, ta hoµi nghi cã néi gian. Nh­ng lµ, ë ph¸t hiÖn nh÷ng b¹i ho¹i nµy tr­íc, ta muèn ®Ó cho thÕ nh©n còng biÕt, ng­¬i nghÜ v× quèc gia tÉn mét phÇn lùc sao?",7,
	 "Ta ®ång ı!/messenger_ido",
	 "Ta muèn giao nhiÖm vô tİn sø/messenger_finishtask", 
        "Ta muèn hñy nhiÖm vô tİn sø/messenger_losemytask", 
	 --"KiÓm tra sè ®iÓm tİch luü tİn sø/testtinsu",
       -- "Ta muèn th¨ng cÊp nhiÖm vô tİn sø danh hiÖu/messenger_getlevel", 
       -- "Ta muèn lÊy ®iÓm tİn sø ®Ó ®æi phÇn th­ëng/messenger_duihuanprize", 
        "Ta muèn t×m hiÓu nhiÖm vô tİn sø/messenger_what", 
        "GÇn ®©y ta cã chuyÖn bËn rén/no")
end

function testtinsu()
Talk(1,"","<color=green>DŞch Quan<color>: Sè §iÓm Tİn Sø hiÖn t¹i: <color=red>"..GetTask(3000).."<color>!")
end
-------------------------------------------½ÓÊÜÌØÊâĞÅÊ¹ÈÎÎñµÄÖ÷½çÃæ-----------------------------------------------


function messenger_ido()
	local _, _, nMapIndex = GetPos()
	local nTodayTaskCount = GetTask(5749)
	local Uworld1204 = nt_getTask(1204)  
	local Uworld1028 = nt_getTask(1028) 
	local MapId = SubWorldIdx2ID( nMapIndex )
	if ( GetLevel() < 120 ) then
		Describe(DescLink_YiGuan..": ThËt xin lçi, tr­íc m¾t cÊp bËc cña ng­¬i kh«ng ®ñ 120 cÊp. TiÕp tôc luyÖn tËp sau ®ã tíi thÊy ta.",1,"KÕt thóc ®èi tho¹i/no")	
	elseif ( Uworld1204 ~= 0 )  then
		Describe(DescLink_YiGuan..": ThËt xin lçi ! Ng­¬i nhiÖm vô tİn sø kh«ng hoµn thµnh, kh«ng thÓ nhËn gièng nhau nhiÖm vô, xin mêi hoµn thµnh nhiÖm vô tr­íc, c¸m ¬n!",1,"KÕt thóc ®èi tho¹i/no")
	elseif (  messenger_givetime() == 10 ) then  
		Describe(DescLink_YiGuan.."ThËt xin lçi , ngµi h«m nay ë nhiÖm vô tİn sø, thêi gian ®· hÕt, xin mêi ngµy mai trë l¹i",1,"KÕt thóc ®èi tho¹i/no")
	else
    	        local nTaskFlag = check_daily_task_count()
    	if nTodayTaskCount == 2 then
    		Describe(DescLink_YiGuan..":ThËt xin lçi, h«m nay ng­¬i ®· rÊt mÖt mái, ngµy mai trë l¹i ®i",1,"KÕt thóc ®èi tho¹i/no")
    		return
    	elseif nTaskFlag == -1 then
    		Describe(DescLink_YiGuan..": h«m nay ng­¬i ®· rÊt mÖt mái. NÕu nh­ ng­¬i cã <color=yellow> thiªn b¶o kho lµm <color>, ta ®em ph¸ lÖ cho ng­¬i tham gia n÷a mét lÇn.",1,"KÕt thóc ®èi tho¹i/no")
    		return
    	elseif nTaskFlag == 2 then
    		Msg2Player("Ng­¬i chØ ®Ó ı cÇm thiªn b¶o kho lµm tham gia nhiÖm vô <color=yellow> nhiÖm vô hoµn thµnh <color> ta ®em thu håi lÖnh bµi")
    	end
    	
    	WriteLog(format("Account:%s[Name:%s] NhËn nhiÖm vô tİn sø, h«m nay ®· hoµn thµnh [%d] lÇn",
				GetAccount(),
				GetName(),
				nTaskFlag
				)
			);
	if nTaskFlag == 2 then
		tbLog:PlayerActionLog("TinhNangKey","NhanNhiemVuTinSuSuDungThienBaoKhoLenh")		
	else
		tbLog:PlayerActionLog("TinhNangKey","NhanNhiemVuTinSu")
	end
	   if TinSuPhongKy == 1 then
		if ( MapId == 80 ) then  --D­¬ng Ch©u
			local CityId = random(1,6)
			for i=1,6 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end
		elseif ( MapId == 37 ) then --BiÖn Kinh ---------------------
			local CityId = random(7,12)
			for i=7,12 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end			
		elseif ( MapId == 1) then --Ph­îng T­êng ---------------------
			Say("H·y ®Õn DŞch Quan <color=yellow>D­¬ng Ch©u<color> hoÆc <color=yellow>BiÖn Kinh<color> lµm nhiÖm vô",0)
			return	
		elseif ( MapId == 176 ) then --L©m An ---------------------
			Say("H·y ®Õn DŞch Quan <color=yellow>D­¬ng Ch©u<color> hoÆc <color=yellow>BiÖn Kinh<color> lµm nhiÖm vô",0)
			return	
		elseif ( MapId == 11 ) then --Thµnh §« ---------------------
			Say("H·y ®Õn DŞch Quan <color=yellow>D­¬ng Ch©u<color> hoÆc <color=yellow>BiÖn Kinh<color> lµm nhiÖm vô",0)
			return	
		elseif ( MapId == 78 ) then --T­¬ng D­¬ng ---------------------
			Say("H·y ®Õn DŞch Quan <color=yellow>D­¬ng Ch©u<color> hoÆc <color=yellow>BiÖn Kinh<color> lµm nhiÖm vô",0)
			return	
		elseif ( MapId == 162 ) then --§¹i Lı ---------------------
			Say("H·y ®Õn DŞch Quan <color=yellow>D­¬ng Ch©u<color> hoÆc <color=yellow>BiÖn Kinh<color> lµm nhiÖm vô",0)
			return	
		end
	end
		

	if TinSuThienBaoKho == 1 then
		if ( MapId == 80 ) then  --D­¬ng Ch©u
			Say("H·y ®Õn DŞch Quan <color=yellow>Thµnh §«<color> hoÆc <color=yellow>T­¬ng D­¬ng<color> lµm nhiÖm vô",0)
			return		
		elseif ( MapId == 37 ) then --BiÖn Kinh ---------------------
			Say("H·y ®Õn DŞch Quan <color=yellow>Thµnh §«<color> hoÆc <color=yellow>T­¬ng D­¬ng<color> lµm nhiÖm vô",0)
			return				
		elseif ( MapId == 1) then --Ph­îng T­êng ---------------------
			Say("H·y ®Õn DŞch Quan <color=yellow>Thµnh §«<color> hoÆc <color=yellow>T­¬ng D­¬ng<color> lµm nhiÖm vô",0)
			return		
		elseif ( MapId == 176 ) then --L©m An ---------------------
			Say("H·y ®Õn DŞch Quan <color=yellow>Thµnh §«<color> hoÆc <color=yellow>T­¬ng D­¬ng<color> lµm nhiÖm vô",0)
			return			
		elseif ( MapId == 11 ) then --Thµnh §« ---------------------
			local CityId = random(25,30)
			for i=25,30 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end			
		elseif ( MapId == 78 ) then --T­¬ng D­¬ng ---------------------
			local CityId = random(25,30)
			for i=25,30 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end			
		elseif ( MapId == 162 ) then --§¹i Lı ---------------------
			Say("H·y ®Õn DŞch Quan <color=yellow>Thµnh §«<color> hoÆc <color=yellow>T­¬ng D­¬ng<color> lµm nhiÖm vô",0)
			return	
		end
	end

		

	if TinSuSonThanMieu == 1 then
			if ( MapId == 80 ) then  --D­¬ng Ch©u
				Say("H·y ®Õn DŞch Quan <color=yellow>Ph­îng T­êng<color> hoÆc <color=yellow>L©m An<color> lµm nhiÖm vô",0)
				return
			elseif ( MapId == 37 ) then --BiÖn Kinh ---------------------
				Say("H·y ®Õn DŞch Quan <color=yellow>Ph­îng T­êng<color> hoÆc <color=yellow>L©m An<color> lµm nhiÖm vô",0)
				return
			elseif ( MapId == 1 ) then  --Ph­îng T­êng
				local CityId = random(13,18)
				for i=13,18 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end	
			elseif ( MapId == 176 ) then  --L©m An--------------------------
				local CityId = random(19,24)
				for i=19,24 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end		
			elseif ( MapId == 11 ) then --Thµnh §«
				Say("H·y ®Õn DŞch Quan <color=yellow>Ph­îng T­êng<color> hoÆc <color=yellow>L©m An<color> lµm nhiÖm vô",0)
				return
			elseif ( MapId == 78 ) then --T­¬ng D­¬ng ----------------------------
				Say("H·y ®Õn DŞch Quan <color=yellow>Ph­îng T­êng<color> hoÆc <color=yellow>L©m An<color> lµm nhiÖm vô",0)
				return
			elseif ( MapId == 162 ) then  --§¹i Lı			
					Say("H·y ®Õn DŞch Quan <color=yellow>Ph­îng T­êng<color> hoÆc <color=yellow>L©m An<color> lµm nhiÖm vô",0)
				return
			end
		end

	if Mo3LoaiTinSuNhuVNG == 1 then
			if ( MapId == 80 ) then  --D­¬ng Ch©u
			local CityId = random(1,6)
			for i=1,6 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end
		elseif ( MapId == 37 ) then --BiÖn Kinh ---------------------
			local CityId = random(7,12)
			for i=7,12 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end
		elseif ( MapId == 1 ) then  --Ph­îng T­êng
			local CityId = random(13,18)
			for i=13,18 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end	
		elseif ( MapId == 176 ) then  --L©m An--------------------------
			local CityId = random(19,24)
			for i=19,24 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end		
		elseif ( MapId == 11 ) then --Thµnh §«
			

			local CityId = random(25,30)
			for i=25,30 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end		
		elseif ( MapId == 78 ) then --T­¬ng D­¬ng ----------------------------
			local CityId = random(31,36)
			for i=31,36 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end
		elseif ( MapId == 162 ) then  --§¹i Lı
			
			local CityId = random(37,42)
			for i=37,42 do
				if ( messenger_choice(CityId,i) == 10 ) then
					break
				end
			end
		else
			Msg2Player("ThËt xin lçi ! Kh«ng hiÓu t¹i sao ng­¬i kh«ng thÓ nhËn nhiÖm vô tİn sø, xin liªn l¹c GM!")
		end
	end		

	end
end

--Ç°ÍùÇ§±¦¿â
function messenger_storewagoner()
	SetRevPos(11,10)	
	NewWorld(395,1417,3207)
end

-----------------------------------------------¸ø·ûºÏÒªÇóµÄÍæ¼ÒÒ»¸öÌØÊâĞÅÊ¹ÈÎÎñ£¬²¢¸Ä±äÆäĞÅÊ¹ÈÎÎñ±äÁ¿ºÍµ½´ï¹Ø¿¨±äÁ¿------------------------
function messenger_choice(CityIdTwo,j)
	if ( CityIdTwo == citygo[j][2] ) then	
		--ÉèÖÃÓÉ´ËµØÈ¥±ËµØµÄÈÎÎñ±äÁ¿	
		nt_setTask( 1204,citygo[j][2] )
		--ÉèÖÃÈ¥µ½ÄÄ¸ö¹Ø¿¨µÄÈÎÎñ±äÁ¿   
		nt_setTask( citygo[j][5],10) --ÉèÖÃĞÅÊ¹ÈÎÎñµÄ²½Öè
		local name = GetName()
		Talk(1,"","Ng­¬i NhËn ®­îc tõ "..citygo[j][3].." ®Õn "..citygo[j][4].."nhiÖm vô tİn sø ®Æc biÖt,"..citygo[j][3].." DŞch Tr¹m, DŞch Quan tíi cung tiÔn "..name.." ®¹i nh©n!")		
		return 10
	end
end


---------------------------------------------------Éı¼¶ĞÅÊ¹³ÆºÅ----------------------------------------------------------------------
function messenger_getlevel()
	local Uworld3000 = nt_getTask(3000)
	local Uworld1206 = nt_getTask(1206)
	local messenger_reallevelname = ""
	if ( Uworld1206 == 1 ) then
		messenger_reallevelname = "Méc bµi tİn sø "
	elseif ( Uworld1206 == 2 ) then
		messenger_reallevelname = "§ång bµi tİn sø "
	elseif ( Uworld1206 == 3 ) then
		messenger_reallevelname = "Ng©n bµi tİn sø "
	elseif ( Uworld1206 == 4 ) then
		messenger_reallevelname = "Kim bµi tİn sø "
	elseif ( Uworld1206 == 5 ) then
		messenger_reallevelname = "Ngù tø kim bµi tİn sø "
	else	
		messenger_reallevelname = "Kh«ng cã bÊt k× tİn sø nµo"
	end 
	Describe(DescLink_YiGuan.."Ngµi tr­íc m¾t lµ "..messenger_reallevelname.." , ngµi tİch lòy ®iÓm tİn sø v× "..Uworld3000.." ®iÓm, ngµi muèn th¨ng cÊp lµm lo¹i nµo tİn sø khiÕn cho ®©y",6,
		"Méc bµi tİn sø [50 §iÓm]/messenger_levelmu",
		"§ång bµi tİn sø [150 §iÓm]/messenger_leveltong",
		"Ng©n bµi tİn sø [450 §iÓm]/messenger_levelyin",
		"Kim bµi tİn sø [800 §iÓm]/messenger_leveljin",
		"Ngù tø kim bµi tİn sø [1500 §iÓm]/messenger_levelyuci",
		"Ta ch¼ng qua lµ tïy tiÖn xem mét chót/no")
end

function messenger_levelmu()
	local Uworld3000 = nt_getTask(3000)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld3000 >= 50 ) then

		if ( Uworld1206 < 1 ) then
			nt_setTask(1206,1)
			nt_setTask(3000,Uworld3000-50)
			Describe(DescLink_YiGuan..": Chóc mõng "..name.." ®¹i nh©n trë thµnh tİn sø cho - méc !",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 1 ) then
			Describe(DescLink_YiGuan..":"..name.."! Ng­¬i ®· lµ tİn sø - méc, kh«ng cÇn th¨ng cÊp , xin cè g¾ng!",1,"KÕt thóc ®èi tho¹i/no")		
		else
			Describe(DescLink_YiGuan..":"..name.."! CÊp bËc cña ng­¬i v­ît qua tİn sø - méc , xin/mêi lùa chän nh÷ng kh¸c tin/th¬ khiÕn cho.",2,"Trë vÒ/messenger_getlevel","KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":ThËt xin lçi ! Ng­¬i kh«ng phï hîp th¨ng cÊp tİn sø - méc ®ñ ®iÒu kiÖn, xin cè g¾ng, c¸m ¬n !!",2,"Trë vÒ/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_leveltong()
	local Uworld3000 = nt_getTask(3000)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld3000 >= 150 )  then
		if ( Uworld1206 < 2 ) then
			nt_setTask(1206,2)
			nt_setTask(3000,Uworld3000-150)
			Describe(DescLink_YiGuan..": Chóc mõng "..name.." ®¹i nh©n ®· lµ tİn sø - ®ång !!",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 2 ) then
			Describe(DescLink_YiGuan..":"..name.."! Ng­¬i ®· lµ tİn sø - ®ång, kh«ng cÇn th¨ng cÊp, xin tiÕp tôc cè g¾ng !",1,"KÕt thóc ®èi tho¹i/no")				
		else
			Describe(DescLink_YiGuan..":"..name.."! CÊp bËc cña ng­¬i v­ît qua tİn sø - ®ång, xin mêi lùa chän nh÷ng lo¹i tİn sø kh¸c.",2,"Trë vÒ/messenger_getlevel","KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":ThËt xin lçi ! Ng­¬i kh«ng ®ñ  ®iÒu kiÖn phï hîp th¨ng cÊp tİn sø - ®ång, xin tiÕp tôc cè g¾ng, c¸m ¬n!",2,"Trë vÒ/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_levelyin()
	local Uworld3000 = nt_getTask(3000)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld3000 >= 450 ) then
		if ( Uworld1206 < 3 ) then
			nt_setTask(1206,3)
			nt_setTask(3000,Uworld3000-450)
			Describe(DescLink_YiGuan..": Chóc mõng "..name.." ng­êi cña th¨ng cÊp lµm ng©n tİn sø",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 3 ) then
			Describe(DescLink_YiGuan..":"..name.."! Ng­¬i ®· lµ ng©n tİn sø, kh«ng cÇn th¨ng cÊp, xin tiÕp tôc cè g¾ng !!",1,"KÕt thóc ®èi tho¹i/no")				
		else
			Describe(DescLink_YiGuan..":"..name.."! CÊp bËc cña ng­¬i ®· qua ng©n tİn sø, xin mêi lùa chän nh÷ng tİn sø kh¸c !",2,"Trë vÒ/messenger_getlevel","KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":ThËt xin lçi ! Ng­¬i kh«ng ®ñ ®iÒu kiÖn phï hîp th¨ng cÊp ng©n tİn sø, xin tiÕp tôc cè g¾ng !",2,"Trë vÒ/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_leveljin()
	local Uworld3000 = nt_getTask(3000)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld3000 >= 800 ) then
		if ( Uworld1206 < 4 ) then
			nt_setTask(1206,4)
			nt_setTask(3000,Uworld3000-800)
			Describe(DescLink_YiGuan..": Chóc mõng "..name.." ®¹i nh©n ®· lµ tİn sø - kim !",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 4 ) then
			Describe(DescLink_YiGuan..":"..name.."! Ng­¬i ®· lµ tİn sø - kim, kh«ng cÇn th¨ng cÊp, xin tiÕp tôc cè g¾ng !",1,"KÕt thóc ®èi tho¹i/no")		
		else
			Describe(DescLink_YiGuan..":"..name.."! CÊp bËc cña ng­¬i ®· qua tİn sø - kim, xin mêi lùa chän nh÷ng tİn sø kh¸c !",2,"Trë vÒ/messenger_getlevel","KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":ThËt xin lçi ! Ng­¬i kh«ng ®ñ ®iÒu kiÖn phï hîp th¨ng cÊp tİn sø - kim, xin tiÕp tôc cè g¾ng !",2,"Trë vÒ/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_levelyuci()
	local Uworld3000 = nt_getTask(3000)
	local Uworld1206 = nt_getTask(1206)
	local name = GetName()
	if ( Uworld3000 >= 1500 ) then
		if ( Uworld1206 < 5 ) then
			nt_setTask(1206,5)
			nt_setTask(3000,Uworld3000-1500)
			Describe(DescLink_YiGuan..": Chóc mõng "..name.." ®¹i nh©n th¨ng cÊp vi ngù tø tİn sø  yªu bµi!",1,"KÕt thóc ®èi tho¹i/no")
		elseif ( Uworld1206 == 5 ) then
			Describe(DescLink_YiGuan..":"..name.."Ng­¬i ®· lµ ngù tø tİn sø  yªu bµi, kh«ng cÇn th¨ng cÊp, xin tiÕp tôc cè g¾ng!",1,"KÕt thóc ®èi tho¹i/no")				
		end
	else
		Describe(DescLink_YiGuan..":ThËt xin lçi ! Ng­¬i kh«ng ®ñ ®iÒu kiÖn phï hîp th¨ng cÊp ngù tø tİn sø  yªu bµi, xin tiÕp tôc cè g¾ng !",2,"Trë vÒ/messenger_getlevel","KÕt thóc ®èi tho¹i/no")
	end
end

--------------------------------------------½»ĞÅÊ¹ÈÎÎñ------------------------------------------------------
function messenger_finishtask()
	local Uworld1201= nt_getTask(1201)	--ËÍĞÅÈÎÎñ·çÖ®ÆïÈÎÎñ±äÁ¿
	local Uworld1202= nt_getTask(1202)	--ËÍĞÅÈÎÎñÉ½ÉñÃíÈÎÎñ±äÁ¿
	local Uworld1203= nt_getTask(1203)	--ËÍĞÅÈÎÎñÇ§±¦¿âÈÎÎñ±äÁ¿
	local Uworld1204= nt_getTask(1204)	--ËÍĞÅÈÎÎñËùµ½µØ §iÓmÈÎÎñ±äÁ¿
	local Uworld3000= nt_getTask(3000)	--ĞÅÊ¹»ı·Ö
	local Uworld1206= nt_getTask(1206)	--ĞÅÊ¹³ÆºÅ
	local Uworld1208= nt_getTask(1208)	--·çÖ®ÆïÉ±¹Ö¼ÇÊıÆ÷
	local Uworld1209= nt_getTask(1209)	--É½ÉñÃíÉ±¹Ö¼ÇÊıÆ÷
	local Uworld1210= nt_getTask(1210)	--Ç§±¦¿âÉ±¹Ö¼ÇÊıÆ÷
	local Uworld1218= nt_getTask(1218)  --ĞÅÊ¹ÈÎÎñÍê³É´ÎÊı¼ÇÊıÆ÷

	if ( Uworld1201 == 30 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan.."ThËt xin lçi, ng­¬i kh«ng cã ë hoµn thµnh tİn s­ tíi nhËn lÊy phÇn th­ëng, nhiÖm vô nµy xem thÊt b¹i !",1,"KÕt thóc ®èi tho¹i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan.."Chóc mõng ngµi ®· hoµn thµnh nhiÖm vô hiÖn t¹i !",1,"NhËn lÊy phÇn th­ëng/messenger_flyprize")
		end
	elseif ( Uworld1202 == 30 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan.."ThËt xin lçi, ng­¬i kh«ng cã ë hoµn thµnh tİn s­ tíi nhËn lÊy phÇn th­ëng, nhiÖm vô nµy xem thÊt b¹i ",1,"KÕt thóc ®èi tho¹i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan.."Chóc mõng ngµi ®· hoµn thµnh nhiÖm vô hiÖn t¹i",1,"NhËn lÊy phÇn th­ëng/messenger_templeprize")
		end
	elseif ( Uworld1203 == 30 or Uworld1203 == 25 ) then
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan..":ThËt xin lçi, ng­¬i kh«ng cã ë hoµn thµnh tİn s­ tíi nhËn lÊy phÇn th­ëng, nhiÖm vô nµy xem thÊt b¹i!",1,"KÕt thóc ®èi tho¹i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan..": Chóc mõng ngµi ®· hoµn thµnh nhiÖm vô hiÖn t¹i",1,"NhËn lÊy phÇn th­ëng/messenger_treasureprize")
		end
	elseif ( Uworld1201 == 25 ) or ( Uworld1202 == 25 ) or ( Uworld1203 == 25 ) then   --Íê³ÉÁË¼òµ¥ĞÅÊ¹ÈÎÎñ
		if ( messenger_gettime() == 10 ) then
			Describe(DescLink_YiGuan.."ThËt xin lçi, ng­¬i kh«ng cã ë hoµn thµnh tİn s­ tíi nhËn lÊy phÇn th­ëng, nhiÖm vô nµy xem thÊt b¹i",1,"KÕt thóc ®èi tho¹i/no")
		else
			nt_setTask(1218,Uworld1218+1)
			Describe(DescLink_YiGuan.." Chóc mõng ngµi ®· hoµn thµnh nhiÖm vô hiÖn t¹i",1,"NhËn lÊy phÇn th­ëng/messenger_simpleprize")	
		end
	elseif ( Uworld1201 ~= 0 or Uworld1202 ~= 0 or Uworld1203 ~= 0 ) then
		Describe(DescLink_YiGuan..": NhiÖm vô tİn sø cña ngµi ch­a hoµn thµnh, xin h·y tiÕp tôc cè g¾ng",1,"KÕt thóc ®èi tho¹i/no")
	elseif Uworld1203 ~= 0 then
		Describe(DescLink_YiGuan..": ThËt xin lçi, ng­¬i cßn ch­a hoµn thµnh nhiÖm vô. Bªn c¹nh ta cã l·o phu xe cã thÓ gióp ng­¬i ®Õn nhiÖm vô b¶n ®å !",1,"KÕt thóc ®èi tho¹i/no")
	else
		Describe(DescLink_YiGuan..": Kh«ng tiÕp nhËn vô, ng­¬i cßn tíi hñy nhiÖm vô ! ng­¬i tíi, ®em ng­êi nÇy cho ta lµm thµnh thŞt ng­êi b¸nh bao !",1,"KÕt thóc ®èi tho¹i/no")
	end
end

function messenger_flyprize() -----Phong Kú
	Ladder_NewLadder(10187, GetName(),nt_getTask(3000),1);
	local Uworld1207 = nt_getTask(1207)
	local i = random(1,5)
	AddRepute(i)
	Msg2Player("Chóc mõng ng­¬i thu ®­îc "..i.." ®iÓm danh väng. ")
	SetTask(5749,GetTask(5749)+1)
	PhanThuong_TinSu()
	if ( nt_getTask(1224) ~= 1 ) then
		if ( GetLevel()>=60 and GetLevel()<=89 ) then
			if ( nt_getTask(1223) >= 150 ) then
				messenger_giveplayerexp(1000000)
			end
		elseif ( GetLevel()>=90 and GetLevel()<=119 ) then
			if ( nt_getTask(1223) >= 200 ) then
				messenger_giveplayerexp(2000000)
			end			
		elseif ( GetLevel()>=120 and GetLevel()<=129 ) then
			if ( nt_getTask(1223) >= 300 ) then
				messenger_giveplayerexp(3000000)
			end		
		elseif ( GetLevel()>=130 ) then
			if ( nt_getTask(1223) >= 600 ) then
				messenger_giveplayerexp(5000000)
			end		
		end
	end
	
	nt_setTask(1201,0)	--ËÍĞÅÈÎÎñ·çÖ®ÆïÈÎÎñ±äÁ¿
	nt_setTask(1204,0)	--ËÍĞÅÈÎÎñËùµ½µØ §iÓmÈÎÎñ±äÁ¿
	nt_setTask(1207,0)	--ËÍĞÅÈÎÎñµ±Ç°É±¹Ö¼ÇÊı
	nt_setTask(1211,0)
end

function messenger_templeprize() --------Son Than Mieu
 	Ladder_NewLadder(10187, GetName(),nt_getTask(3000),1);
	local Uworld1207 = nt_getTask(1207)
	local i = random(1,5)
	AddRepute(i)
	Msg2Player("Chóc mõng ng­¬i thu ®­îc "..i.." ®iÓm danh väng. ")
	SetTask(5749,GetTask(5749)+1)
	PhanThuong_TinSu()
	if ( nt_getTask(1224) ~= 1 ) then
		if ( GetLevel()>=60 and GetLevel()<=89 ) then
			if ( nt_getTask(1223) >= 150 ) then
				messenger_giveplayerexp(1000000)
			end
		elseif ( GetLevel()>=90 and GetLevel()<=119 ) then
			if ( nt_getTask(1223) >= 200 ) then
				messenger_giveplayerexp(2000000)	
			end			
		elseif ( GetLevel()>=120 and GetLevel()<=129 ) then
			if ( nt_getTask(1223) >= 300 ) then
				messenger_giveplayerexp(3000000)			
			end		
		elseif ( GetLevel()>=130 ) then
			if ( nt_getTask(1223) >= 600 ) then
				messenger_giveplayerexp(5000000)				
			end		
		end
	end
	
	nt_setTask(1202,0)	--ËÍĞÅÈÎÎñÉ½ÉñÃíÈÎÎñ±äÁ¿
	nt_setTask(1204,0)	--ËÍĞÅÈÎÎñËùµ½µØ §iÓmÈÎÎñ±äÁ¿
	nt_setTask(1207,0)	--ËÍĞÅÈÎÎñµ±Ç°É±¹Ö¼ÇÊı
	nt_setTask(1211,0)
end

function messenger_treasureprize()
  local nTaskFlag = check_daily_task_count()--¼ì²é»¹ÓĞÃ»ÓĞÈÎÎñ»ú»á
  if nTaskFlag == 0 then
  	Describe(DescLink_YiGuan..": ThËt xin lçi, h«m nay ng­¬i ®· rÊt mÖt mái. Ngµy mai trë l¹i ®æi nhiÖm vô ®i",1,"KÕt thóc ®èi tho¹i/no")
  	return
  elseif nTaskFlag == -1 then
  	Describe(DescLink_YiGuan..": Ng­¬i cã ph¶i hay kh«ng cÇm <color=yellow> thiªn b¶o khè lªnh <color> bŞ mÊt ? T×m vÒ lÖnh bµi míi cã thÓ cho ng­¬i nhËn th­ëng",1,"KÕt thóc ®èi tho¹i/no")
  	return
  end
  
  --¼ì²é±³°ü¿Õ¼ä
  local nTodayTaskCount = GetTask(5749)
  local nBagCellNeed = 1
  if nTodayTaskCount == 0 then
  	nBagCellNeed = 2
  end
  if (CalcFreeItemCellCount() < nBagCellNeed) then
		Talk(1, "", format("<#>Hµnh trang cña ng­¬i ch­a ®ñ chç trèng, xin s¾p xÕp l¹i trang bŞ l­u l¹i %d chç trèng, sau ®ã tíi nhËn th­ëng",nBagCellNeed))
		return
	end
	local n_level = GetLevel();
	G_ACTIVITY:OnMessage("FinishMail", 1, n_level);	
	--¿Û³ıÇ§±¦¿âÁî
	if nTaskFlag == 2 then
	--Fix bug ²»ÄÜÔÚ°ï»áÏä×ÓÄÚ¿Û³ıÇ§±¦¿âÁî- Modifiec by DinhHQ - 20110502
	    	if ConsumeEquiproomItem(1, 6, 1, 2813, -1) == 1 then--¿Û³ıÇ§±¦¿âÁî
	    		Msg2Player("Ng­¬i ®· nép lªn thiªn b¶o khè lÖnh")
	    	else
	    		Talk(1, "", "Ng­¬i thiªn b¶o khè lªnh ®i n¬i nµo, thÕ nµo ta kh«ng thÊy?")
	    		return
	    	end
    end
    
   	
	nt_setTask(1201,0)	--
	nt_setTask(1202,0)
	nt_setTask(1203,0)
	nt_setTask(1204,0)
	
	nTodayTaskCount = GetTask(5749)--»ñÈ¡½»ÈÎÎñºóµÄ¼ÆÊıÖµ
	WriteLog(format("Account:%s[Name:%s] NhËn lÊy phÇn th­ëng nhiÖm vô tİn sø, h«m nay ®· hoµn thµnh [%d] lÇn.",
			GetAccount(),
			GetName(),
			nTodayTaskCount
			)
		);
		
------------------------------PhÇn Th­ëng Kim Bµi Tİn Sø-------------------------------
	SetTask(5749,GetTask(5749)+1)
	PhanThuong_TinSu()
-------------------------------------------------------------
end

function messenger_simpleprize()

	Ladder_NewLadder(10187, GetName(),nt_getTask(3000),1);
	local i = random(1,5)
	AddRepute(i)
	Msg2Player("Chóc mõng ng­¬i thu ®­îc "..i.." ®iÓm danh väng.")
	nt_setTask(1201,0)	
	nt_setTask(1202,0)	
	nt_setTask(1203,0)	
	nt_setTask(1204,0)
	nt_setTask(1207,0)
	nt_setTask(1211,0)		
end

--------------------------------------------»ı·Ö»»½±Àø-----------------------------------------------------
function messenger_duihuanprize()
	Describe(DescLink_YiGuan..": PhÇn th­ëng bao gåm : tİn sø yªu bµi cïng trang bŞ hoµng kim. Yªu bµi cã thÓ gia t¨ng nh©n vËt kh¸ng tİnh, hoµng kim trang bŞ cã thÓ gia t¨ng kinh nghiÖm. Ng­¬i nghÜ chän lo¹i nµo ?",3,
		"§æi Tİn sø  yªu bµi/messenger_prize_yaopai",
		-- "Trang BŞ Hoµng Kim/messenger_prize_huangjin",
		--"§ång b¹n t­¬ng quan/messenger_prize_partner",
		--"Nh÷ng vËt phÈm kh¸c/messenger_prize_other",
		"§Ó ta suy nghÜ l¹i!/no")
end

function messenger_prize_partner()
	Describe(DescLink_YiGuan..": Thñ lÜnh Long N¨m míi võa mang vÒ mét İt <color=red> thÇn bİ ®ång hµnh mÆt n¹ <color>, ng­¬i nghÜ dïng thö sao?",5,
		"§ång hµnh kü n¨ng/no",
--		"§ång hµnh mÆt n¹/messenger_prize_mianju",
		"§ång hµnh vËt phÈm/no",
		"Trë vÒ/messenger_duihuanprize",
		"§Ó ta suy nghÜ l¹i!/no")
end

function messenger_prize_mianju()
	Describe(DescLink_YiGuan..": MÆt n¹ cã 2 lo¹i chİnh ®ã lµ MÆt N¹ ¸o Dµi vµ mÆt n¹ TruyÒn Thèng?",3,
	"§æi mÆt n¹ ¸o Dµi/matnaaodai",
	"§æi mÆt n¹ TruyÒn Thèng/matnatruyenthong",
--	"Trë vÒ/messenger_prize_partner",
	"KÕt thóc ®èi tho¹i !/no")
end

function prize_mianju_shi()
	Describe(DescLink_YiGuan..": Ng­¬i nghÜ ®æi mÆt n¹ (10 lÇn) thiÕu niªn vâ sÜ l«i kiÕm cßn lµ thanh niªn vâ sÜ l«i kiÕm ? thÊy râ rµng liÔu sao ??",4,
	"§æi mÆt n¹ thiÕu niªn vâ sÜ /prize_mianju_shi_shaonian", 
        "§æi mÆt n¹ thanh niªn vò /prize_mianju_shi_qingnian", 
        "Trë vÒ /messenger_prize_mianju", 
        "T¹m thêi kh«ng thÓ ®æi !/no")
end

function prize_mianju_shi_shaonian()
	Describe(DescLink_YiGuan..": b¾t ®Çu ®æi !",7, 
       "MÆt n¹ (10 lÇn ) - thiÕu niªn l«i kiÕm [40000 phót ]/prize_mianju_shi_shaolin_leijian", 
       "MÆt n¹ (10 lÇn ) - thiÕu niªn c­êi s­¬ng [40000 phót ]/prize_mianju_shi_shaolin_xiaoshuang", 
       "MÆt n¹ (10 lÇn ) - ngµn n¨m löa nhÉn [40000 phót ]/prize_mianju_shi_shaolin_huoren", 
       "MÆt n¹ (10 lÇn ) - thiÕu niªn h¶i ®­êng [40000 phót ]/prize_mianju_shi_shaolin_haitang", 
       "MÆt n¹ (10 lÇn ) - thiÕu niªn kim phong [40000 phót ]/prize_mianju_shi_shaolin_jinfeng", 
       "Trë vÒ /prize_mianju_shi", 
       "T¹m thêi kh«ng thÓ ®æi !/no")
end

function prize_mianju_shi_qingnian()
	Describe(DescLink_YiGuan..": b¾t ®Çu ®æi !",7, 
        "MÆt n¹ (10 lÇn ) - thanh niªn l«i kiÕm [40000 phót ]/prize_mianju_shi_qinglin_leijian", 
        "MÆt n¹ (10 lÇn ) - thanh niªn c­êi s­¬ng [40000 phót ]/prize_mianju_shi_qinglin_xiaoshuang", 
        "MÆt n¹ (10 lÇn ) - thanh niªn löa nhÉn [40000 phót ]/prize_mianju_shi_qinglin_huoren", 
        "MÆt n¹ (10 lÇn ) - thanh niªn h¶i ®­êng [40000 phót ]/prize_mianju_shi_qinglin_haitang", 
        "MÆt n¹ (10 lÇn ) - thanh niªn kim phong [40000 phót ]/prize_mianju_shi_qinglin_jinfeng", 
        "Trë vÒ /prize_mianju_shi", 
        "T¹m thêi kh«ng  thÓ ®æi!/no")
end

function prize_mianju_shi_qinglin_leijian()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,112,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 ®ång hµnh mÆt n¹.")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_qinglin_xiaoshuang()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,113,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("B¹n nhËn ®­îc mét mÆt n¹ th©n thiÖn")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_qinglin_huoren()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,114,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 ®ång hµnh mÆt n¹")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_qinglin_haitang()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,115,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 ®ång hµnh mÆt n¹")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_qinglin_jinfeng()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,116,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 ®ång hµnh mÆt n¹")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_leijian()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,102,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 ®ång hµnh mÆt n¹")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_xiaoshuang()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,103,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 ®ång hµnh mÆt n¹")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_huoren()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,104,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 ®ång hµnh mÆt n¹")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_haitang()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,105,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 ®ång hµnh mÆt n¹")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_shi_shaolin_jinfeng()
	if ( nt_getTask(3000) >= 40000 ) then
		AddItem(0,11,106,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 40000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 ®ång hµnh mÆt n¹")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm ng­¬i tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan()
	Describe(DescLink_YiGuan..": Ng­¬i nghÜ ®æi mÆt n¹ (1 lÇn ) thiÕu niªn vâ sÜ l«i kiÕm cßn lµ thanh niªn vâ sÜ l«i kiÕm ? thÊy râ rµng nhËn sao?",4,
	"§æi mÆt n¹ thiÕu niªn vâ sÜ /prize_mianju_dan_shaonian", 
        "§æi mÆt n¹ thanh niªn Vâ sÜ/prize_mianju_dan_qingnian", 
        "Trë vÒ /messenger_prize_mianju", 
        "T¹m thêi kh«ng thÓ ®æi !/no")
end

function prize_mianju_dan_qingnian()
	Describe(DescLink_YiGuan..": b¾t ®Çu ®æi.",7, 
        "MÆt n¹ (1 lÇn ) - thanh niªn l«i kiÕm [10000 phót ]/prize_mianju_dan_qinglin_leijian", 
        "MÆt n¹ (1 lÇn ) - thanh niªn c­êi s­¬ng [10000 phót ]/prize_mianju_dan_qinglin_xiaoshuang", 
        "MÆt n¹ (1 lÇn ) - thanh niªn löa nhÉn [10000 phót ]/prize_mianju_dan_qinglin_huoren", 
        "MÆt n¹ (1 lÇn ) - thanh niªn h¶i ®­êng [10000 phót ]/prize_mianju_dan_qinglin_haitang", 
        "MÆt n¹ (1 lÇn ) - thanh niªn kim phong [10000 phót ]/prize_mianju_dan_qinglin_jinfeng", 
        "Trë vÒ /prize_mianju_dan", 
        "T¹m thêi kh«ng thÓ ®æi !/no")
end

function prize_mianju_dan_shaonian()
	Describe(DescLink_YiGuan..": b¾t ®Çu ®æi.",7, 
        "MÆt n¹ (1 lÇn ) - thiÕu niªn l«i kiÕm [10000 phót ]/prize_mianju_dan_shaolin_leijian", 
        "MÆt n¹ (1 lÇn ) - thiÕu niªn c­êi s­¬ng [10000 phót ]/prize_mianju_dan_shaolin_xiaoshuang", 
        "MÆt n¹ (1 lÇn ) - ngµn n¨m löa nhÉn [10000 phót ]/prize_mianju_dan_shaolin_huoren", 
        "MÆt n¹ (1 lÇn ) - ngµn n¨m h¶i ®­êng [10000 phót ]/prize_mianju_dan_shaolin_haitang", 
        "MÆt n¹ (1 lÇn ) - ngµn n¨m kim phong [10000 phót ]/prize_mianju_dan_shaolin_jinfeng", 
        "Trë vÒ /prize_mianju_dan", 
        "T¹m thêi kh«ng thÓ ®æi !/no")
end

function prize_mianju_dan_shaolin_leijian()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,97,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_shaolin_xiaoshuang()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,98,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_shaolin_huoren()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,99,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_shaolin_haitang()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,100,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_shaolin_jinfeng()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,101,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_leijian()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,107,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_xiaoshuang()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,108,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_huoren()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,109,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_haitang()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,110,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_mianju_dan_qinglin_jinfeng()
	if ( nt_getTask(3000) >= 10000 ) then
		AddItem(0,11,111,0,0,0,0)
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 mÆt n¹ ®ång hµnh")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end


function messenger_prize_yaopai()
	Describe(DescLink_YiGuan..": Tİn sø yªu bµi cïng Ng­¬i NhËn tíi tİn sø cho danh hiÖu t­¬ng ®èi øng. Tû nh­ ng­¬i lµ kim tİn sø, ®em cã thÓ ®æi bÊt kú tİn sø, nÕu nh­ ng­¬i lµ méc tİn sø, th× kh«ng thÓ ®æi kim tİn sø. HiÓu kh«ng ? b¾t ®Çu ®æi ®i . .",7, 
        "Tİn sø lÖnh - méc [50 ®iÓm ]/prize_yaopai_mu", 
        "Tİn sø lÖnh - ®ång [150 ®iÓm ]/prize_yaopai_tong", 
        "Tİn sø lÖnh - ng©n [450 ®iÓm ]/prize_yaopai_yin", 
        "Tİn sø  lÖnh bµi [800 ®iÓm ]/prize_yaopai_jin", 
        "Ngù tø lÖnh bµi - kim [1500 ®iÓm ]/prize_yaopai_yuci", 
        "Trë vÒ /messenger_duihuanprize", 
        "T¹m thêi kh«ng thÓ ®æi !/no")
end

function prize_yaopai_mu()
	if ( nt_getTask(3000) >= 50 ) then
		AddItem(6,1,885,1,0,0)
		local Uworld3000 = nt_getTask(3000) - 50
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc tİn sø - méc.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1<color=yellow> Tİn Sø Méc.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! Ng­¬i kh«ng ®ñ ®iÓm tİch lòy.",1,"KÕt thóc! /no")
	end 
end

function prize_yaopai_tong()
	if ( nt_getTask(3000) >= 150 ) then
		AddItem(6,1,886,2,0,0)
		local Uworld3000 = nt_getTask(3000) - 150
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc tİn sø - ®ång.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1<color=yellow> Tİn Sø §ång.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! Ng­¬i kh«ng ®ñ ®iÓm tİch lòy.",1,"KÕt thóc! /no")
	end 
end

function prize_yaopai_yin()
	if ( nt_getTask(3000) >= 450 ) then
		AddItem(6,1,887,3,0,0)
		local Uworld3000 = nt_getTask(3000) - 450
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc tİn sø - ng©n.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1<color=yellow> Tİn Sø Ng©n Bµi.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! Ng­¬i kh«ng ®ñ ®iÓm tİch lòy.",1,"KÕt thóc! /no")
	end
end

function prize_yaopai_jin()
	if ( nt_getTask(3000) >= 800 ) then
		AddItem(6,1,888,4,0,0)
		local Uworld3000 = nt_getTask(3000) - 800
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc tİn sø - kim.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1<color=yellow> Tİn Sø Kim Bµi.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! Ng­¬i kh«ng ®ñ ®iÓm tİch lòy.",1,"KÕt thóc! /no")
	end 
end

function prize_yaopai_yuci()
	if ( nt_getTask(3000) >= 1500 ) then
		AddItem(6,1,889,5,0,0)
		local Uworld3000 = nt_getTask(3000) - 1500
		nt_setTask(3000,Uworld3000)
		Msg2Player("Ng­¬i NhËn ®­îc 1 tİn sø lÖnh bµi")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1<color=yellow> Tİn Sø LÖnh Bµi.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! Ng­¬i kh«ng ®ñ ®iÓm tİch lòy.",1,"KÕt thóc! /no")
	end 
end

function messenger_prize_huangjin()
	Describe(DescLink_YiGuan..": TriÒu ®×nh muèn nhËn th­ëng ng­¬i, cho nªn cho ng­¬i chuÈn bŞ mét bé trang bŞ hoµng kim, khi ng­¬i giÕt ®Şch lóc ®em ®¹t ®­îc gÊp ®«i kinh nghiÖm. Ng­¬i nghÜ ®æi c¸i ®ã ?",8, 
        "Hång ¶nh trÇm viªn v·n tóy [5000 ®iÓm]/prize_huangjin_shenyuan", 
        "Hång ¶nh kiÕm qu¶i t©y ph­¬ng [5000 ®iÓm]/prize_huangjin_guajian", 
        "Hång ¶nh môc tóc t­¬ng vong [5000 ®iÓm]/prize_huangjin_muxu", 
        "Hång ¶nh hång tô chiªu [5000 ®iÓm]/prize_huangjin_hongxiu", 
        "§éng S¸t B¹ch Kim §iªu Long Giíi [5000 ®iÓm]/dongsat1", 
        "§éng S¸t B¹ch Ngäc Cµn Kh«n Béi [5000 ®iÓm]/dongsat2", 
        "§éng S¸t B¹ch Kim Tó Phông Giíi [5000 ®iÓm]/dongsat3", 
        "§éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn [5000 ®iÓm]/dongsat4", 		
        "Trë vÒ/messenger_duihuanprize", 
        "T¹m thêi kh«ng ®æi /no")
end


function messenger_prize_other()
	Describe(DescLink_YiGuan..": TriÒu ®×nh cã rÊt nhiÒu nhËn th­ëng, tr­íc m¾t ng­¬i vËt phÈm cã thÓ ®æi :",3, 
       "ThÇn bİ ®¹i hång bao [2000 phót]/prize_other_hongbao", 
       "Trë vÒ/messenger_duihuanprize", 
       "T¹m thêi kh«ng ®æi /no")
end

function prize_other_hongbao()
	if ( nt_getTask(3000) >= 2000 ) then
		local Uworld3000 = nt_getTask(3000) - 2000 
		nt_setTask(3000,Uworld3000)
		AddItem(6,1,402,0,0,0)
		Msg2Player("Ng­¬i ®· ®æi 1 thÇn bİ ®¹i hång bao.")
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_huangjin_shenyuan()
	local nNam = tonumber(GetLocalDate("%Y")); 
	local nThang = tonumber(GetLocalDate("%m")); 
	local nNgay = tonumber(GetLocalDate("%d")); 
	if ( nt_getTask(3000) >= 10000 ) then
	local honganh = 
		{
		{szName="<color=yellow>Hång ¶nh ThÈm Viªn UyÓn", nQuality=1, tbProp={0, 430}, nExpiredTime = 43200},		
		}
	
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		tbAwardTemplet:GiveAwardByList(honganh, "B¹n NhËn ®­îc phÇn th­ëng tõ ho¹t ®éng Tİn Sø");			
		Msg2Player("Ng­¬i NhËn ®­¬c 1 trang bŞ hoµng kim hång ¶nh.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1 trang bŞ <color=yellow>Hång ¶nh ThÈm Viªn UyÓn.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end


function prize_huangjin_guajian()
	local nNam = tonumber(GetLocalDate("%Y")); 
	local nThang = tonumber(GetLocalDate("%m")); 
	local nNgay = tonumber(GetLocalDate("%d")); 
	if ( nt_getTask(3000) >= 10000 ) then
	local honganh = 
		{
		{szName="<color=yellow>Hång ¶nh KiÕm Bµi", nQuality=1, tbProp={0, 431}, nExpiredTime = 43200},
		}
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		tbAwardTemplet:GiveAwardByList(honganh, "B¹n NhËn ®­îc phÇn th­ëng tõ ho¹t ®éng Tİn Sø");	
		Msg2Player("Ng­¬i NhËn ®­¬c 1 trang bŞ hoµng kim hång ¶nh.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1 trang bŞ <color=yellow>Hång ¶nh KiÕm Bµi.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_huangjin_muxu()
	local nNam = tonumber(GetLocalDate("%Y")); 
	local nThang = tonumber(GetLocalDate("%m")); 
	local nNgay = tonumber(GetLocalDate("%d")); 
	if ( nt_getTask(3000) >= 10000 ) then
	local honganh = 
		{
		{szName="<color=yellow>Hång ¶nh Môc Tóc", nQuality=1, tbProp={0, 432}, nExpiredTime = 43200},
		}
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		tbAwardTemplet:GiveAwardByList(honganh, "B¹n NhËn ®­îc phÇn th­ëng tõ ho¹t ®éng Tİn Sø");			
		Msg2Player("Ng­¬i NhËn ®­¬c 1 trang bŞ hoµng kim hång ¶nh.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1 trang bŞ <color=yellow>Hång ¶nh Môc Tóc.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end

function prize_huangjin_hongxiu()
	local nNam = tonumber(GetLocalDate("%Y")); 
	local nThang = tonumber(GetLocalDate("%m")); 
	local nNgay = tonumber(GetLocalDate("%d")); 
	if ( nt_getTask(3000) >= 10000 ) then
	local honganh = 
		{
		{szName="<color=yellow>Hång ¶nh Tô Chiªu", nQuality=1, tbProp={0, 433}, nExpiredTime = 43200},
		}
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		tbAwardTemplet:GiveAwardByList(honganh, "B¹n NhËn ®­îc phÇn th­ëng tõ ho¹t ®éng Tİn Sø");		
		Msg2Player("Ng­¬i NhËn ®­¬c 1 trang bŞ hoµng kim hång ¶nh.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1 trang bŞ <color=yellow>Hång ¶nh Tô Chiªu.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end
function dongsat1()
	local nNam = tonumber(GetLocalDate("%Y")); 
	local nThang = tonumber(GetLocalDate("%m")); 
	local nNgay = tonumber(GetLocalDate("%d")); 
	if ( nt_getTask(3000) >= 10000 ) then
	local honganh = 
		{
		{szName="<color=yellow>§éng S¸t B¹ch Kim §iªu Long Giíi", nQuality=1, tbProp={0, 494}, nExpiredTime = 43200},
		}
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		tbAwardTemplet:GiveAwardByList(honganh, "B¹n NhËn ®­îc phÇn th­ëng tõ ho¹t ®éng Tİn Sø");		
		Msg2Player("Ng­¬i NhËn ®­¬c 1 trang bŞ hoµng kim hång ¶nh.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1 trang bŞ <color=yellow>§éng S¸t B¹ch Kim §iªu Long Giíi.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end
function dongsat2()
	local nNam = tonumber(GetLocalDate("%Y")); 
	local nThang = tonumber(GetLocalDate("%m")); 
	local nNgay = tonumber(GetLocalDate("%d")); 
	if ( nt_getTask(3000) >= 10000 ) then
	local honganh = 
		{
		{szName="<color=yellow>§éng S¸t B¹ch Ngäc Cµn Kh«n Béi", nQuality=1, tbProp={0, 495}, nExpiredTime = 43200},
		}
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		tbAwardTemplet:GiveAwardByList(honganh, "B¹n NhËn ®­îc phÇn th­ëng tõ ho¹t ®éng Tİn Sø");		
		Msg2Player("Ng­¬i NhËn ®­¬c 1 trang bŞ hoµng kim hång ¶nh.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1 trang bŞ <color=yellow>§éng S¸t B¹ch Ngäc Cµn Kh«n Béi.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end
function dongsat3()
	local nNam = tonumber(GetLocalDate("%Y")); 
	local nThang = tonumber(GetLocalDate("%m")); 
	local nNgay = tonumber(GetLocalDate("%d")); 
	if ( nt_getTask(3000) >= 10000 ) then
	local honganh = 
		{
		{szName="<color=yellow>§éng S¸t B¹ch Kim Tó Phông Giíi", nQuality=1, tbProp={0, 496}, nExpiredTime = 43200},
		}
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		tbAwardTemplet:GiveAwardByList(honganh, "B¹n NhËn ®­îc phÇn th­ëng tõ ho¹t ®éng Tİn Sø");		
		Msg2Player("Ng­¬i NhËn ®­¬c 1 trang bŞ hoµng kim hång ¶nh.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1 trang bŞ <color=yellow>§éng S¸t B¹ch Kim Tó Phông Giíi.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end
function dongsat4()
	local nNam = tonumber(GetLocalDate("%Y")); 
	local nThang = tonumber(GetLocalDate("%m")); 
	local nNgay = tonumber(GetLocalDate("%d")); 
	if ( nt_getTask(3000) >= 10000 ) then
	local honganh = 
		{
		{szName="<color=yellow>§éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn", nQuality=1, tbProp={0, 497}, nExpiredTime = 43200},
		}
		local Uworld3000 = nt_getTask(3000) - 10000
		nt_setTask(3000,Uworld3000)
		tbAwardTemplet:GiveAwardByList(honganh, "B¹n NhËn ®­îc phÇn th­ëng tõ ho¹t ®éng Tİn Sø");		
		Msg2Player("Ng­¬i NhËn ®­¬c 1 trang bŞ hoµng kim hång ¶nh.")
		Msg2SubWorld("Chóc mõng cao thñ vâ l©m <color=yellow>"..GetName().."<color> <color=red>  ®· nhËn ®­îc 1 trang bŞ <color=yellow>§éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn.")		
	else
		Describe(DescLink_YiGuan..": ThËt xin lçi ! §iÓm tİch lòy kh«ng ®ñ.",1,"KÕt thóc! /no")
	end 
end
-------------------------------------------È¡ÏûĞÅÊ¹ÈÎÎñ----------------------------------------------------
function messenger_losemytask()
	if ( GetTask(1204) == 0 ) then
		Describe(DescLink_YiGuan..": Ng­¬i kh«ng tiÕp nhËn nhiÖm vô tİn sø kh«ng thÓ hñy",1,"KÕt thóc ®èi tho¹i/no")
	else
		Describe(DescLink_YiGuan..": Ng­¬i muèn hñy nhiÖm vô ",2,"Hñy !/messenger_lostall","KÕt thóc ®èi tho¹i!/no")
	end
end
--------------------------------------------½âÊÍÊ²Ã´ÊÇĞÅÊ¹ÈÎÎñ----------------------------------------------
function messenger_what()
	Describe(DescLink_YiGuan..": NhiÖm vô tİn sø lµ trî gióp triÒu ®×nh ®­a tin cho c¸c thµnh phè ®İch dŞch quan nhiÖm vô, bëi v× gÇn nhÊt t¹i triÒu ®×nh xuÊt hiÖn ph¶n tÆc, cho nªn, ë ®­a tin ®İch thêi ®iÓm gÆp ph¶i kh«ng İt nguy hiÓm. Kh«ng cã trİ dòng song toµn ng­êi cïng víi ®oµn kÕt hîp t¸c tinh thÇn ng­êi ®em rÊt khã hoµn thµnh nhiÖm vô. ChØ cã ®¹t tíi <color=red> 120 cÊp trë lªn <color> míi cã thÓ tham gia. Tr­íc m¾t ng­¬i gÆp ®Õn nh­ sau cöa khÈu ®İch trë ng¹i : <color=red> thiªn b¶o kho <color>. ? n¬i nµy chót quan bªn trong , cã v« sè gièng nhau ®Şch nh©n vµ kú qu¸i c¬ quan, ng­¬i cÇn dïng th«ng minh cïng trİ kh«n ®i chİnh x¸c lùa chän . ta chØ cã thÓ chóc ng­¬i thµnh c«ng, cè g¾ng , chiÕn h÷u !!",4, 
       "Giíi thiÖu cÊp bËc b¶n ®å /messenger_levelmap", 
       "Giíi thiÖu phong chi kş quan/messenger_flyhorse", 
       "Giíi thiÖu S¬n thÇn miÕu quan t¹p /messenger_mountaindeity", 
       "Giíi thiÖu thiªn b¶o khè/messenger_storehouse", 
       "Giíi thiÖu tİn sø  yªu bµi/messenger_orderlevel", 
       "Giíi thiÖu nhiÖm vô h¹n lóc/messenger_limittotask", 
       "KÕt thóc ®èi tho¹i /no")
end

function messenger_levelmap()
	Describe(DescLink_YiGuan..": Dùa theo cÊp bËc ng­êi ch¬i, chóng ta ph©n chia ba lo¹i bÊt ®ång c­êng ®é ®İch b¶n ®å cho ngµi. CÊp bËc khu ph©n lµ <color=red>60-89 cÊp, 90-119 cÊp, 120<color> trë lªn ba lo¹i. ",2,"Trë vÒ/messenger_what","KÕt thóc ®èi tho¹i /no")
	--Describe(DescLink_YiGuan..": Tr­íc m¾t chØ cã <color=red> 120 cÊp trë lªn <color> nhiÖm vô tr×nh ®é ",2," trë vÒ /messenger_what"," kÕt thóc ®èi tho¹i /no")
end

function messenger_flyhorse()
	Describe(DescLink_YiGuan..": Phong kş quan bªn trong, ng­¬i cã thÓ kÕ tiÕp ®Õn xuÊt khÈu, nh­ vËy coi nh­ lµ hoµn thµnh nhiÖm vô, nh­ng lµ, chØ t­ëng th­ëng danh väng trŞ gi¸. ? quan bªn trong, chóng ta cã mét İt ®¬n gi¶n nhiÖm vô : däc theo ®­êng ®i, ng­¬i ®em thÊy rÊt nhiÒu qu©n ta l­u l¹i kı hiÖu, ®ång thêi cã rÊt nhiÒu kim quèc gi¸n ®iÖp. Ng­¬i chØ cÇn tiÕp xóc 5 c¸ täa ®é liÒn cã thÓ ®Õn xuÊt khÈu t×m b¹ch dùc t­íng qu©n v­ît qua kiÓm tra. Nh­ng lµ biÓu hiÖn cña ng­¬i ®Òu t¹i ta cöa ph¸i ®i ®İch ®iÒu tra viªn trong m¾t. §èi víi ng­¬i ®İch yªu bµi th¨ng cÊp rÊt cã lîi . .",2,"Trë vÒ /messenger_what","KÕt thóc ®èi tho¹i /no")
end

function messenger_mountaindeity()
	Describe(DescLink_YiGuan..": MiÕu s¬n thÇn quan bªn trong, ng­¬i cã thÓ kÕ tiÕp trùc tiÕp ®Õn ®¹i m«n, nh­ vËy coi xong thµnh nhiÖm vô, nh­ng lµ, chØ t­ëng th­ëng danh väng trŞ gi¸. ? quan bªn trong, chóng ta cã mét İt ®¬n gi¶n nhiÖm vô : ë trong nói xuÊt hiÖn thÇn ®ao doanh kinh s­ ph¶n ®å bän hä ë trong nói ng¨n trë tin/th¬ khiÕn cho. Bän hä ®Çu lÜnh gäi lµ ®ao yªu . ng­¬i chØ cÇn ®¸nh b¹i 2 c¸ ®ao yªu lµ cã thÓ ®Õn lín cöa t×m kia lang khuynh thµnh v­ît qua kiÓm tra. NÕu nh­ hoµn thµnh nhiÖm vô, ®èi víi ng­¬i th¨ng cÊp rÊt cã trî gióp.",2,"Trë vÒ/messenger_what","KÕt thóc ®èi tho¹i /no")
end

function messenger_storehouse()
	Describe(DescLink_YiGuan..": Ng­¬i sèng ng­¬i ®éi tr­ëng nhËn thiªn b¶o kho x«ng quan nhiÖm vô lóc, hÖ thèng ®em ngÉu nhiªn ph©n phèi, ®¹t ®­îc 5 c¸i sè ®Õm , c¨n cø <color-red> dùa theo sè ®Õm trËt tù <color> më ra <color=red> b¶o r­¬ng <color> liÒn cã thÓ x«ng quan. DÜ nhiªn, cÇn më ra b¶o r­¬ng, ng­¬i muèn ®¸nh b¹i <color=red> b¶o r­¬ng bªn c¹nh thiªn b¶o kho ng­êi b¶o vÖ boss<color>. <color=red> Ngò hµnh phï <color> ë kú tr©n c¸c cã b¸n, më ra cã thÓ ®¹t ®­îc rót lui kim phï, rót lui méc phï, rót lui n­íc phï, rót lui löa phï , rót lui ®Êt phï, sø  dông sau cã thÓ gióp ng­¬i dÔ dµng ®¸nh b¹i thiªn b¶o kho ng­êi b¶o vÖ boss",2," Trë vÒ /messenger_what","KÕt thóc ®èi tho¹i /no")
end

function messenger_orderlevel()
	Describe(DescLink_YiGuan..": C¨n cø ng­¬i ë ®©y quan bªn trong ®İch biÓu hiÖn, chóng ta ®em phong cho ng­¬i mét İt quan hµm, ng­¬i ®em ®¹t ®­îc rÊt nhiÒu phÇn th­ëng. Tr­íc m¾t , yªu bµi chia lµm tİn sø lÖnh - méc, tİn sø lÖnh - ®ång, tİn sø lÖnh - ng©n, tİn sø lÖnh - kim cïng víi tİn sø lÖnh - kim. §ång thêi, ng­¬i theo nh­ <color=red>F12<color>, nh×n b¶ng bªn trong <color=red> tİch lòy <color> tİn sø lÖnh cho nhiÖm vô , biÕt m×nh chøc n¨ng vŞ trİ. Ng­¬i cã thÓ dïng tİch ph©n ®æi thñ tİn khiÕn cho danh hiÖu. Sau ®ã, cã thÓ dïng tİn sø lÖnh cho tİch ®iÓm ®æi lÊy lÖnh bµi. Nh÷ng thø nµy yªu bµi ®em gia t¨ng n¨ng lùc <color=red> kh«i phôc <color> ng­¬i, t¸c dông cña nã v× <color=red>1 giê <color>, sø  dông sè lÇn v× <color=red>5 lÇn <color>.",2,"Trë vÒ /messenger_what","KÕt thóc ®èi tho¹i /no")
end

function messenger_limittotask()
	Describe(DescLink_YiGuan..": NhËn nhiÖm vô tİn sø, ng­¬i cã lóc ®ang lóc <color=red>2 giê <color> ®Ó hoµn thµnh. Mçi ngµy lµm nhiÖm vô thêi gian lµ <color=red>2 giê <color>. Chó ı, khi ë quan bªn trong lóc, ng­¬i bŞ giÕt hoÆc lµ tang cöa coi nh­ lµ <color=red> nhiÖm vô thÊt b¹i <color>!",2,"Trë vÒ /messenger_what","KÕt thóc ®èi tho¹i /no")
end

function messenger_giveplayerexp(playerexp)

	local j =random(1,3)

	if ( j == 1 ) then
		tl_addPlayerExp(playerexp-500000)
	elseif ( j == 2 ) then
		tl_addPlayerExp(playerexp)
	elseif ( j == 3 ) then
		tl_addPlayerExp(playerexp+500000)
	end
	Msg2Player("Bëi v× ng­¬i lµm nhiÖm vô tİn sø biÓu hiÖn hoµn h¶o, dŞch tr¹m cho ng­¬i mét kinh nghiÖm nhËn th­ëng!")
	nt_setTask(1224,1)  --ÉèÖÃµ±Ìì½±Àø¿ª¹ØÎª¿ª  
	nt_setTask(1223,0)
end

function messenger_lostall()
	nt_setTask(1201,0)
	nt_setTask(1202,0)
	nt_setTask(1203,0)
	nt_setTask(1204,0)
	nt_setTask(1207,0)
	nt_setTask(1212,0)
	nt_setTask(1213,0)
	nt_setTask(1214,0)
	nt_setTask(1215,0)
	Msg2Player("B¹n bá mét nhiÖm vô tİn sø thµnh c«ng")
	WriteLog(format("Account:%s[Name:%s] Tõ bá nhiÖm vô",
			GetAccount(),
			GetName()
			)
		);
end

function no()
end

function check_daily_task_count()
	local nNormalTaskLimit = 2--Ò»Ìì×î¶µÖ»ÔÊĞíÁ½´ÎÆÕÍ¨ÈÎÎñ
	local nIBTaskLimit = 1--Ò»Ìì×î¶µÖ»ÔÊĞí1´ÎIBÈÎÎñ
	local nTodayCnt = %get_task_daily(12051234)
	if nTodayCnt < nNormalTaskLimit then
		return 1--»¹ÓĞÆÕÍ¨ÈÎÎñ»ú»á
	elseif  nTodayCnt < (nNormalTaskLimit + nIBTaskLimit) then
		local nCountIb = CalcItemCount(-1, 6, 1, 2813, -1)
		if nCountIb >= 1 then
			return 2--¿ÉÒÔÊ¹ÓÃµÀ¾ß±¨Ãû
		else
			return -1--¿ÉÒÔÊ¹ÓÃµÀ¾ßµ«ÊÇÉíÉÏÃ»ÓĞ
		end
	end
	return 0--Ã»ÓĞÈÎÎñ»ú»áÁË
end
