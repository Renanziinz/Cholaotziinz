local text = {

		regiao  = '', 					-- escreva o texto
		mapa = 'Aqui está um Link contendo o mapa da região! https://i.imgur.com/DnBzY7I.png', ﻿				-- escreva o texto
		hunts = '', 					-- escreva o texto
		houses = '', 				-- escreva o texto
		quests = '',				 -- escreva o texto
		task = '' 						-- escreva o texto		
		
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
npcHandler.topic = {}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid)	end
function onCreatureDisappear(cid) npcHandler:onCreatu﻿reDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
 
 
function creatureSayCallback(cid, type, msg)
	
	if not npcHandler:isFocused(cid) then
		return false
	end
	
			if msgcontains(msg:lower(), 'regiao') then
				npcHandler:say(text.regiao, cid)
				npcHandler.topic[cid] = 0
			﻿
			elseif msgcontains(msg:lower(), 'mapa') then
				npcHandler:say(text.mapa, cid)
				npcHandler.topic[cid] = 0
			
			elseif msgcontains(msg:lower(), 'hunts') then
				npcHandler:say(text.hunts, cid)
				npcHandler.topic[cid] = 0
			
			elseif msgcontains(ms﻿g:lower(), 'houses') then
				npcHandler:say(text.houses, cid)
				npcHandler.topic[cid] = 0
			
			elseif msgcontains(msg:lower(), 'quests') then
				npcHandler:say(text.quests, cid)
				npcHandler.topic[cid] = 0
			
			elseif msgcontains(msg:lower(), 'task') then
				npcHandler:say(text.task, cid)
				npcHandler.to﻿pic[cid] = 0
			
			elseif msgcontains(msg:lower(), 'bye') or msgcontains(msg:lower(), 'ok') then
				npcHandler:say('Bye!', cid)
				npcHandler.topic[cid] = 0
			
			end
				
	return true
end
					
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())	