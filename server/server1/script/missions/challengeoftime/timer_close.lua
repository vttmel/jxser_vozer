-- description	: ¹Ø±Õ±ÈÈü¶¨Ê±Æ÷
-- author		: wangbin
-- datetime		: 2005-07-13

Include("\\script\\missions\\challengeoftime\\include.lua")

function timeout()
	Msg2MSAll(MISSION_MATCH, "<#> Thêi gian lµm nhiÖm vô ®· kÕt thóc, ®éi ngò cña b¹n khiªu chiÕn thÊt b¹i");
end

function OnTimer()
	timeout();
	close_close_timer();
	close_match();
	close_board_timer();
end
