-- HÖ thèng: §iÓm phóc duyªn
--2004.8.5

TASKID_FY = 151;								--ÈÎÎñ±äÁ¿ID of Íæ¼Ò¸£ÔµÖµ
TASKID_FY_START_ONLINE_TIME = 152;				--ÈÎÎñ±äÁ¿ID of Íæ¼Ò×îºóÒ»´Î¿ªÊ¼»ıÔÜ¸£ÔµÊ±µÄÔÚÏßÊ±¼ä£¨Ãë£©£¬-1±íÊ¾¸£Ôµ»ıÔÜÒÑ±»ÔİÍ£
TASKID_FY_ADDITIONAL_TIME = 153;				--ÈÎÎñ±äÁ¿ID of Íæ¼Ò¸£Ôµ±»ÔİÍ£Ç°¿É»»¸£ÔµµÄÔÚÏßÊ±¼ä£¨Ãë£©
TASKID_GAIN_LAST_DATE = 154;					--ÈÎÎñ±äÁ¿ID of Íæ¼Ò×îºóÒ»´ÎÁìÈ¡¸£ÔµÈÕÆÚ
TASKID_GAIN_TIMES_IN_DAY = 155;					--ÈÎÎñ±äÁ¿ID of Íæ¼Ò×îºóÒ»´ÎÁìÈ¡¸£Ôµµ±ÌìÁìÈ¡¸£ÔµµÄ´ÎÊı

TIME_UNIT = 3600;								--»ù±¾Ê±¼äµ¥Î»£¨1Ğ¡Ê±£©
TIME_PER_FUYUAN = TIME_UNIT;					--1µã¸£Ôµ»»È¡ËùĞèÊ±¼ä £¨1Ğ¡Ê±£©
TIME_FUYUAN_THRESHOLD1 = 2 * TIME_UNIT;			--¸£Ôµ»»È¡ËùĞè»ù×¼Ê±¼ä £¨2Ğ¡Ê±£©
TIME_FUYUAN_THRESHOLD2 = 4 * TIME_UNIT;			--¸£ÔµË¥¼õ¿ªÊ¼Ê±¼ä £¨4Ğ¡Ê±£©
FUYUAN_EXTRA = 2;								--½±ÀøµÄ¸£Ôµµã
TIMES_IN_DAY_EXTRA = 2;							--»ñÈ¡½±ÀøËùĞèÒ»ÌìÁìÈ¡¸£ÔµµÄ´ÎÊı

FUYUAN_MAX_GAIN = 100;							--Ò»´Î×î¶µ¿É»»È¡¶µÉÙµã¸£Ôµ


--Æô¶¯¸£Ôµ»ıÔÜ
function FuYuan_Start()
	--Î´³ä¿¨
	if( IsCharged() ~= 1 ) then
	return 0; end
	
	SetTask( TASKID_FY_START_ONLINE_TIME, GetGameTime() );
	SetTask( TASKID_FY_ADDITIONAL_TIME, 0 );
	SetTask( TASKID_GAIN_LAST_DATE, date("%Y%m%d") );
	SetTask( TASKID_GAIN_TIMES_IN_DAY, 0 );	
end

--ÔİÍ£¸£Ôµ»ıÔÜ
function FuYuan_Pause()
	if( IsFuYuanAvailable() ~= 1 ) then
	return 0; end
	local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME );
	local nFYAdditionalTime = GetTask( TASKID_FY_ADDITIONAL_TIME );
	if( IsFuYuanPaused() ~= 1 ) then
		if (nFYAdditionalTime < 0) then
			nFYAdditionalTime = 0
		end		
		local nFYDiffer = GetGameTime() - nFYStartOnlineTime;
		if (nFYDiffer < 0) then
			nFYDiffer = 0
		end				
		local nFYTotalTime = nFYDiffer + nFYAdditionalTime;		
		SetTask( TASKID_FY_ADDITIONAL_TIME, nFYTotalTime );
		SetTask( TASKID_FY_START_ONLINE_TIME, -1 );
	end
end

--¼ÌĞø¸£Ôµ»ıÔÜ
function FuYuan_Resume()
	if( IsFuYuanAvailable() ~= 1 or IsFuYuanPaused() ~= 1 ) then
	return 0; end
	SetTask( TASKID_FY_START_ONLINE_TIME, GetGameTime() );
