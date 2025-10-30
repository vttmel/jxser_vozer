Include("\\script\\global\\login_head.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");

function LoginMessage()
	local nLevel = GetLevel();
	if (nLevel == 1) then
		Msg2Player("<color=green>Ch�o m�ng <color=yellow>"..GetName().."<color> �� ��n v�i th� gi�i V� L�m Truy�n K�")
	end
	
	if (nLevel > 1) then		
		Msg2Player("<color=green>Server c�y cu�c gi�nh cho c�c b�n n�o �am m� game V� L�m Truy�n K� phi�n b�n HKMP. Ch�c c�c b�n c� nhi�u s�c kh�e v� c� nh�ng gi�y ph�t th� gi�n vui v� trong game.")
	end
	if GetTask(5751) == 0 then 
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1266,0,0,0}, nBindState=-2}, "Th�n H�nh Ph�", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,438,0,0,0}, nBindState=-2}, "Th� ��a Ph�", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1181,0,0,0}, nCount=3, nBindState=-2}, "Ti�n Th�o L� ��c Bi�t", 1);
	--tbAwardTemplet:GiveAwardByList({tbProp = {4,417}, nCount=10, nBindState=-2}, "Ti�n ��ng", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4851,0,0,0}, nBindState=-2}, "C�m Nang N�m Th�ng", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4921,0,0,0}, nBindState=-2}, "T�i Y T�", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {0,10,2,10,0,0}, nWidth=2, nHeight=3}, "Ng�a T�n Th�", 1);
	--tbAwardTemplet:GiveAwardByList({tbProp = {0,13,0,1,0,0}, nWidth=1, nHeight=1}, "T�n th� �n", 1);
	--tbAwardTemplet:GiveAwardByList({tbProp = {0,14,0,1,0,0}, nWidth=1, nHeight=1}, "T�n th� trang s�c", 1);
	--tbAwardTemplet:GiveAwardByList({tbProp = {0,5290}, nCount=1, nQuality=1, nBindState=-2}, "T�n Th� Gi�i Ch�", 1);
	AddLeadExp(1000000000)
	Earn(5000)
	SetTask(5751,1)
	end
end

if login_add then login_add(LoginMessage, 1) end