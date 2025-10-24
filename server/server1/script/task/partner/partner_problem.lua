-------------------------------------------------------------------------
-- FileName		:	partner_problem.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-07-07 11:28:15
-- Desc			:  	Í¬°éÏµÍ³ÎÊÌâ¼¯ºÏ
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\newtask\\newtask_head.lua") --µ÷ÓÃ nt_getTask Í¬²½±äÁ¿µ½¿Í»§¶ËµÄÀµ
TabFile_Load("\\settings\\task\\partner\\problem\\partner_allproblem.txt","allproblem") --µ÷ÓÃÎÊÌâºÍ´ð°¸
Include("\\script\\task\\partner\\partner_head.lua") --°üº¬ÁËÍ¼Ïóµ÷ÓÃ



--pronumb£º  	 »Ø´ðÎÊÌâÐèÒª´ð¶ÔµÄÊýÄ¿
--numbmin£º   	»Ø´ðÎÊÌâµÄÌâºÅ×îÐ¡Öµ
--numbmax£º   	»Ø´ðÎÊÌâµÄÌâºÅ×î´óÖµ
--numblength£º	»Ø´ðÎÊÌâÊ±ÔÊÐí³ö´íµÄ×î´ó´ÎÊý
--taskvalue£º 	»Ø´ðÎÊÌâºóÉèÖÃ×Ö½Ú¿ª¹ØµÄÏµ¹Ø±äÁ¿
--taskbyte£º    »Ø´ðÎÊÌâ¢ú×ã´ð¶ÔÊýÄ¿ÒªÇóºóÉèÖÃ×Ö½Ú¿ª¹ØµÄ×Ö½ÚÎ»Êý
--prblemchange  Îª1Ê±£¬ÔòÔÚÎÊÌâÍêÈ«´ð¶ÔµÄÊ±ºò½øÐÐ»Øµ÷ 
--prblemchange  Îª2Ê±£¬ÔòÔÚÎÊÌâ»Ø´ðÃ»ÓÐ´ïµ½ÒªÇóÊ±½øÐÐ»Øµ÷
--prblemchange  Îª3»òÕßÈÎÒâ>=3 µÄÊý×Ö£¬ÔòÎÊÌâ²»»áÔÚ¹æ¶¨´ÎÊýÄÚÖÐ¶Ï
--prblemchange  Îª0Ê±Ôò»Ø´ð´íÒ»´Î¾ÍÖÐ¶Ï
--keepon£º      »Øµ÷º¯ÊýËùÔÚÊý×épartner_keeponproblemµÄÊý×éÎ»ÖÃ

partner_answer =
{
[1]={2,3,4,6,8,16,19,25,29,30,36,42,45,51,55,59,62,67,69,72,80,82,84,88,90,91,95,117},
[2]={5,10,12,13,17,20,22,23,26,27,31,34,38,41,46,48,49,50,52,56,60,61,64,71,77,81,87,86,93,94,96,98,99,102,106,109,110,111,113,115,116,118},
[3]={1,7,9,11,14,15,18,21,24,28,32,33,35,37,39,40,43,44,47,53,54,57,58,63,65,66,68,70,73,74,75,76,78,79,83,85,89,92,97,100,101,103,104,105,107,108,112,114}
}

partner_keeponproblem ={} 