end

--ÔÚÏßÊ±¼ä»»È¡¸£Ôµ ( ·µ»ØÖµ 1:Õı³£ÁìÈ¡, 0:ÔÚÏßÊ±¼ä²»¹»ÁìÈ¡¸£Ôµ, -1:Î´³ä¿¨»ò¸£Ôµ»ıÔÜÉĞÎ´Æô¶¯ )
function FuYuan_Gain()
	if( IsFuYuanAvailable() ~= 1 ) then
	return -1; end
	
	local nFuYuanGained = 0;			--»ñÈ¡µÄ¸£Ôµµã;
	local nFYStartOnlineTime;
	local nFYTotalTime, nFYValidTime = FuYuan_GetDepositTime();
	local nCurrentOnlineTime = GetGameTime();
	local nFYGainLastDate = GetTask( TASKID_GAIN_LAST_DATE );
	local nFYGainTimesInDay = GetTask( TASKID_GAIN_TIMES_IN_DAY )
	
	--ÔÚÏßÊ±¼ä²»¹»ÁìÈ¡¸£Ôµ
	if( nFYValidTime < TIME_FUYUAN_THRESHOLD1 ) then
	return 0; end
		
	nFuYuanGained = floor( nFYValidTime / TIME_PER_FUYUAN );
	nFYGainTimesInDay = nFYGainTimesInDay + 1;
	nFYStartOnlineTime = nCurrentOnlineTime - mod( nFYValidTime, TIME_UNIT );
	
	--Ò»ÌìÄÚÁìÈ¡×ã¹»´Î¸£Ôµ,¶îÍâÔÙ½±Àø¸£Ôµ
	if( tonumber(date("%Y%m%d")) == nFYGainLastDate ) then
		if( nFYGainTimesInDay == TIMES_IN_DAY_EXTRA ) then
			nFuYuanGained = nFuYuanGained + FUYUAN_EXTRA;
		end
	else
		nFYGainLastDate = date("%Y%m%d");
		nFYGainTimesInDay = 1;
	end
	
	if( nFuYuanGained >= FUYUAN_MAX_GAIN ) then
		FuYuan_Add( FUYUAN_MAX_GAIN );
		WriteLog( "["..date("%Y-%m-%d %X").."] "..GetAccount().."("..GetName()..") get over "..FUYUAN_MAX_GAIN.." FUYUAN. (Current OnlineTime: "..GetGameTime().." sec)" );
	else
		FuYuan_Add( nFuYuanGained );
	end
	SetTask( TASKID_FY_START_ONLINE_TIME, nFYStartOnlineTime );
	SetTask( TASKID_FY_ADDITIONAL_TIME, 0 );
	SetTask( TASKID_GAIN_LAST_DATE, nFYGainLastDate );
	SetTask( TASKID_GAIN_TIMES_IN_DAY, nFYGainTimesInDay );
return 1; end

