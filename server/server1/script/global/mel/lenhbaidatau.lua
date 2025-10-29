
IncludeLib("FILESYS");
IncludeLib("RELAYLADDER");
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua");
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua");
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\global\\seasonnpc.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

DTL_TASK = 8000
DTL_LIMIT= 1000

function main()
	dofile("script/global/mel/lenhbaidatau.lua")
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(DTL_TASK, 0, 8) 
	local nLastUseDate = GetBitTask(DTL_TASK, 8, 24) 
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	if (nUseTimes >= DTL_LIMIT) then
		Say(format("Mét ngµy chØ cã thÓ sö dông 1000 D· TÈu LÖnh", DTL_LIMIT), 0)
		return 1;
	end		
	if tl_gettaskcourse() == 0  then
		Say("NhËn nhiÖm vô d· tÈu tr­íc míi sö dông lÖnh bµi",0);
		return 1
	elseif tl_gettaskcourse() == 1 then
		Task_AwardRecord()
		--tl_settaskcourse(2)
		Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=yellow>"..GetName().."<color> ®· sö dông <color=yellow>LÖnh bµi hoµn thµnh nhiÖm vô D· TÈu<color> ®Ó v­ît qua nhiÖm vô khã kh¨n lÇn nµy!<color>")
		Say("§· hoµn thµnh xong nhiÖm vô, ®èi tho¹i víi D· TÈu ®Ó nhËn th­ëng")
		nUseTimes = nUseTimes + 1;
		SetBitTask(DTL_TASK, 0, 8,  nUseTimes);
		SetBitTask(DTL_TASK, 8, 24, nLastUseDate);
		return 0
	else 
		Say("NhËn nhiÖm vô d· tÈu tr­íc míi sö dông lÖnh bµi",0);
		return 1
	end

end