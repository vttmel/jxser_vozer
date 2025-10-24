MONEY_ADDLIFETIME = 1000000

function main()
	Say("<color=green>ThÎ cho phßng t¸n gÉu<color>"..": ".."B¹n vui lßng nhËp tªn phßng t¸n gÉu cÇn thªm giê".."!", 2,
	"§­îc th«i! §Ó ta nhËp vµo/pay_chatroom_enter",
	"KÕt thóc ®èi tho¹i./OnCancel");
return 1; end

function pay_chatroom_enter()
	AskClientForString("pay_chatroom_time", "", 1, 20, "NhËp tªn phßng:"); 
end

function pay_chatroom_time(roomname)
	-- ÁÄÌìÊÒ³äÖµ²»ĞèÒª½»·Ñ
	if (ChatRoom_FindRoom(roomname) == 0) then
		Msg2Player("Phßng t¸n gÉu <color=yellow>"..roomname.."<color> nµy kh«ng tån t¹i!")
	else
		ChatRoom_AddTime(roomname)
	end
end


function OnCancel()
end
