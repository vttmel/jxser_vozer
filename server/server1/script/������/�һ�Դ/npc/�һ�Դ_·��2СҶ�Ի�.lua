-- TiÓu DiÖp ë §µo Hoa Nguyªn - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

function main(sel)
	i = random(0,2)
	if (i == 0) then
		Say("<color=green>TiÓu DiÖp<color>: Gµ con gµ con, chİp chİp chİp, mæ ¨n ®i, th©n trßn trŞa, l«ng vµng ãng, thİch giun thİch g¹o."..Note("tieudiep_daohoanguyen"),0)
	end;
	if (i == 1) then
		Say("<color=green>TiÓu DiÖp<color>: VŞt con vŞt con, ¨n ®i ¨n ®i, thİch ¨n c¸, thİch ¨n t«m, võa ®i võa kªu c¹p c¹p c¹p."..Note("tieudiep_daohoanguyen"),0)
	end;
	if (i == 2) then
		Say("<color=green>TiÓu DiÖp<color>: Thá tr¾ng nhá, th©n tr¾ng ngÇn, hai tai dùng ®øng, thİch cµ rèt, thİch ¨n rau, nh¶y qua nh¶y l¹i thËt ®¸ng yªu."..Note("tieudiep_daohoanguyen"),0)
	end;
end;