function partner_edu(pronumb,numbmin,numbmax,numblength,taskvalue,taskbyte,problemchange,keepon)   
	nt_setTask(1233,0)                     --È¥³ýµô´ð¶Ô´ÎÊý
	SetTaskTemp(182,0)         			   --ÁÙÊ±±äÁ¿182¼Ç¢¼ÎÊÌâµÄÌâºÅ	
	SetTaskTemp(183,0)         			   --ÁÙÊ±±äÁ¿183¼Ç¢¼ÎÊÌâµÄ´ð¶Ô´ÎÊý			
	SetTaskTemp(184,0)         			   --ÁÙÊ±±äÁ¿184¼Ç¢¼ÎÊÌâµÄÌâºÅ×îÐ¡Öµ			
	SetTaskTemp(185,0)         			   --ÁÙÊ±±äÁ¿185¼Ç¢¼ÎÊÌâµÄÌâºÅ×î´óÖµ			
	SetTaskTemp(186,0)        			   --ÁÙÊ±±äÁ¿186¼Ç¢¼ÎÊÌâµÄ»Ø´ð´ÎÊý			
	SetTaskTemp(187,0)         			   --ÁÙÊ±±äÁ¿187¼Ç¢¼ÎÊÌâµÄ¿ª¹ØÈÎÎñ±äÁ¿			
	SetTaskTemp(188,0)         			   --ÁÙÊ±±äÁ¿188¼Ç¢¼ÎÊÌâµÄ¿ª¹Ø×Ö½Ú		
	SetTaskTemp(190,0) 	
	SetTaskTemp(191,0) 
	partner_eduproblem(pronumb,numbmin,numbmax,numblength,taskvalue,taskbyte,problemchange,keepon) 
end

function partner_eduproblem(pronumb,numbmin,numbmax,numblength,taskvalue,taskbyte,problemchange,keepon)   
	
	if ( numblength == 0 ) then
		Msg2Player("ThËt xin lçi, ng­¬i ®· ®¹t ®Õn tr¶ lêi vÊn ®Ò sai lÇm th­îng h¹n, xin thö l¹i lÇn n÷a.")
		nt_setTask(1233,0)                                                --´ïµ½´ð´í¼«ÏÞ£¬È¥³ýµô´ð¶Ô´ÎÊý
		if (keepon ~= nil and keepon >= 1 and keepon <= getn(partner_keeponproblem)) then
			partner_keeponproblem[keepon](0)
		end
		return 
	end
	
	local partner_problemnumber = random(numbmin,numbmax)                 --ÔÚÌá¹©µÄÌâºÅ·¶Î§ÄÚËæ»ú³öÌâ
	
	SetTaskTemp(182,partner_problemnumber)         --ÁÙÊ±±äÁ¿182¼Ç¢¼ÎÊÌâµÄÌâºÅ	
	SetTaskTemp(183,pronumb)         			   --ÁÙÊ±±äÁ¿183¼Ç¢¼ÎÊÌâµÄ´ð¶Ô´ÎÊý			
	SetTaskTemp(184,numbmin)         			   --ÁÙÊ±±äÁ¿184¼Ç¢¼ÎÊÌâµÄÌâºÅ×îÐ¡Öµ			
	SetTaskTemp(185,numbmax)         			   --ÁÙÊ±±äÁ¿185¼Ç¢¼ÎÊÌâµÄÌâºÅ×î´óÖµ			
	SetTaskTemp(186,numblength)        			   --ÁÙÊ±±äÁ¿186¼Ç¢¼ÎÊÌâµÄ»Ø´ð´ÎÊý			
	SetTaskTemp(187,taskvalue)         			   --ÁÙÊ±±äÁ¿187¼Ç¢¼ÎÊÌâµÄ¿ª¹ØÈÎÎñ±äÁ¿			
	SetTaskTemp(188,taskbyte)         			   --ÁÙÊ±±äÁ¿188¼Ç¢¼ÎÊÌâµÄ¿ª¹Ø×Ö½Ú		
	SetTaskTemp(190,problemchange) 	               --ÁÙÊ±±äÁ¿190¼Ç¢¼ÎÊÌâ´ð¶Ô´ð´íÊ±µÄ»Øµ÷º¯Êý	
	SetTaskTemp(191,keepon)                        --ÁÙÊ±±äÁ¿191¼Ç¢¼Èç¹û»Øµ÷µÄ»°£¬»Øµ÷º¯ÊýËùÔÚÊý×éµÄÎ»ÖÃ
	partner_p(partner_problemnumber) 	
		
