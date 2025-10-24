Include("\\script\\lib\\awardtemplet.lua")
function main()
-- dofile("script/event/expansion/201006/fuguijinhe/fuguijinhe_box.lua")
local fuguijinhe = 
{
{szName="<color=yellow>PhiÕu Dù §o¸n",tbProp={6,1,2144,1,0,0},nCount=1,nRate=60},
{szName="<color=yellow>PhiÕu Dù §o¸n",tbProp={6,1,2144,1,0,0},nCount=2,nRate=30},
{szName="<color=yellow>PhiÕu Dù §o¸n",tbProp={6,1,2144,1,0,0},nCount=3,nRate=10}, 
}
tbAwardTemplet:GiveAwardByList(fuguijinhe, "PhiÕu Dù §o¸n");
end