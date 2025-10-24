
function SkillExpFunc(Exp0,a,Level,Time,Range)
	return floor(Exp0*(a^(Level-1))*Time*Range/2)
end


SKILLS={

	qingfeng_songshuang={ --thanh van tong sang
		physicsdamage_v={
			[1]={{1,10},{20,120}},
			[3]={{1,10},{20,120}},
		},
		seriesdamage_p={{{1,10},{20,100}}},
		colddamage_v={
			[1]={{1,20},{20,195},{23,250},{26,277}},
			[3]={{1,20},{20,195},{23,250},{26,277}}
		},
		addskilldamage2={
			[1]={{1,380},{2,380}},
			[3]={{1,1},{20,75}}
		},
		addskilldamage3={
			[1]={{1,91},{2,91}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage1={
			[1]={{1,1062},{2,1062}},
			[3]={{1,1},{20,63}}
		},
		skill_cost_v={{{1,20},{20,30}}}
	},
	jianzong_zongjue={ --kiem tong tong quyet
		addphysicsdamage_p={{{1,25},{20,215}},{{1,-1},{2,-1}},{{1,7},{2,7}}},
		attackspeed_yan_v={{{1,50},{30,65}},{{1,18*180},{30,18*180}}},
                attackspeed_v={{{1,50},{30,65}},{{1,18*180},{30,18*180}}},
                manareplenish_v={{{1,1},{20,10}},{{1,18},{2,18}}},
                lifemax_yan_p={{{1,21},{35,160},{36,160}},{{1,-1},{30,-1}}}
	},
	longraoshen={ --long nhieu than
                manareplenish_v={{{1,1},{20,10}},{{1,18},{2,18}}},
		manamax_yan_p={{{1,35},{35,200},{36,200}},{{1,-1},{2,-1}}}
	},
	baihong_guanri={ --b¸ch hång qu¸n nhËt
		physicsenhance_p={{{1,30},{20,75}}},
                seriesdamage_p={{{1,10},{20,50},{21,52}}},
		colddamage_v={
			[1]={{1,10},{20,80}},
			[3]={{1,10},{20,80}}
		},
		deadlystrike_p={{{1,10},{20,20}}},
		addskilldamage1={
			[1]={{1,328},{2,328}},
			[3]={{1,1},{20,60}}
		},
		addskilldamage2={
			[1]={{1,88},{2,88}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage3={
			[1]={{1,1061},{2,1061}},
			[3]={{1,1},{20,50}}
		},
		addskilldamage4={
			[1]={{1,1091},{2,1091}},
			[3]={{1,50},{20,50}}
		},
                skill_showevent={{{1,0},{5,0},{5,2},{20,2}}},
                skill_eventskilllevel={{{1,1},{20,20}}},
	},
        yangwu_jianfa={ --D­ìng ng« kiÕm ph¸p·¨
		damage2addmana_p={{1,10},{20,20}}
	},
	haina_baichuan={ --hai nap b¸ch xuyªn
		addcoldmagic_v={{{1,20},{20,215}},{{1,-1},{2,-1}}}
	},
	liushui={--Á÷Ë®
		fastwalkrun_p={{{1,9},{20,66}},{{1,18},{2,18}}}
	},
        jinyan_hengkong={ --kim nh¹n hoµn kh«ng
		seriesdamage_p={{{1,20},{20,50}}},
                colddamage_v={
			[1]={{1,200},{20,400}},
			[3]={{1,300},{20,550}}
		},
		addskilldamage1={
			[1]={{1,382},{2,382}},
			[3]={{1,15},{20,50}}
		},
		addskilldamage2={
			[1]={{1,1064},{2,1064}},
			[3]={{1,1},{20,42}}
		},
		skill_attackradius={{{1,384},{20,416}}},
                skill_eventskilllevel={{{1,1},{20,20}}},
                physicsenhance_p={{{1,120},{20,1242}}},
                deadlystrike_p={{{1,5},{20,40}}},
                --skill_desc=
			--function(level)
				--return "KiÕm Hoa Ho¸n Tinh<color=orange>"..floor(Link(level,SKILLS.tangmen120.skill_param1_v[1])).."<color>\n"..
				--"B¨ng C­íc ViÖt Chi<color=orange>"..floor(Link(level,SKILLS.tangmen120.skill_mintimepercast_v[1]) / 18).."Ãë<color>\n"..
				--"U Hån PhÖ ?nh<color=orange>"..floor(Link(level,SKILLS.tangmen120.skill_mintimepercastonhorse_v[1]) / 18).."Ãë<color>\n" 
			--end,
		skill_cost_v={{{1,20},{20,30}}}
	},
        longxuan_jianqi1={ --·long huyÒn kiÕm khÝ
		sorbdamage_yan_p={{{1,5},{20,40}}},
		anti_do_hurt_p={{{1,20},{20,24}}},
		skill_cost_v={{{1,20},{20,40}}},
                addskilldamage1={
			[1]={{1,1064},{2,1064}},
			[3]={{1,1},{20,42}}
		},
                lifemax_p={{{1,21},{30,185}},{{1,-1},{30,-1}}},
                lifemax_yan_p={{{1,21},{35,160},{36,160}},{{1,-1},{30,-1}}}
	},
        xiyi_jianfa={ --hi di kiÕm ph¸p
		addphysicsdamage_p={{{1,25},{20,215}},{{1,-1},{2,-1}},{{1,7},{2,7}}}
	},
	qizhen_shanhe={ --khi chÊn s¬n hµ
		meleedamagereturnmana_p={{{1,80},{20,385}}},
		rangedamagereturnmana_p={{{1,10},{20,50},{21,52}}}	
	},
	mengdie={ --ÃÎµû
		lifereplenish_v={{{1,1},{20,15}},{{1,18},{2,18}}},
		manareplenish_v={{{1,1},{20,10}},{{1,18},{2,18}}},
	},
	tianshen_daoxuan={ --thiªn th©n ®¶o huyÒn
		seriesdamage_p={{{1,20},{20,50},{21,55}}},
                colddamage_v={
			[1]={{1,70},{20,787}},
			[3]={{1,80},{20,1287}}
		},
                addskilldamage1={
			[1]={{1,1062},{2,1062}},
			[3]={{1,1},{20,65}}
		},
		addskilldamage2={
			[1]={{1,1080},{2,1180}},
			[3]={{1,1},{20,80}}
		},
		skill_eventskilllevel={{{1,1},{20,20}}},
                deadlystrike_p={{{1,6},{20,26}}},
                physicsenhance_p={{{1,60},{20,723}}}
                --skill_desc=
			--function(level)
				--local szTime = format("%.2f", (floor(Link(level,SKILLS.zhanren150.randmove[2])*100/18 )/100))
				--return "¸½¼ÓµÚ¶þ£½<color=blue>Ä§Ò«»÷<color>Ò¤<color=orange>"..floor(100 -Link(level,SKILLS.zhanren150.missle_missrate[1])).."%<color>µÄ¸Å¢££¹µÐÈË¿Ö¾å"..
						--"<color=orange>"..szTime.."Ãë<color>\n"
			--end,
	},
	qiguan_changhong={ --khÝ qu¸n tr­êng hång
		manatoskill_enhance={{{1,100},{20,200}}}
	},
	huanyan_yunyan={ --huyÒn nh·n v©n yªn
                walkrunshadow={{{1,30},{30,315}},{{1,-1},{2,-1}}},
		addcoldmagic_v={{{1,30},{30,315}},{{1,-1},{2,-1}}},
                coldenhance_p={{{1,8},{30,80}},{{1,-1},{2,-1}}},
                lifemax_yan_p={{{1,21},{35,50},{36,50}},{{1,-1},{30,-1}}},
		addcolddamage_v={{{1,70},{30,315}},{{1,-1},{2,-1}}},
		attackspeed_v={{{1,12},{30,65},{33,70},{35,90},{38,95},{41,100}},{{1,-1},{2,-1}}},
		castspeed_v={{{1,12},{30,65},{33,70},{35,90},{38,95},{41,100}},{{1,-1},{2,-1}}},
		coldenhance_p={{{1,8},{30,37}},{{1,-1},{2,-1}}},
                fastwalkrun_p={{{1,10},{30,76}},{{1,20},{2,20}}}
		
	},
	shenguang_xuanrao={ --ma v©n kiÕm khÝ
                fastwalkrun_p={{{1,-10},{25,-50},{26,-50}},{{1,18*2},{20,18*2}}},
                skill_enhance={{{1,-25},{2,-25}},{{1,18*60},{20,18*60}}},
                skill_eventskilllevel={{{1,1},{20,20}}},
                skill_showevent={{{1,0},{10,0},{10,1},{15,1},{15,5},{20,5}}},
                skill_cost_v={{{1,15},{20,20}}},
                --skill_desc=
			--function(level)
				--return "ÀäÈ´£±¼ä£º<color=orange>"..floor(Link(level,SKILLS.wudang120.skill_mintimepercast_v[1]) / 18).."Ãë<color>\n"..
				--"Æï¢Ý£©Õ¹ÀäÈ´£±¼ä£º<color=orange>"..floor(Link(level,SKILLS.wudang120.skill_mintimepercastonhorse_v[1]) / 18).."Ãë<color>\n" ..
				--"ÓÐ<color=orange>"..floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])).."%<color>µÄ¸Å¢£<color>Çå³ýÖÜÎ§Ò»¶¨·¶Î§ÄÚÓÑ·½Íæ¼ÒµÄÒ×³£×´Ì¬\n"..
				--"ÓÐ<color=orange>"..floor(100 - Link(level,SKILLS.wudang120_child.missle_missrate[1])).."%<color>µÄ¸Å¢£<color>£¹×¤ÉÝ¶¤¸÷ÖÖ¸ºÃæ×´Ì¬ºÍ¼¼ÄÜÃ©Òß£¬³ÖÐø<color=orange>"..
				--floor(Link(level,SKILLS.wudang120_child.ignorenegativestate_p[2]) / 18).."Ãë<color>\n"
			--end,
               addskilldamage1={
			[1]={{1,1078},{2,1078}},
			[3]={{1,1},{20,60}}
		},
                stealmana_p={{{1,1},{20,5}}}
	},
	cangsong_yingke={ --th­¬ng cïng ng©n kh¸ch
		seriesdamage_p={{{1,10},{20,80}}},
                colddamage_v={
			[1]={{1,200},{20,1200}},
			[3]={{1,300},{20,1300}}
		},
                physicsenhance_p={{{1,40},{20,175}}},
		
		deadlystrike_p={{{1,10},{20,30}}},
		addskilldamage1={
			[1]={{1,329},{2,729}},
			[3]={{1,1},{20,60}}
		},
		addskilldamage2={
			[1]={{1,1291},{2,1291}},
			[3]={{1,1},{20,80}}
		},
                skill_eventskilllevel={{{1,1},{20,20}}},
                deadlystrike_p={{{1,16},{20,25}}},
                physicsenhance_p={{{1,12},{15,115},{20,280},{23,478},{26,577}}},
                --skill_desc=
			--function(level)
				--return "ÀäÈ´£±¼ä£º<color=orange>"..floor(Link(level,SKILLS.wudang120.skill_mintimepercast_v[1]) / 18).."Ãë<color>\n"..
				--"Æï¢Ý£©Õ¹ÀäÈ´£±¼ä£º<color=orange>"..floor(Link(level,SKILLS.wudang120.skill_mintimepercastonhorse_v[1]) / 18).."Ãë<color>\n" ..
				--"ÓÐ<color=orange>"..floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])).."%<color>µÄ¸Å¢£<color>Çå³ýÖÜÎ§Ò»¶¨·¶Î§ÄÚÓÑ·½Íæ¼ÒµÄÒ×³£×´Ì¬\n"..
				--"ÓÐ<color=orange>"..floor(100 - Link(level,SKILLS.wudang120_child.missle_missrate[1])).."%<color>µÄ¸Å¢£<color>£¹×¤ÉÝ¶¤¸÷ÖÖ¸ºÃæ×´Ì¬ºÍ¼¼ÄÜÃ©Òß£¬³ÖÐø<color=orange>"..
				--floor(Link(level,SKILLS.wudang120_child.ignorenegativestate_p[2]) / 18).."Ãë<color>\n"
			--end,
		missle_speed_v={{{1,24},{20,28}}},
		skill_attackradius={{{1,384},{20,448}}},
		skill_cost_v={{{1,20},{20,20}}}
	},
	duoming_start={ --doan mÖnh liªn hoµn tam tiªn kØ
		autoreplyskill={{{1,20 * 256 + 1},{20,20 * 256 + 20},{21,20*256 + 21}},{{1,-1},{2,-1}},{{1,10*18*256 + 1},{19,4*18*256 + 3},{20,5*18*256 + 3},{21,5*18*256 + 3}}},
		manareplenish_v={{{1,1},{20,10}},{{1,18},{2,18}}},
		manareplenish_p={{{1,1},{20,30}},{{1,18},{2,18}}},
		skill_skillexp_v={{	{1,SkillExpFunc(5000,1.25,1,3,1)},
							{2,SkillExpFunc(5000,1.15,2,3,1)},
							{3,SkillExpFunc(5000,1.16,3,3,1)},
							{4,SkillExpFunc(5000,1.17,4,3,1)},
							{5,SkillExpFunc(5000,1.18,5,3,1)},
							{6,SkillExpFunc(5000,1.19,6,3,1)},
							{7,SkillExpFunc(5000,1.20,7,3,1)},
							{8,SkillExpFunc(5000,1.21,8,3,1)},
							{9,SkillExpFunc(5000,1.22,9,3,1)},
							{10,SkillExpFunc(5000,1.23,10,3,1)},
							{11,SkillExpFunc(5000,1.24,11,3,1)},
							{12,SkillExpFunc(5000,1.23,12,3,1)},
							{13,SkillExpFunc(5000,1.22,13,3,1)},
							{14,SkillExpFunc(5000,1.21,14,3,1)},
							{15,SkillExpFunc(5000,1.20,15,3,1)},
							{16,SkillExpFunc(5000,1.19,16,3,1)},
							{17,SkillExpFunc(5000,1.18,17,3,1)},
							{18,SkillExpFunc(5000,1.17,18,3,1)},
							{19,SkillExpFunc(5000,1.16,19,3,1)},
							{20,SkillExpFunc(5000,1.15,20,3,1)},
							}},
              skill_eventskilllevel={{{1,1},{20,20}}},
              skill_showevent={{{1,0},{10,0},{10,1},{20,1}}}
	},
        pishi_poyu={ --ph¸ch th¹ch ph¸ ngäc
		seriesdamage_p={{{1,10},{20,80},{30,90}}},
		 colddamage_v={
			[1]={{1,200},{20,1200},{30,1400}},
			[3]={{1,300},{20,1300},{30,1500}}
		},
		skill_skillexp_v={{	{1,SkillExpFunc(5000,1.25,1,3,1)},
							{2,SkillExpFunc(5000,1.15,2,3,1)},
							{3,SkillExpFunc(5000,1.16,3,3,1)},
							{4,SkillExpFunc(5000,1.17,4,3,1)},
							{5,SkillExpFunc(5000,1.18,5,3,1)},
							{6,SkillExpFunc(5000,1.19,6,3,1)},
							{7,SkillExpFunc(5000,1.20,7,3,1)},
							{8,SkillExpFunc(5000,1.21,8,3,1)},
							{9,SkillExpFunc(5000,1.22,9,3,1)},
							{10,SkillExpFunc(5000,1.23,10,3,1)},
							{11,SkillExpFunc(5000,1.24,11,3,1)},
							{12,SkillExpFunc(5000,1.23,12,3,1)},
							{13,SkillExpFunc(5000,1.22,13,3,1)},
							{14,SkillExpFunc(5000,1.21,14,3,1)},
							{15,SkillExpFunc(5000,1.20,15,3,1)},
							{16,SkillExpFunc(5000,1.19,16,3,1)},
							{17,SkillExpFunc(5000,1.18,17,3,1)},
							{18,SkillExpFunc(5000,1.17,18,3,1)},
							{19,SkillExpFunc(5000,1.16,19,3,1)},
							{20,SkillExpFunc(5000,1.15,20,3,1)},
							}},
		skill_cost_v={{{1,35},{20,35}}},
		addskillexp1={{{1,0},{2,0}},{{1,1},{20,1}},{{1,0},{2,0}}}
	},
	jiujian_start={ --c­u kiÕm hîp nhÊt
		autoattackskill={{{1,719*256 + 1},{20,719*256 + 20},{21,719*256 + 21}},{{1,-1},{20,-1}},{{1,10*18*256 + 1},{15,10*18*256 + 12},{20,10*18*256 + 15},{21,10*18*256 + 15}}},
		manareplenish_v={{{1,1},{20,10}},{{1,18},{2,18}}},
		manareplenish_p={{{1,1},{20,10},{21,10}},{{1,18},{2,18}}},
		skill_skillexp_v={{	{1,SkillExpFunc(5000,1.25,1,3,1)},
							{2,SkillExpFunc(5000,1.15,2,3,1)},
							{3,SkillExpFunc(5000,1.16,3,3,1)},
							{4,SkillExpFunc(5000,1.17,4,3,1)},
							{5,SkillExpFunc(5000,1.18,5,3,1)},
							{6,SkillExpFunc(5000,1.19,6,3,1)},
							{7,SkillExpFunc(5000,1.20,7,3,1)},
							{8,SkillExpFunc(5000,1.21,8,3,1)},
							{9,SkillExpFunc(5000,1.22,9,3,1)},
							{10,SkillExpFunc(5000,1.23,10,3,1)},
							{11,SkillExpFunc(5000,1.24,11,3,1)},
							{12,SkillExpFunc(5000,1.23,12,3,1)},
							{13,SkillExpFunc(5000,1.22,13,3,1)},
							{14,SkillExpFunc(5000,1.21,14,3,1)},
							{15,SkillExpFunc(5000,1.20,15,3,1)},
							{16,SkillExpFunc(5000,1.19,16,3,1)},
							{17,SkillExpFunc(5000,1.18,17,3,1)},
							{18,SkillExpFunc(5000,1.17,18,3,1)},
							{19,SkillExpFunc(5000,1.16,19,3,1)},
							{20,SkillExpFunc(5000,1.15,20,3,1)},
							}},
              --skill_desc=
			--function(level)
				--return "Ò¤Ï¢ÑÜÉóµÄ¹©»·¼¼ÄÜµÈ¼¶È¡´Ë¼¼ÄÜºÍÏµÓ¦¹©»·µÈ¼¶µÄ×îµÍÕß\n"
			--end,
               skill_eventskilllevel={{{1,1},{20,20}}},
               skill_showevent={{{1,0},{10,0},{10,2},{20,2}}}
	},
        shenguang_xuanrao1={ --thÇn quang toµn nhiÔu
		colddamage_v={
			[1]={{1,45},{20,100}},
			[3]={{1,45},{20,100}}
		},
		candetonate1={{{1,20},{20,60},{21,62}}},
		candetonate2={{{1,448},{20,512}}},
		skill_cost_v={{{1,30},{20,65}}},
		--skill_desc=
			--function(level)
				--return "Ò¤Ï¢ÑÜÉóµÄ¹©»·¼¼ÄÜµÈ¼¶È¡´Ë¼¼ÄÜºÍÏµÓ¦¹©»·µÈ¼¶µÄ×îµÍÕß\n"
			--end,
                skill_skillexp_v={{	{1,17851239},
							{2,19487603},
							{3,22760330},
							{4,27669421},
							{5,34214875},
							{6,42396694},
							{7,52214875},
							{8,63669421},
							{9,76760330},
							{10,91487603},
							{11,107851239},
							{12,135669421},
							{13,174942148},
							{14,225669421},
							{15,274418181},
							{16,344618181},
							{17,425738181},
							{18,517778181},
							{19,620738181},
							{20,620738181},
							}},	
		skill_showevent={{{1,0},{10,0},{10,1},{20,1}}},
	},
	jiujian_heyi={ --§éc c« cöu kiÕm
                fatallystrike_p={{{1,12},{20,50}}},
		physicsenhance_p={{{1,55},{20,535},{23,686},{26,762}}},
		seriesdamage_p={{{1,40},{15,40},{20,80},{21,82}}},
		colddamage_v={
			[1]={{1,20},{15,200},{20,400},{23,640},{26,760}},
			[3]={{1,30},{15,200},{20,500},{23,860},{26,1040}}
		},
		deadlystrike_p={{{1,6},{20,80},{23,103},{26,115}}},
		skill_skillexp_v={{	{1,SkillExpFunc(5000,1.25,1,3,1)},
							{2,SkillExpFunc(5000,1.15,2,3,1)},
							{3,SkillExpFunc(5000,1.16,3,3,1)},
							{4,SkillExpFunc(5000,1.17,4,3,1)},
							{5,SkillExpFunc(5000,1.18,5,3,1)},
							{6,SkillExpFunc(5000,1.19,6,3,1)},
							{7,SkillExpFunc(5000,1.20,7,3,1)},
							{8,SkillExpFunc(5000,1.21,8,3,1)},
							{9,SkillExpFunc(5000,1.22,9,3,1)},
							{10,SkillExpFunc(5000,1.23,10,3,1)},
							{11,SkillExpFunc(5000,1.24,11,3,1)},
							{12,SkillExpFunc(5000,1.23,12,3,1)},
							{13,SkillExpFunc(5000,1.22,13,3,1)},
							{14,SkillExpFunc(5000,1.21,14,3,1)},
							{15,SkillExpFunc(5000,1.20,15,3,1)},
							{16,SkillExpFunc(5000,1.19,16,3,1)},
							{17,SkillExpFunc(5000,1.18,17,3,1)},
							{18,SkillExpFunc(5000,1.17,18,3,1)},
							{19,SkillExpFunc(5000,1.16,19,3,1)},
							{20,SkillExpFunc(5000,1.15,20,3,1)},
							}},
		skill_misslenum_v={{{1,1},{10,1},{20,3},{21,3}}},
		addskilldamage1={
			[1]={{1,1061},{2,1061}},
			[3]={{1,1},{20,25}}
		}
	},
	yuquan_xichen={ --ÓñÈªÏ´³¾
		physicsenhance_p={{{1,30},{20,148}}},
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		deadlystrike_p={{{1,10},{20,20}}},
	},
	jianemei150={ --½£¶ëÃ¼150
		physicsenhance_p={{{1,12},{15,120},{20,285},{23,483},{26,582}}},
		seriesdamage_p={{{1,40},{15,40},{20,80},{21,82}}},
		colddamage_v={
			[1]={{1,20},{20,195},{23,250},{26,277}},
			[3]={{1,20},{20,195},{23,250},{26,277}}
		},
		deadlystrike_p={{{1,12},{20,65},{23,81},{26,90}}},
		missle_speed_v={{{1,36},{20,36},{21,36}}},
		skill_attackradius={{{1,448},{20,512},{21,512}}},
		skill_cost_v={{{1,45},{20,45}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_startevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[3]={{1,1089},{20,1089}}
		},
		skill_showevent={{{1,0},{10,0},{10,1},{20,1}}},
		skill_skillexp_v={{	{1,300},
												{2,600},
												{3,1000},
												{4,1500},
												{5,2100},
												{6,2800},
												{7,3600},
												{8,4500},
												{9,5500},
												{10,6600},
												{11,7800},
												{12,9100},
												{13,10500},
												{14,12000},
												{15,13600},
												{16,15300},
												{17,17100},
												{18,19000},
												{19,21400},
												{20,21000},
												}},	
	},
	jianemei150_2={ --½£¶ëÃ¼150µÚ2£½
		physicsenhance_p={{{1,36},{20,175},{23,218},{26,240}}},
		seriesdamage_p={{{1,40},{20,80},{21,82}}},
		deadlystrike_p={{{1,12},{20,24},{23,27}}},
		colddamage_v={
			[1]={{1,10},{20,110},{23,141},{26,157}},
			[3]={{1,10},{20,110},{23,141},{26,157}}
		},
	},
	qianfo_qianye={ --Ç§·ðÇ§Ò¶
		colddamage_v={
			[1]={{1,45},{20,100}},
			[3]={{1,45},{20,100}}
		},
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		skill_attackradius={{{1,448},{20,512}}},
		skill_cost_v={{{1,30},{20,65}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_startevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[3]={{1,380},{20,380}}
		},
		skill_showevent={{{1,0},{10,0},{10,1},{20,1}}},
		addskillexp1={{{1,0},{2,0}},{{1,1},{20,10}},{{1,0},{2,0}}},
		skill_skillexp_v={{{1,20000},{20,100000000,Conic}}},
	},
	fengshuang_suiying={ --·çËªËÐÓ°
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		colddamage_v={
			[1]={{1,20},{15,350},{20,770}},
			[3]={{1,30},{15,400},{20,1000}}
		},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_cost_v={{{1,30},{20,65}}},
		skill_startevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[3]={{1,331},{20,331}}
		},
		addskilldamage1={
			[1]={{1,1062},{2,1062}},
			[3]={{1,1},{20,25}}
		},
		skill_showevent={{{1,0},{10,0},{10,1},{20,1}}},
		addskillexp1={{{1,0},{2,0}},{{1,1},{20,1}},{{1,0},{2,0}}},
		skill_skillexp_v={{	{1,SkillExpFunc(6260,1.25,1,3,1)},
							{2,SkillExpFunc(6260,1.15,2,3,1)},
							{3,SkillExpFunc(6260,1.16,3,3,1)},
							{4,SkillExpFunc(6260,1.17,4,3,1)},
							{5,SkillExpFunc(6260,1.18,5,3,1)},
							{6,SkillExpFunc(6260,1.19,6,3,1)},
							{7,SkillExpFunc(6260,1.20,7,3,1)},
							{8,SkillExpFunc(6260,1.21,8,3,1)},
							{9,SkillExpFunc(6260,1.22,9,3,1)},
							{10,SkillExpFunc(6260,1.23,10,3,1)},
							{11,SkillExpFunc(6260,1.24,11,3,1)},
							{12,SkillExpFunc(6260,1.23,12,3,1)},
							{13,SkillExpFunc(6260,1.22,13,3,1)},
							{14,SkillExpFunc(6260,1.21,14,3,1)},
							{15,SkillExpFunc(6260,1.20,15,3,1)},
							{16,SkillExpFunc(6260,1.19,16,3,1)},
							{17,SkillExpFunc(6260,1.18,17,3,1)},
							{18,SkillExpFunc(6260,1.17,18,3,1)},
							{19,SkillExpFunc(6260,1.16,19,3,1)},
							{20,SkillExpFunc(6260,1.15,20,3,1)},
							}},
	},
	jinding_foguang={ --½ð¶¥·ð¹©
		colddamage_v={
			[1]={{1,10},{20,585},{21,600}},
			[3]={{1,10},{20,585},{21,600}},
		},
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		missle_speed_v={{{1,24},{20,28},{21,28}}},
		skill_misslenum_v={{{1,1},{10,1},{20,3},{21,3}}},
	},
	zhangemei150={ --ÕÆ¶ëÃ¼150
		seriesdamage_p={{{1,40},{15,40},{20,80},{21,82}}},
		colddamage_v={
			[1]={{1,24},{15,420},{20,930},{23,1542},{26,1848}},
			[3]={{1,36},{15,480},{20,1200},{23,2064},{26,2496}}
		},
		skill_cost_v={{{1,36},{20,78},{23,91}}},
		skill_skillexp_v={{	{1,300},
												{2,600},
												{3,1000},
												{4,1500},
												{5,2100},
												{6,2800},
												{7,3600},
												{8,4500},
												{9,5500},
												{10,6600},
												{11,7800},
												{12,9100},
												{13,10500},
												{14,12000},
												{15,13600},
												{16,15300},
												{17,17100},
												{18,19000},
												{19,21400},
												{20,21000},
												}},	
	},
	zhangemei150_2={ --ÕÆ¶ëÃ¼150µÚ2£½
		colddamage_v={
			[1]={{1,10},{20,585},{21,600}},
			[3]={{1,10},{20,585},{21,600}},
		},
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		missle_speed_v={{{1,24},{20,28},{21,28}}},
		skill_misslenum_v={{{1,1},{10,1},{20,3},{21,3}}},
	},
	emei120={ --¶ë¸Ò120¼¶¼¼ÄÜ
		skill_appendskill={{{1,86},{20,86}},{{1,1},{19,19},{20,40},{21,40}}},
		skill_desc=
			function(level)
				return "Ò¤Ï¢ÑÜÉóµÄ¹©»·¼¼ÄÜµÈ¼¶È¡´Ë¼¼ÄÜºÍÏµÓ¦¹©»·µÈ¼¶µÄ×îµÍÕß\n"
			end,
		skill_skillexp_v={{	{1,17851239},
							{2,19487603},
							{3,22760330},
							{4,27669421},
							{5,34214875},
							{6,42396694},
							{7,52214875},
							{8,63669421},
							{9,76760330},
							{10,91487603},
							{11,107851239},
							{12,135669421},
							{13,174942148},
							{14,225669421},
							{15,274418181},
							{16,344618181},
							{17,425738181},
							{18,517778181},
							{19,620738181},
							{20,620738181},
							}},	
	},
	emei120_1={ --¶ë¸Ò120¼¶¼¼ÄÜ
		skill_appendskill={{{1,89},{20,89}},{{1,1},{19,19},{20,40},{21,40}}},
	},
	emei120_2={ --¶ë¸Ò120¼¶¼¼ÄÜ
		skill_appendskill={{{1,92},{20,92}},{{1,1},{19,19},{20,40},{21,40}}},
	},
	emei120_3={ --¶ë¸Ò120¼¶¼¼ÄÜ
		skill_appendskill={{{1,282},{20,282}},{{1,1},{19,19},{20,40},{21,40}}},
	},
	emei120_4={ --¶ë¸Ò120¼¶¼¼ÄÜ
		skill_appendskill={{{1,332},{20,332}},{{1,1},{19,19},{20,40},{21,40}}},
	},
	fuzhuemei150={ --¸¨Öó150
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		colddamage_v={
			[1]={{1,20},{15,200},{20,400},{23,640},{26,760}},
			[3]={{1,30},{15,200},{20,500},{23,860},{26,1040}}
		},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_cost_v={{{1,30},{20,65},{23,76}}},
		skill_flyevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[2]={{1,20},{20,20}},
			[3]={{1,1115},{20,1115}}
		},
		skill_showevent={{{1,0},{10,0},{10,2},{20,2}}},
		skill_skillexp_v={{	{1,300},
												{2,600},
												{3,1000},
												{4,1500},
												{5,2100},
												{6,2800},
												{7,3600},
												{8,4500},
												{9,5500},
												{10,6600},
												{11,7800},
												{12,9100},
												{13,10500},
												{14,12000},
												{15,13600},
												{16,15300},
												{17,17100},
												{18,19000},
												{19,21400},
												{20,21000},
												}},	
	},
}
-----------------------------------------------
--Create by yfeng 2004-05-20
-----------------------------------------------

