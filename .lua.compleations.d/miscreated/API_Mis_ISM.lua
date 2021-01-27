---@class ISM
_G["ISM"]= {}

---* Give an item to a Player
---@param playerId entityId
---@param item string
---@param tryToEquip boolean
function ISM.GiveItem(playerId, class, tryToEquip) end

---* Spawn an item at the Given WorldPos
---@param class string Item
---@param vSpawnPos vector WorldPos
function ISM.SpawnItem(class, vSpawnPos) end

---* Spawn an item of Specified Catagory at the Given World Pos
---@param catagory string catagory
---@param vSpawnPos vector WorldPos
function ISM.SpawnCategory(catagory, vSpawnPos) end
