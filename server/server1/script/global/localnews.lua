Include "/script/event/eventhead.lua"

NewsFormat = {

	{
		startt	=	06033100,
		endt	=	06042821,
		msg	=	"武林联赛时间调整：每场准备时间5分钟，比赛时间10分钟，取消间歇时间。即周一至周五的20：00-21：00进行4场比赛，周六周日的19：00-21：00进行8场比赛。此外，轮空获胜的战队的战斗时间算5分钟。",
		p	=	90,
	},
	{
		startt	=	06053000,
		endt	=	06063023,
		msg	=	"第二届武林大会正式落下帷幕，获奖选手和玩家可以在临安的武林大会官员(202,202)选择领取相应的物品奖励、称号和光环奖励。",
		p	=	90,
	},

	{
		startt	=	06060910,
		endt	=	06071000,
		msg	=	"世界杯活动，开放时间：<color=green>6月10日-7月10日<color>。每天获取黄金球卡，参与“幸运球队”活动；收集32张不同的黄金球卡，收集的种类越多越有机会赢取<color=green>世界杯纪念黄金套装<color>！详情请在襄阳礼官和官网查询！",
		p	=	90,
	},
	{
		startt	=	06061610,
		endt	=	06063000,
		msg	=	"关闭传功：<color=green>6月20日<color>维护后停止传功申请，此前已申请传功玩家仍可在<color=green>6月29日24：00<color>前进行传功。<color=green>6月30日<color>后关闭传功系统，已生成的元神丹仍可使用。详情参见官网。",
		p	=	90,
	},
	{
		startt	=	06061610,
		endt	=	06073000,
		msg	=	"完美的安邦套装：近日在武林中流传着把<color=green>安邦套装<color>升级成<color=green>完美的安邦套装<color>的消息，各位可以到<color=green>明月镇找明月老人<color>了解详情。",
		p	=	90,
	},
	{
		startt	=	06063000,
		endt	=	06070700,
		msg	=	"[江湖传闻]最近各新手村的铁匠为了兴旺村子的生意，故特意进了一批神秘矿石，欢迎各位大侠前去选购。",
		p	=	90,
	},
	{
		startt	=	06072800,
		endt	=	06080400,
		msg	=	"[江湖传闻]在7月28日~8月4日，四个风景区（华山、青城山、武夷山、点苍山）的所有怪死亡后会随机掉落 “心心相印盒”，一男一女两玩家组队后拾取心心相印盒会获得一定经验，并且有机会获得“绣花针，麦秸桥，布喜鹊，花环”玩家可以用这些物品到江津月老处乞求牛郎织女的祝福。",
		p	=	90,
	},
	{
		startt	=	06072800,
		endt	=	06082800,
		msg	=	"[120级技能]已经开放，技能学习任务请参看F12任务面板。120级技能通过熟练度升级，练级杀怪、完成主线支线剧情任务和同伴剧情任务、参加烽火连城、闯关、信使和杀手任务、技能大白托管都能提高熟练度。",
		p	=	90,
	},
}



function putEventGlobalNews(newsFormat)
	for i=1,getn(newsFormat) do
		if(validateDate(newsFormat[i].startt,newsFormat[i].endt)) then
			if(random(100) < newsFormat[i].p) then
				AddLocalNews(newsFormat[i].msg)
			end
		end
	end
end

function OnTimer()
	putEventGlobalNews(NewsFormat)
end
