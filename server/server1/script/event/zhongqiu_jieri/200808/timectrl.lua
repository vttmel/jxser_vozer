--时间控制管理
--从2008年09月05日至2008年10月05日24点
zhongqiu0808_StartTime	= 180905
zhongqiu0808_EndTime	= 181005
zhongqiu0808_liheEndTime = 181005
zhongqiu0808_ItemEndTime = 181031
zhongqiu0808_ZhanGongStartTime = 180905
zhongqiu0808_ZhanGongEndTime = 181005

function zhongqiu0808_IsActDate()
	local nDate = tonumber(GetLocalDate("%y%m%d"))
	if nDate >= zhongqiu0808_StartTime and nDate <= zhongqiu0808_EndTime then
		return 1
	end
	return nil
end