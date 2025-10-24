-- vang nen by namcungnhatthien

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("ITEM")

function main(nItemIndex)
local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P == 3037 then
		Earn(10000000)
		Msg2Player("NhËn ®­îc <color=yellow>1000<color> v¹n l­îng")
		return 0;
	end	
	
	if P == 3036 then
		Earn(1000000)
		Msg2Player("NhËn ®­îc <color=yellow>100<color> v¹n l­îng")
		return 0;
	end
end