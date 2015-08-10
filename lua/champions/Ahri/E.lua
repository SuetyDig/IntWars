Vector2 = require 'Vector2' -- include 2d vector lib 

function finishCasting()
    local current = Vector2:new(getOwnerX(), getOwnerY())
    local to = (Vector2:new(getSpellToX(), getSpellToY()) - current):normalize()
    local range = to * 975
    local trueCoords = current + range
    addProjectile(trueCoords.x, trueCoords.y)
end

function applyEffects()
    dealMagicalDamage(25+35*getSpellLevel()+getOwner():getStats():getTotalAp()*0.5)
<<<<<<< HEAD
    local buff = Buff.new("AhriSeduce", 0.75+getSpellLevel()*0.25, BUFFTYPE_TEMPORARY, getTarget(), getOwner())
=======
	local buff = Buff.new("", 1.0+0.25*getSpellLevel(), BUFFTYPE_TEMPORARY, getOwner())
>>>>>>> origin/patch-1
    buff:setMovementSpeedPercentModifier(-50)
    addBuff(buff, getTarget())
    destroyProjectile()
end
