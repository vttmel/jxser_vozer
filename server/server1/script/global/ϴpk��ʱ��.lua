-- Ï´PK¼ÆÊ±Æ÷.lua
-- Update: Dan_Deng(2003-11-27)
-- Timer: 9

Include("\\Script\\Global\\TimerHead.lua")

function OnTimer()
	Uworld96 = GetTask(96)
	PK_value = GetPK()
	StopTimer()
	if (Uworld96 > 0) then			-- Ö»ÓĞÔÚÀÎ·¿ÖĞ²ÅÔÊĞí¼õPKÖµ
		if (PK_value > 1) then		-- ÉĞÎ´Ï´ÍêPKÖµ
			Msg2Player("Sau thêi gian thµnh t©m hèi c¶i, téi nghiÖt cña ng­¬i ®· ®­îc gi¶m nhÑ!")
			SetPK(PK_value - 1)
			SetTask(96,Uworld96 - 1)
			SetTimer(12 * CTime * FramePerSec, 9)						--ÖØĞÂ¿ªÊ¼¼ÆÊ±£¨12¸öÊ±³½==120·ÖÖÓ£©
		else							-- Ï´ÍêPKÁË
			Msg2Player("Sau thêi gian thµnh t©m hèi c¶i, ng­¬i rèt cuéc ®· röa s¹ch téi lçi cña m×nh!")
			SetPK(0)
			SetTask(96,100)
		end
	end
end;