-----------------------------------------------
--¸ï¾Ý2¸öµ·£¬ÇãÏßÐÎº¯£ýf(x)=k*x+b
--y= (y2-y1)*(x-x1)/(x2-x1)+y1
--µ±x2=x1, ÓÐx=c,¸ÃÖ±Ïß£ÇÒ»Ìâ´¹Ö±ÓÚxÖ¸µÄÖ±Ïß
--Õ©£Ç¿ÉÒ¤È¡µÃy=ÈÎÒ©Öµ
--Òß´Ë£¬Èç¹ûÒÑÖªÁ½µ·(x1,y1),(x2,y2)¿ÉÇãµÃ¹ý´Ë2µ·µÄ
--º¯£ýÎª£º
function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--¸ï¾Ý2¸öµ·£¬Çã2´ÎÐÎº¯£ýf(x)=a*x2+c

--º¯£ýÎª£ºextrac
function Conic(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end

-----------------------------------------------
--¸ï¾Ý2¸öµ·£¬Çã-2´ÎÐÎº¯£ýf(x)=a*sqrt(x2)+c

--º¯£ýÎª£ºextrac
function Extrac(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--ÃÌ»æÁ¬½ÓÏß:Link(x,points)

--ÐÎÈç£ºpoints£ÇÐÎÈç{{x1,y1,func=xxx},{x2,y2,func=xxx},...{xn,yn,func=xxx}}µÄÓ³Éä
function Link(x,points)
	num = getn(points)
	if(num<2) then
		return -1
	end
	for i=1,num do
		if(points[i][3]==nil) then
			points[i][3]=Line
		end
	end
	if(x < points[1][1]) then
		return points[1][3](x,points[1][1],points[1][2],points[2][1],points[2][2])
	end
	if(x > points[num][1]) then
		return points[num][3](x,points[num-1][1],points[num-1][2],points[num][1],points[num][2])
	end
	
	c = 2
	for i=2,num do
		if((x >= points[i-1][1]) and (x <= points[i][1])) then
			c = i
			break
		end
	end
	return points[c][3](x,points[c-1][1],points[c-1][2],points[c][1],points[c][2])
end

------------------------------------------------------
--¼¼ÄÜÉÌ¶¨¸ñ£½ÈçÏ¢£º
--SKILLS={
--	¼¼ÄÜÃû³Æ=	{
--		Ä§·¨£«Ð¤=	{

--		Ä§·¨£«Ð¤=	{
--			[1]={{¼¶±ð,£ýÖµ£¬ÇóÏß}£¬{¼¶±ð£¬£ýÖµ£¬ÇóÏß}£¬¡£¡£¡£¡£}£¬
--			[2]={{¼¶±ð,£ýÖµ£¬ÇóÏß}£¬{¼¶±ð£¬£ýÖµ£¬ÇóÏß}£¬¡£¡£¡£¡£}£¬
--			[3]={{¼¶±ð,£ýÖµ£¬ÇóÏß}£¬{¼¶±ð£¬£ýÖµ£¬ÇóÏß}£¬¡£¡£¡£¡£}£¬	
--		}£¬
--		¡£¡£¡£¡£¡£
--	}£¬
--	¡£¡£¡£¡£¡£
--}
--Èç£º
--SKILLS={
--	Sanhuan-taoyue={
--		physicsenhance_p={
--			[1]={{1,50},{20,335}},--Ä§·¨£«Ð¤physicsenhance_p²Î£ý1£¬1¼¶£±Îª35£¬20¼¶£±Îª335£¬ÇóÏß²»Ìî£¬Ä¬ÈÏÏßÐÎ
--			[2]={{1,0},{20,0}},
--		},--Ã»ÓÐ[3]£¬±Ý£¾Ä§·¨£«Ð¤physicsenhance_p²Î£ý2£¬Ä¬ÈÏÎªÈÎºÎ£±ºß¶¼£Ç0
--		lightingdamage_v={

--data£º¼¼ÄÜÃû³Æ
--level£º¼¼ÄÜµÈ¼¶
--return£ºµ±¼¼ÄÜÃû³ÆÎªdata£¬¼¼ÄÜµÈ¼¶Îªlevel
--			£±µÄÄ§·¨£«Ð¤levelnameËïÐÌÇãµÄÈý¸ö²Î£ýµÄ¾ßÌåÖµ
-----------------------------------------------------------
function GetSkillLevelData(levelname, data, level)
	if(data==nil) then
		return ""
	end
	if(data == "") then
		return ""
	end
	if(SKILLS[data]==nil) then
		return ""
	end
	if(SKILLS[data][levelname]==nil) then
		return ""
	end
	if(type(SKILLS[data][levelname]) == "function") then
		return SKILLS[data][levelname](level)
	end
	if(SKILLS[data][levelname][1]==nil) then
		SKILLS[data][levelname][1]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][2]==nil) then
		SKILLS[data][levelname][2]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][3]==nil) then
		SKILLS[data][levelname][3]={{0,0},{20,0}}
	end
	p1=floor(Link(level,SKILLS[data][levelname][1]))
	p2=floor(Link(level,SKILLS[data][levelname][2]))
	p3=floor(Link(level,SKILLS[data][levelname][3]))
	return Param2String(p1,p2,p3)
end;


function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;



