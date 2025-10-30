Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-----------------------------------------------
ListHKMP={

"[C�c ph�m] ��ng S�t B�ch Kim �i�u Long Gi�i","[C�c ph�m] ��ng S�t B�ch Ng�c C�n Kh�n B�i","[C�c ph�m] ��ng S�t B�ch Kim T� Ph�ng Gi�i","[C�c ph�m] ��ng S�t Ph� Th�y Ng�c H�ng Khuy�n",
"[C�c ph�m] H�ng �nh Tr�m Vi�n V�n T�y","[C�c ph�m] H�ng �nh Ki�m Qua T�y Ph��ng","[C�c ph�m] H�ng �nh M�c T�c T��ng Vong","[C�c ph�m] H�ng �nh H�ng T� Chi�u",

}
---------------------------------
function donganh() 
dofile("script/global/mel/donganh.lua")
	local tbOpt = {
		{"N�ng c�p trang b� ��ng �nh",DoiDongAnh},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>C�c h� mu�n n�ng c�p trang b� ��ng �nh �?<color>", tbOpt)
end

function DoiDongAnh()
	local tbOpt = {
		{"B� v�o 2 b� C�c Ph�m ��ng S�t v� H�ng �nh",DoiDongAnh2},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>��t v�o 2 b� trang b� C�c ph�m ��ng S�t v� H�ng �nh<color>", tbOpt)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiDongAnh2()
	GiveItemUI( "��i b� trang b� ��ng �nh", "B�n c�n ��t v�o 2 b� trang b� ��ng S�t v� H�ng �nh C�c Ph�m v� h�nh trang c� 200 ti�n ��ng th� c� th� ��i ���c", "DoiDongAnh3", "onCancel",1 );
end

function DoiDongAnh3( nCount )
	countvk = 0
	if nCount ~= 8 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%ListHKMP) do
				if szName == %ListHKMP[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 8 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=200) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(200, 4, 417, 1, 1)
			AddGoldItem(0,5292)
			AddGoldItem(0,5293)
			AddGoldItem(0,5294)
			AddGoldItem(0,5295)
			Msg2Player("Ch�c M�ng "..GetName().." n�ng c�p b� trang b� <color=green>��ng �nh<color> Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� 200 Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
