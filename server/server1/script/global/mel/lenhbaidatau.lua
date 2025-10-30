
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
		Say(format("M�t ng�y ch� c� th� s� d�ng 1000 D� T�u L�nh", DTL_LIMIT), 0)
		return 1;
	end		
	if tl_gettaskcourse() == 0  then
		Say("Nh�n nhi�m v� d� t�u tr��c m�i s� d�ng l�nh b�i",0);
		return 1
	elseif tl_gettaskcourse() == 1 then
		Task_AwardRecord()
		--tl_settaskcourse(2)
		Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=yellow>"..GetName().."<color> �� s� d�ng <color=yellow>L�nh b�i ho�n th�nh nhi�m v� D� T�u<color> �� v��t qua nhi�m v� kh� kh�n l�n n�y!<color>")
		Say("�� ho�n th�nh xong nhi�m v�, ��i tho�i v�i D� T�u �� nh�n th��ng")
		nUseTimes = nUseTimes + 1;
		SetBitTask(DTL_TASK, 0, 8,  nUseTimes);
		SetBitTask(DTL_TASK, 8, 24, nLastUseDate);
		return 0
	else 
		Say("Nh�n nhi�m v� d� t�u tr��c m�i s� d�ng l�nh b�i",0);
		return 1
	end

end