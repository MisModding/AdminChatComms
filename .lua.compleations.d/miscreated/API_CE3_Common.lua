---* Basic 3D vector value used by g_SignalData.
---| data structure passed to the Signals, use this global to avoid temporary lua mem allocation
---@type vector3
g_SignalData_point = {x = 0, y = 0, z = 0};

---* Basic 3D vector value used by g_SignalData.
---@type vector3
g_SignalData_point2 = {x = 0, y = 0, z = 0};

---* Used for passing signal data in the AI behavior scripts
---@see [AI.Signal](https://docs.cryengine.com/display/CEPROG/Signals)
g_SignalData = {
    ---@type vector Possible 3D vector you need to pass along.
    point = g_SignalData_point,
    ---@type vector Possible 3D vector you need to pass along.
    point2 = g_SignalData_point2,
    ObjectName = '',
    ---@type entityId
    id = NULL_ENTITY,
    fValue = 0,
    iValue = 0,
    iValue2 = 0,
}

---* Commonly used for temporary strings inside Lua functions.
---@type string
g_StringTemp1 = '                                            ';

---* Commonly used by the Physics.RayWorldIntersection function
---| within Lua scripts as the last parameter.
---@type table
g_HitTable = {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}}

---* Logs the current system time to console.
---| Formatting is like the following: `Day/Month/Year, Hours:Minutes`
function ShowTime() end

---* Returns the amount of key-value pairs of a given table.
---@param _tbl table
---@return number
function count(_tbl) end

---* Creates a new table based on the given one in the parameter _obj.
---| Commonly used for creating a local table based on an entity parameter table.
---@param _obj table you want to create a new one from.
---@param norecurse boolean if set to true it avoids recursive recreation of all sub-tables.
---@return table
function new(_obj, norecurse) end

---* Used to partly merge 2 tables without merging the functions from the source table.
---@param dst table destination table to merge to.
---@param src table source table to get the table information from.
---@param recurse boolean recursive merging of all sub-tables.
function merge(dst, src, recurse) end

---* Used to completly merge 2 tables with all functions of the source table.
---@param dst table destination table to merge to.
---@param src table source table to get the table information from.
---@param recurse boolean recursive merging of all sub-tables.
function mergef(dst, src, recursive) end

---* Used to convert a 3D vector table into a string and returns it as follows: (x: X.XXX y: Y.YYY z: Z.ZZZ)
---@param vec vector
---@return string
function Vec2Str(vec) end

---* Used to log an error message to the console and the log file.
---| The text color is set to red in the console.
---@param fmt string formatted string message
function LogError(fmt, ...) end

---* Used to log a warning message to the console and the log file.
---| The text color is set to yellow in the console.
---@param fmt string formatted string message
function LogWarning(fmt, ...) end

---* Used to log a message to the console and the log file.
---| Commonly used for debugging purposes.
---@param fmt string formatted string message
function Log(fmt, ...) end

g_dump_tabs = 0;

---* Dumps the table information to console.
---@param _class table you want to dump to console (e.g: g_localActor)
---@param no_func boolean if set to true it won't dump the table functions
---@param depth number defines the table tree depth you are interested in
function dump(_class, no_func, depth) end

---* check if a string is set and it's length > 0
---@param str string
---@return boolean
function EmptyString(str) end

---* check if a number value is true or false
---| usefull for entity parameters
---@param n number
---@return boolean
function NumberToBool(n) end

---* easy way to log entity id
---| accepts both entity table or entityid
---@param entity table
---@return string name
function EntityName(entity) end

---* Returns entity if an entity with the given name exists in the entity system.
---| Commonly used for debugging.
---@param name string
---@return table entity
function EntityNamed(name) end

---* Checks if a subtable with a given name exists in the given table and returns it, otherwise it returns nil.
---@param table table
---@param name string
---@return table|nil
function SafeTableGet(table, name) end

-- Removes a value from a table
function RemoveFromTable(tbl, ent) end

-- Inserts a value into a table unless it is already present
function InsertIntoTable(tbl, ent) end

-- Checks if a value is already inside a table
function IsInsideTable(tbl, ent) end

function SafeKillTimer(timer) end

---* EI find entry in spawn/weather tables
function FindInTable(tbl, keyname, keyvalue) end

---* EI register callbacks to extend existing functionality or combine mods (chained function calls with pre/post joint points)
---| sample usage: `RegisterCallback(Miscreated.Server, 'OnInit', customFunction, nil)`
---| sample usage with params: `RegisterCallback(BasicActor.Server, 'OnHit', function (self, hit) customFunc(self, hit) end, nil)`
---@param obj table
---@param funcname string
---@param precb function
---@param postcb function
function RegisterCallback(obj, funcname, precb, postcb) end

---* EI register callbacks to extend/override existing functionality or combine mods (chained function calls with pre/post joint points)
---|  this variation requires the callback to handle the return value (the ret param needs to be returned)
---|  for modification of the return value only the postcb (second one) can be used.
---| sample usage:  `RegisterCallbackReturnAware(Miscreated.Server, 'OnInit', customFunction, nil)`
---| sample usage with params: `RegisterCallbackReturnAware(BasicActor.Server, 'OnHit', nil, function (self, ret, hit) return ret end)`
---@param obj table
---@param funcname string
---@param precb function
---@param postcb function
function RegisterCallbackReturnAware(obj, funcname, precb, postcb) end
