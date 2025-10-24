TAB_SKILL = {
	-- ThienTu
	emperor =
	{	
		lifemax_v = {1000, -1, 0},
		allres_p = {10, -1, 0},
		allresmax_p = {5, -1, 0},
		allskill_v  = {1, -1, 0},		-- 全系技能＋1
	},
	-- Quoc Chu
	king =
	{
		lifemax_v = {800, -1, 0},
		allres_p = {5, -1, 0},
		allresmax_p = {4, -1, 0},
		allskill_v  = {1, -1, 0},		-- 全系技能＋1
	},
	-- 碩hua Tuong
	minister =
	{
		lifemax_v = {800, -1, 0},
		allres_p = {4, -1, 0},
		allresmax_p = {4, -1, 0},
	},
	-- Nguyen Soai
	marshal =
	{
		lifemax_v = {600, -1, 0},
		allres_p = {3, -1, 0},
		allresmax_p = {3, -1, 0},
	},
	-- Tien Phong
	pioneer =
	{
		lifemax_v = {500, -1, 0},
		allres_p = {2, -1, 0},
		allresmax_p = {2, -1, 0},
	},
}

-----------------------------------------------------------
--函数GetSkillLevelData(levelname, data, level)
--levelname：魔法属性名称
--data：技能名称
--level：技能等级
--return：当技能名称为data，技能等级为level
--			时的魔法属性levelname所需求的三个参数的具体值
-----------------------------------------------------------
function GetSkillLevelData(levelname, data, level)
	local skill = TAB_SKILL[data]
	if (not skill) then
		return ""
	end
	local tb = skill[levelname]
	if (not tb) then
		return ""
	end
	return format("%d,%d,%d", tb[1], tb[2], tb[3])
end
