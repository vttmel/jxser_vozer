Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-----------------------------------------------
ListHKMP={
"M�ng Long Ch�nh H�ng T�ng M�o","M�ng Long Kim Ti Ch�nh H�ng C� Sa","M�ng Long Huy�n Ti Ph�t ��i","M�ng Long Ph�t Ph�p Huy�n B�i","M�ng Long ��t Ma T�ng h�i","[Tr�n Bang Chi B�o] M�ng Long T� Kim B�t Nh� Gi�i",
"Ph�c Ma T� Kim C�n","Ph�c Ma Huy�n Ho�ng C� Sa","Ph�c Ma � Kim Nhuy�n �i�u","Ph�c Ma Ph�t T�m Nhuy�n Kh�u","Ph�c Ma Ph� �� T�ng h�i","[Tr�n Bang Chi B�o] Ph�c Ma V� L��ng Kim Cang Uy�n",
"T� Kh�ng Gi�ng Ma Gi�i �ao","T� Kh�ng T� Kim C� Sa","T� Kh�ng H� ph�p Y�u ��i","T� Kh�ng Nhuy�n B� H� Uy�n","T� Kh�ng Gi�i Lu�t Ph�p gi�i","[Tr�n Bang Chi B�o] T� Kh�ng ��t Ma T�ng H�i",

"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y","H�m Thi�n V� Th�n T��ng Kim Gi�p","H�m Thi�n Uy V� Th�c y�u ��i","H�m Thi�n H� ��u Kh�n Th�c Uy�n","H�m Thi�n Th�a Long Chi�n Ngoa",
"K� Nghi�p B�n L�i To�n Long th��ng","K� Nghi�p Huy�n V� Ho�ng Kim Kh�i","K� Nghi�p B�ch H� V� Song kh�u","K� Nghi�p H�aV�n K� L�n Th� ","K� Nghi�p Chu T��c L�ng V�n Ngoa",
"Ng� Long L��ng Ng�n B�o �ao","Ng� Long Chi�n Th�n Phi Qu�i gi�p","Ng� Long Thi�n M�n Th�c Y�u ho�n","Ng� Long T�n Phong H� y�n","Ng� Long Tuy�t M�nh Ch� ho�n","[Tr�n Bang Chi B�o] Ng� Long T�n Phong Ph�t C�",

"V� Gian � Thi�n Ki�m","V� Gian Thanh Phong Truy Y","V� Gian Ph�t V�n Ti ��i","V� Gian C�m V�n H� Uy�n","V� Gian B�ch Ng�c B�n Ch� ","[Tr�n Bang Chi B�o] V� Gian Thanh Phong Nhuy�n K�ch",
"V� Ma Ma Ni qu�n","V� Ma T� Kh�m C� Sa","V� Ma B�ng Tinh Ch� Ho�n","V� Ma T�y T��ng Ng�c Kh�u ","V� Ma H�ng Truy Nhuy�n Th�p h�i","[Tr�n Bang Chi B�o] V� Y�m Thu Th�y L�u Quang ��i",
"V� Tr�n Ng�c N� T� T�m qu�n","V� Tr�n Thanh T�m H��ng Thi�n Ch�u","V� Tr�n T� Bi Ng�c Ban Ch� ","V� Tr�n Ph�t T�m T� H�u Y�u Ph�i","V� Tr�n Ph�t Quang Ch� Ho�n","[Tr�n Bang Chi B�o] V� Tr�n T�nh �nh L�u T�",

"T� Ho�ng Ph�ng Nghi �ao","T� Ho�ng Tu� T�m Khinh Sa Y","T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i","T� Ho�ng B�ng Tung C�m uy�n","T� Ho�ng Th�y Ng�c Ch� Ho�n","[Tr�n Bang Chi B�o] Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u",
"B�ch H�i Uy�n ��ng Li�n Ho�n �ao","B�ch H�i Ho�n Ch�u V� Li�n","B�ch H�i H�ng Linh Kim Ti ��i","B�ch H�i H�ng L�ng Ba","B�ch H�i Khi�n T� Ch� ho�n","[Tr�n Bang Chi B�o] B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n",

"U Lung Kim X� Ph�t ��i","U Lung X�ch Y�t M�t trang","U Lung Thanh Ng� Tri�n y�u","U Lung Ng�n Th�m H� Uy�n","U Lung M�c Th� Nhuy�n L� ",
"Minh �o T� S�t ��c Nh�n","Minh �o U ��c �m Y","Minh �o ��c Y�t Ch� Ho�n","Minh �o H� C�t H� uy�n","Minh �o Song Ho�n X� H�i","[Tr�n Bang Chi B�o] Minh Hoan Song Ho�n X� Kh�u",
"Ch� Ph��c Ph� gi�p ��u ho�n","Ch� Ph��c Di�t L�i C�nh Ph� ","Ch� Ph��c U �o Ch� Ho�n","Ch� Ph��c Xuy�n T�m ��c Uy�n","Ch� Ph��c B�ng H�a Th�c C�t Ngoa","[Tr�n Bang Chi B�o] Ch� Ph�c Tr�ng C�t Ng�c B�i",

"B�ng H�n ��n Ch� Phi �ao","B�ng H�n Huy�n Y Th�c Gi�p","B�ng H�n T�m Ti�n Y�u Kh�u","B�ng H�n Huy�n Thi�n B�ng H�a B�i","B�ng H�n Nguy�t �nh Ngoa",
"Thi�n Quang Hoa V� M�n Thi�n","Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ","Thi�n Quang S�m La Th�c ��i","Thi�n Quang Song B�o H�n Thi�t Tr�c","Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n","[Tr�n Bang Chi B�o] Thi�n Quang ��a H�nh Thi�n L�  Ngoa",
"S�m Hoang Phi Tinh �o�t H�n","S�m Hoang KimTi�n Li�n Ho�n Gi�p","S�m Hoang H�n Gi�o Y�u Th�c","S�m Hoang Huy�n Thi�t T��ng Ng�c B�i","S�m Hoang Tinh V�n Phi L� ",
"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n","��a Ph�ch H�c Di�m Xung Thi�n Li�n","��a Ph�ch T�ch L�ch L�i H�a Gi�i","��a Ph�ch Kh�u T�m tr�c","��a Ph�ch ��a H�nh Thi�n L� Ngoa","[Tr�n Bang Chi B�o] ��a Ph�ch Phong H�n Th�c Y�u",

"��ng C�u Phi Long ��u ho�n","��ng C�u Gi�ng Long C�i Y","��ng C�u Ti�m Long Y�u ��i","��ng C�u Kh�ng Long H� Uy�n","��ng C�u Ki�n Long Ban Ch� ","[Tr�n Bang Chi B�o] ��ng C�u Ng� Long Ng�c B�i",
"��ch Kh�i L�c Ng�c Tr��ng","��ch Kh�i C�u ��i C�i Y","��ch Kh�i Tri�n M�ng y�u ��i","��ch Kh�i C�u T�ch B� H� uy�n","��ch Kh�i Th�o Gian Th�ch gi�i",

"Ma S�t Qu� C�c U Minh Th��ng","Ma S�t T�n D��ng �nh Huy�t Gi�p","Ma S�t X�ch K� T�a Y�u Kh�u","Ma S�t C� H�a Li�u Thi�n uy�n","Ma S�t V�n Long Th� Ch�u gi�i","[Tr�n Bang Chi B�o] Ma S�t C� H�a Li�u Thi�n Ho�n",
"Ma Ho�ng Kim Gi�p Kh�i","Ma Ho�ng �n Xu�t H� H�ng Khuy�n","Ma Ho�ng Kh� C�c Th�c y�u ��i","Ma Ho�ng Huy�t Y Th� Tr�c","Ma Ho�ng ��ng ��p Ngoa","[Tr�n Bang Chi B�o] Ma Ho�ng Dung Kim �o�n Nh�t Gi�i",
"Ma Th� Li�t Di�m Qu�n Mi�n","Ma Th� L� Ma Ph� T�m Li�n","Ma Th� Nghi�p H�a U Minh Gi�i","Ma Th� Huy�t Ng�c Th�t S�t B�i","Ma Th� s�n  H�i Phi H�ng L� ","[Tr�n Bang Chi B�o] Ma Th� L� Ma Ph� T�m ��i",

"L�ng Nh�c Th�i C�c Ki�m","L�ng Nh�c V� Ng� ��o b�o","L�ng Nh�c N� L�i Gi�i","L�ng Nh�c V� C�c Huy�n Ng�c B�i","L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i","[Tr�n Bang Chi B�o] L�ng Nh�c V� Ng� Th�c ��i",
"C�p Phong Ch�n V� Ki�m","C�p Phong Tam Thanh Ph� ","C�p Phong Huy�n Ti Tam �o�n c�m","C�p Phong Th�y Ng�c Huy�n Ho�ng B�i","C�p Phong Thanh T�ng Ph�p gi�i","[Tr�n Bang Chi B�o] C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n",

"S��ng Tinh Thi�n Ni�n H�n Thi�t","S��ng Tinh Ng�o S��ng ��o b�o","S��ng Tinh Thanh Phong L� ��i","S��ng Tinh Thi�n Tinh B�ng Tinh th� ","S��ng Tinh Phong B�o ch� ho�n","[Tr�n Bang Chi B�o] S��ng Tinh L�u Tinh C�n Nguy�t Kh�u",
"L�i Khung H�n Tung B�ng B�ch quan","L�i Khung Thi�n ��a H� ph� ","L�i Khung Phong L�i Thanh C�m ��i","L�i Khung Linh Ng�c U�n L�i","L�i Khung C�u Thi�n D�n L�i gi�i","[Tr�n Bang Chi B�o] L�i Khung Linh Ng�c �n L�i Uy�n",
"V� �o B�c Minh ��o qu�n","V� �o Ki B�n ph� ch� ","V� �o Th�c T�m ch� ho�n","V� �o Thanh �nh Huy�n Ng�c B�i","V� �o Tung Phong Tuy�t �nh ngoa","[Tr�n Bang Chi B�o] V� Hoan Th�i Uy�n Ch�n V� Li�n",

}
---------------------------------
function doihkmprac() 
dofile("script/global/mel/doihkmprac.lua")
	local tbOpt = {
		{"��i trang b� HKMP l�y L�nh b�i g�i Boss HKMP",DoiTrangBiHKMP},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i Mu�n ��i Trang B� Ho�ng Kim M�n Ph�i kh�ng?<color>", tbOpt)
end

function DoiTrangBiHKMP()
	local tbOpt = {
		{"B� v�o 5 m�n HKMP b�t k�",HKMPRac},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>��t v�o 5 m�n Trang B� HKMP<color>", tbOpt)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function HKMPRac()
	GiveItemUI( "��i R��ng Ho�ng Kim", "B�n c�n chu�n b� 5 m�n Trang B� HKMP v� 5 ti�n ��ng trong h�nh trang th� c� th� ��i ���c 5 L�nh b�i g�i Boss Ho�ng Kim", "HKMPRac_1", "onCancel",1 );
end

function HKMPRac_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
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
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=5) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(5, 4, 417, 1, 1)
			AddStackItem (5,6,1,4916,1,0,0)
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� 5 Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
