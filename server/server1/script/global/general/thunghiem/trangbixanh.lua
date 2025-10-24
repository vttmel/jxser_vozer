-- TÝnh n¨ng ®æi tªn - by AloneScript

Include("\\script\\lib\\itemblue.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function TrangBiXanh()
	GetItemBlue()
end

pEventType:Reg("TÝnh n¨ng thö nghiÖm", "Trang bÞ xanh", TrangBiXanh);
pEventType:Reg("LÖnh bµi T©n Thñ", "Trang bÞ xanh", TrangBiXanh);