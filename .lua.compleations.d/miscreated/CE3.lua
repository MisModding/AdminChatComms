--
-- ─── COMMON TYPES ───────────────────────────────────────────────────────────────
--
---@class Global
_G = _G


---@alias entity table
---@alias entityId userdata|number

---Vector aliases
---@alias X_AXIS number|nil
---@alias Y_AXIS number|nil
---@alias Z_AXIS number|nil

--- vector { x-axis, y-axis }
---@class vector
---@field x X_AXIS
---@field y Y_AXIS


--- vector3 { x-axis, y-axis, z-axis }
---@class vector3
---@field x X_AXIS
---@field y Y_AXIS
---@field z Z_AXIS


--
-- ─── CRYACTION ──────────────────────────────────────────────────────────────────
--

--- CE3 CryAction Interface
---| Contains basic Engine methods
---@class CryAction

_G["CryAction"] = {}

---* Are we Running onClient
---@return boolean
function CryAction.IsClient() end

---* Are we Running onServer
---@return boolean
function CryAction.IsDedicatedServer() end

--
-- ─── SYSTEM ─────────────────────────────────────────────────────────────────────
--
--- CE3 System Interface
---| Essential CE Methods eg Entities,CVars
---@class System
_G["System"] = {}

--- spawn a specified entity 
---@param spawnParams table
--- `spawnParams` must be a valid spawnParams table containing at least the following properties
--- {
---     class = "EntityClass",
---     position = {x = 0, y = 0, z = 0}
--- }
function System.SpawnEntity(spawnParams) end
---* Fetch an Entity using its entityId
---@param entityId userdata
---@return entity
function System.GetEntity(entityId) end

---* Fetch an Entity using its Name
---@param name string
---@return entity
function System.GetEntityByName(name) end

---* Returns the Class of an Entity by its entityId
---@param entityId userdata
---@return string
function System.GetEntityClass(entityId) end

---* Fetch All Entities
---@return table
function System.GetEntities() end

---* Fetch All Entities of a Specified Class
---@param class string
---@return table
function System.GetEntitiesByClass(class) end

---* Execute a Console Command
---@param command   string  `command to run`
function System.ExecuteCommand(command) end


--
-- ─── SCRIPT ─────────────────────────────────────────────────────────────────────
--
--- CE3 Script Interface
---@class System
_G["Script"] = {}

---* Reload a Script Folder
---@param path string
function Script.LoadScriptFolder(path) end

---* Reload a Script
---@param path string
function Script.ReloadScript(path) end

---* call a function to after specified timer
---@param milli number miliseconds, timer
---@param f function function, to run
---@return userdata timerId
function Script.SetTimer(milli,f,...) end

---* set a function to run after specified timer
---@param milli number miliseconds, timer
---@param f function function, to run
---@return userdata timerId
function Script.SetTimerForFunction(milli,f,...) end

---* Use SafeKillTimer(timerId) instead, Kill an Active timer by timerId
---@param timerId userdata
function Script.KillTimer(timerId) end


--- Base GameRules Class
---@class GameRules
_G["GameRules"] = {}

---* Send a Message to a Player.
---| msgtype can be either 0 or 4 
---@param msgtype number
---@param playerId entityId
---@param message string
function GameRules:SendTextMessage(msgtype,playerId,message) end

g_gameRules = { game = GameRules }