end

function partner_p(partner_problemnumber) 	
	local nRowCount = TabFile_GetRowCount("allproblem")
	for i=1,nRowCount do 
		local problem_id = tonumber( TabFile_GetCell( "allproblem" ,i , "problemid" ))
		if ( problem_id == partner_problemnumber ) then
			local problem_content = TabFile_GetCell( "allproblem" ,i , "problemcontent")
			local problem_a = TabFile_GetCell( "allproblem" ,i , "channelA")
			local problem_b = TabFile_GetCell( "allproblem" ,i , "channelB")
			local problem_c = TabFile_GetCell( "allproblem" ,i , "channelC")
			Describe(DescLink_TongBanJiaoYu.."£º"
			..problem_content.."?<enter>"
			.."A:"..problem_a.."<enter>"
			.."B:"..problem_b.."<enter>"
			.."C:"..problem_c,3,
			"A/partner_problema",
			"B/partner_problemb",
			"C/partner_problemc")
		end
	end
end

function partner_problema()
	partner_problem(1);
end

function partner_problemb()
	partner_problem(2);
end

function partner_problemc()
	partner_problem(3);
end

function partner_problem(nAnswer)
	local j = 1
	local Uworld186 = GetTaskTemp(186)                                       
	SetTaskTemp(186,Uworld186-1) 											  --ÔÊÐí»Ø´ðµÄ´ÎÊý-1
	
	for i=1,getn(partner_answer[nAnswer]) do                                        --ÔÚÌâ¿âAÖÐÑ¡ÔñÌâºÅ
		if ( GetTaskTemp(182) == partner_answer[nAnswer][i] ) then                    --Èç¹ûÌâ¿âAµÄÕýÈ·´ð°¸µÄÌâºÃÓÐÓë¸ø³öÌâºÅÒ»Ö¢µÄ
			j = j+1
			local Uworld1233 = nt_getTask(1233)
			nt_setTask(1233,Uworld1233+1)                                     --¸ø´ð¶ÔÌâÊý+1
			Msg2Player("Chóc mõng ngµi ®¸p ®óng råi!")
			
			if (   GetTaskTemp(183)  == nt_getTask(1233) ) then				  --µ±Íæ¼ÒÔÚÔÊÐí´ÎÊýÄÚ´ð¶ÔÁËÏµÓ¦´ÎÊýÔò	  
				if ( GetTaskTemp(187) ~= 0 ) then							  --Èç¹ûÈÎÎñ±äÁ¿Îª0£¬Ôò²»ÉèÖÃÍê³É×´Ì¬	
					nt_setTask(GetTaskTemp(187),SetBit(GetTask(GetTaskTemp(187)),GetTaskTemp(188),1))  --¸ø´«ÈëÈÎÎñ±äÁ¿µÄÏµÓ¦×Ö½ÚÖÃÎªÍê³É×´Ì¬
				end
				Msg2Player("Chóc mõng ng­¬i tr¶ lêi chÝnh x¸c sè l­îng ®· ®¹t tíi yªu cÇu !")
				
				local nProblemIdx = GetTaskTemp(191)
				if (nProblemIdx ~= nil and nProblemIdx >= 1 and nProblemIdx <= getn(partner_keeponproblem)) then
					partner_keeponproblem[nProblemIdx](1)
				end	
				
				return 10
			end
		end
	end
	if ( j == 1) then
		Msg2Player("ThËt xin lçi, ng­¬i ®¸p sai lÇm råi.")
		if ( GetTaskTemp(190) == 0 ) then
			return
		end
	end
	partner_eduproblem(GetTaskTemp(183),GetTaskTemp(184),GetTaskTemp(185),GetTaskTemp(186),GetTaskTemp(187),GetTaskTemp(188),GetTaskTemp(190),GetTaskTemp(191))   	
end