--»ñµÃÍæ¼Òµ±Ç°¿É»»È¡¸£ÔµµÄÀÛ»ıÔÚÏßÊ±¼ä£¨Ãë£© £¨2¸ö·µ»ØÖµ£¬·Ö±ğÎª»»È¡¸£ÔµµÄËùÓĞÊ±¼äºÍÓĞĞ§Ê±¼ä£©
function FuYuan_GetDepositTime()
	if( IsFuYuanAvailable() ~= 1 ) then
	return 0, 0; end
	local nCurrentOnlineTime = GetGameTime();
	local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME );
	local nFYAdditionalTime = GetTask( TASKID_FY_ADDITIONAL_TIME );
	local nFYTotalTime;
	local nFYValidTime;
	--¸£Ôµ»ıÔÜÒÑ±»ÔİÍ£
	if( IsFuYuanPaused() == 1 ) then
		if( GetTeamSize() > 1 ) then
			return 0, 0;		--×é¶Ó×´Ì¬Ï¢²»ÄÜ¼ÌĞø¸£Ôµ»ıÔÜ£¬·ÀÖ¹³öÏÖ±¾ÈËÔÚ¹Ò»ú£¬¶ÓÓÑ´úÁì¸£ÔµµÄÒì³£³öÏÖÊ±½«±¾ÈËÔİÍ£×´Ì¬ÆÆ»µ
		else
			nFYStartOnlineTime = nCurrentOnlineTime;	--Ö»ÄÜ»»È¡ÔİÍ£Ö®Ç°»ıÔÜµÄÔÚÏßÊ±¼ä
			FuYuan_Resume();	--¼ÌĞø¸£Ôµ»ıÔÜ,·ÀÖ¹¸£ÔµPause¶øÎ´Resume¾ÍÁìÈ¡¸£ÔµµÄÒì³£Çé¿öÏ¢µ¼Ö¢µÄ¸£Ôµ»ıÔÜËÀËø
		end
	end
		
	if (nFYAdditionalTime < 0) then
		nFYAdditionalTime = 0;
		SetTask(TASKID_FY_ADDITIONAL_TIME, 0);
	end
	
	if ((nCurrentOnlineTime - nFYStartOnlineTime) < 0) then
		SetTask(TASKID_FY_START_ONLINE_TIME, nCurrentOnlineTime);				
		nFYStartOnlineTime = nCurrentOnlineTime;
	end
	
	nFYTotalTime = ( nCurrentOnlineTime - nFYStartOnlineTime ) + nFYAdditionalTime;	
			
	if( nFYTotalTime <= TIME_FUYUAN_THRESHOLD2 ) then
		nFYValidTime = nFYTotalTime;
	else
		local nHour = floor( nFYTotalTime / TIME_UNIT );
		nFYValidTime = ( nHour - floor( ( nFYTotalTime - TIME_FUYUAN_THRESHOLD2 ) / ( 2 * TIME_UNIT ) ) ) * TIME_UNIT + mod( nFYTotalTime, TIME_PER_FUYUAN );
	end
return nFYTotalTime, nFYValidTime; end

--»ñµÃÍæ¼ÒµÄ¸£ÔµÖµ
function FuYuan_Get()
return GetTask( TASKID_FY ); end

--ÉèÖÃÍæ¼ÒµÄ¸£ÔµÖµ
function FuYuan_Set( value )
	if( IsFuYuanAvailable() ~= 1 ) then
	return 0; end
	SetTask( TASKID_FY, value );
	SyncTaskValue( TASKID_FY );
return 1; end

--Ôö¼ÓÍæ¼ÒµÄ¸£ÔµÖµ
function FuYuan_Add( value )
	local nResult = FuYuan_Set( FuYuan_Get() + value );
	if(  nResult == 1 ) then
		Msg2Player( "B¹n thu ®­îc "..value.." ®iÓm phóc duyªn" );
	end
return nResult; end

--¼õÉÙÍæ¼ÒµÄ¸£ÔµÖµ
function FuYuan_Reduce( value )
	local nResult = FuYuan_Set( FuYuan_Get() - value );
	if(  nResult == 1 ) then
		Msg2Player( "B¹n ®· tiªu hao "..value.." ®iÓm phóc duyªn." );
	end
return nResult;end

--ÅĞ¶ÏÍæ¼ÒÊÇ·ñ³ä¹ı¿¨
function IsCharged()
	if( GetExtPoint( 0 ) >= 1 ) then
	return 1;else
	return 0; end
end

--ÅĞ¶ÏÍæ¼ÒÊÇ·ñÒÑ¾­Æô¶¯¸£Ôµ»ıÔÜ
function IsFuYuanStarted()
	local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME );
	if( nFYStartOnlineTime == 0 ) then
	return 0; else
	return 1; end
end

--ÅĞ¶ÏÍæ¼Ò¿É·ñ½øĞĞ¸£Ôµ²Ù×÷
function IsFuYuanAvailable()
	--Î´³ä¿¨»òÎ´Æô¶¯¸£Ôµ»ıÔÜ
	if( IsCharged() ~= 1 or IsFuYuanStarted() ~= 1 ) then
	return 0; else
	return 1; end
end

--ÅĞ¶ÏÍæ¼Ò¸£Ôµ»ıÔÜÊÇ·ñÒÑ±»ÔİÍ£
function IsFuYuanPaused()
	local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME );
	if( nFYStartOnlineTime < 0 ) then
	return 1; else
	return 0; end
end
