
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\vonghoa\\item\\head.lua");
Include("\\script\\baoruongthanbi\\head.lua");
Include("\\script\\vng_event\\ngusackettinh\\script\\nskt_SongJin.lua");
Include("\\script\\vng_event\\LunarYear2011\\mission_award.lua")
Include("\\script\\vng_event\\20110225_8_thang_3\\mission_award.lua")

function battles_award_all_singleplayer(nplayerindex,nplayer_point,ngame_level)
			 local noldplayindex = PlayerIndex
			 PlayerIndex = nplayerindex
			battles_award_singleplayer_AddItem(nplayer_point)
			 PlayerIndex = noldplayindex
			 return
end

function battles_award_singleplayer_AddItem(nplayer_point)
	if nplayer_point < 3000 then
			--tbAwardTemplet:GiveAwardByList(tb_tongkim_1k, "PhÇn th­ëng Tèng Kim");
	return end
		
	if nplayer_point > 10000 then
			--tbAwardTemplet:GiveAwardByList(tb_tongkim_10k, "PhÇn th­ëng Tèng Kim");
	return end	
	
	if nplayer_point > 3000 then
			--tbAwardTemplet:GiveAwardByList(tb_tongkim_3k, "PhÇn th­ëng Tèng Kim");
	return end						
	-- local ndate = tonumber(GetLocalDate("%y%m%d"))
	-- if ndate >= 091216 and ndate < 200125 then	--- ngay thang het han
		-- tbAwardTemplet:GiveAwardByList(%tbItem, "Tèng Kim ®iÓm tÝch lòy 3000 trë lªn ®­îc Hép quµ tr¾ng");
	-- end
end

	
tb_tongkim_1k = {
                                              -- [1]={szName="Kim chØ",tbProp={6,1,4353,1,0,0},nCount=50,},

}

tb_tongkim_3k = {
                                             --  [1]={szName="Kim chØ",tbProp={6,1,4353,1,0,0},nCount=100,},

}

tb_tongkim_10k = {
                                            --   [1]={szName="Kim chØ",tbProp={6,1,4353,1,0,0},nCount=300},

}