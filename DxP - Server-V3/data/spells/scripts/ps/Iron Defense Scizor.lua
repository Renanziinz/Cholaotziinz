function onCastSpell(cid, var)

	if isSummon(cid) then return true end

	docastspell(cid, "Iron Defense Scizor")

return true
end