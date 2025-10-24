Include("\\script\\vng_lib\\files_lib.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
---------------------------------------------
LimitAccountPerIP = {};
LimitAccountPerIP.Patch = "data/";
LimitAccountPerIP.File = "limitip.log";
LimitAccountPerIP.Max = SoLuongAccGioiHan;
LimitAccountPerIP.IP = {};
-----------------------------------------
if GioiHanLoginIP == 1 then
function LimitAccountPerIP:AskSetMax()
	g_AskClientStringEx("",1,256,"§Þa chØ IP",{self.EnterIP,{self}});
end;

function LimitAccountPerIP:EnterIP(szIP)
	g_AskClientNumberEx(1,999,"Sè l­îng acc", {self.EnterSetMax,{self,szIP}});
end;

function LimitAccountPerIP:EnterSetMax(szIP,nCount)
	local tbTemp = {};
	tinsert(tbTemp,{"IP","LIMIT"});
	local tbLoop = {};
	local tbPlayerIP = tbVngLib_File:TableFromFile(self.Patch,self.File,{"*l"});
	if (not tbPlayerIP) then tbPlayerIP = {}; end;
	for i = 1, getn(tbPlayerIP) do
		local tbParam = split(tbPlayerIP[i][1],"	");
		if (not tbLoop[tbParam[1]]) then
			tbLoop[tbParam[1]] = {tbParam[1],tonumber(tbParam[2]) or 0};
		end;
	end;
	tbLoop[szIP] = {szIP,nCount};
	
	for x,y in tbLoop do
		tinsert(tbTemp,y);
	end;
	tbVngLib_File:Table2File(self.Patch,self.File,"w",tbTemp);
	Msg2Player(format("ThiÕt lËp cho IP %s login ®­îc %d thµnh c«ng!",szIP,nCount));
end;

function LimitAccountPerIP:Login()
	local nMax = self.Max;
	local szIP = self:GetIP();
	local szName = GetName();
	local tbPlayerIP = tbVngLib_File:TableFromFile(self.Patch,self.File,{"*l"});
	if (not tbPlayerIP) then tbPlayerIP = {}; end;
	local nCheckIP,nMaxIP = self:CheckIP(tbPlayerIP,szIP);
	if (nCheckIP == 1) then
		nMax = nMaxIP;
	end;
	
	if (not self.IP[szName]) then
		self.IP[szName] = {"",0};
	end;
	
	self.IP[szName] = {szIP,self:GetCount(szIP)+1};
	for x,y in self.IP do
		if (y[1] == szIP) then
			self.IP[x] = {y[1],self.IP[szName][2]};
		end;
	end;
	
	if (self.IP[szName][2] > nMax) then
		return 1;
	else
		return 0;
	end;
end;

function LimitAccountPerIP:GetCount(szIP)
	local nCount = 0;
	for x,y in self.IP do
		if (y[1] == szIP) then
			nCount = nCount+1;
		end;
	end;
	return nCount;
end;

function LimitAccountPerIP:Logout()
	local szName = GetName();
	if (not self.IP[szName]) then
		return
	end;
	szIP = self.IP[szName][1];
	self.IP[szName] = {"",0};
	for x,y in self.IP do
		if (y[1] == szIP) then
			self.IP[x] = {y[1],y[2]-1};
		end;
	end;
end;

function LimitAccountPerIP:KickOut(nPlayerIndex)
	OfflineLive(nPlayerIndex);
	KickOutSelf();
end;

function LimitAccountPerIP:CheckIP(tbPlayerIP,szIP)
	for i = 1, getn(tbPlayerIP) do
		local tbParam = split(tbPlayerIP[i][1],"	");
		if (tbParam[1] == szIP) then
			return 1,tonumber(tbParam[2]) or 0;
		end;
	end;
	return 0;
end;

function LimitAccountPerIP:GetIP()
	local tbIP = split(GetIP()," :");
	return tbIP[1];
end;
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
