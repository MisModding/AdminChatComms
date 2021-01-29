---* IsAdminPlayer
-- | Checks if a given steamId is listed in a `admins.txt` file in server root `MiscreatedServer/admins.txt`
-- | Will Print an Error in The log and return false if the file does not exist
-- | admins.txt should have ONE steamId per line (to help remember who is who, its also ok to use the format: name steamId )
---@param steamId string: players steam64Id
---@return boolean, string
--- if the steamid was found returns true or false plus a message if not
function IsAdminPlayer(steamId)
    -- try to open the admins.txt file
    local file = io.open('./admins.txt')
    local admins = {} -- this holds each line of the file
    local i = 0 -- keep track of the current line number
    -- did we successfully open the file (does it exist?)
    if file then
        -- yes so iterate through the lines using our lineIndex as table index
        for line in file:lines() do
            -- each iteration is a new line so increment the line index
            i = i + 1
            -- add the line content to the table
            admins[i] = line
        end
        -- Allways close the file when we are done with it to avoid file access errors.
        file:close()
        -- concat the admins table into a string delimited by `;` then use the current steamid as a pattern to match with
        if string.find(table.concat(admins, ';'), steamId) then
            -- if found then this steamId was in the file so return authorised
            return true, 'Authorised'
        else
            -- otherwise its not in the file so return false.
            return false, 'Unauthorised'
        end
    else
        local errmsg = './admins.txt file not found or failed to be read' -- generic error msg
        -- Failed to Open the File, Moan about it in ServerLog
        LogError(errmsg);
        -- then just return false and the errormsg, no file means no authorisation
        return false, errmsg
    end
    --- worst case scenario. this shouldn't ever be seen unless something realy goes wrong when trying to iterate the lines of the file.
    LogError(
        'Something went wrong. Maybe invalid characters in admins.txt or it is not a text file.')
end

--- safely escape a given string
---@param str string    string to escape
string.escape = function(str)
    return str:gsub('([%^%$%(%)%%%.%[%]%*%+%-%?])', '%%%1')
end

--- Split a string at a given string as delimeter (defaults to a single space)
-- | local str = string.split('string | to | split', ' | ') -- split at ` | `
-- >> str = {"string", "to", "split"}
---@param str string        string to split
---@param delimiter string  optional delimiter, defaults to " "
string.split = function(str, delimiter)
    local result = {}
    local from = 1
    local delim = delimiter or " "
    local delim_from, delim_to = string.find(str, delim:escape(), from)
    while delim_from do
        table.insert(result, string.sub(str, from, delim_from - 1))
        from = delim_to + 1
        delim_from, delim_to = string.find(str, delim, from)
    end
    table.insert(result, string.sub(str, from))
    return result
end

--- extracts key=value styled arguments from a given string
---@param str string string to extract args from
---@return table args table containing any found key=value patterns
string.kvargs = function(str)
    local t = {}
    for k, v in string.gmatch(str, '(%w+)=(%w+)') do t[k] = v end
    return t
end

--- expand a string containing any `${var}` or `$var`.
--- Substitution values should be only numbers or strings.
--- @param s string the string
--- @param subst any either a table or a function (as in `string.gsub`)
--- @return string expanded string
function string.expand(s, subst)
    local res, k = s:gsub('%${([%w_]+)}', subst)
    if k > 0 then return res end
    return (res:gsub('%$([%w_]+)', subst))
end

local charset = {}
do -- [0-9a-zA-Z]
    for c = 48, 57 do table.insert(charset, string.char(c)) end
    for c = 65, 90 do table.insert(charset, string.char(c)) end
    for c = 97, 122 do table.insert(charset, string.char(c)) end
end

---* Cleans Eccess quotes from input string
function clean_quotes(inputString)
    local result
    result = inputString:gsub('^"', ''):gsub('"$', '')
    result = result:gsub('^\'', ''):gsub('\'$', '')
    return result
end

--- generate a random string with a given length
---@param	length number num chars to generate
---@return	string
function RandomString(length)
    if not length or length <= 0 then return '' end
    math.randomseed(os.clock() ^ 5)
    return RandomString(length - 1) .. charset[math.random(1, #charset)]
end

---* Return the Size of a Table.
-- Works with non Indexed Tables
--- @param table table  any table to get the size of
--- @return number      size of the table
function table_size(table)
    local n = 0
    for k, v in pairs(table) do n = n + 1 end
    return n
end

--- Return an array of keys of a table.
-- @param tbl table: The input table.
-- @return table: The array of keys.
function table_keys(tbl)
    local ks = {}
    for k, _ in pairs(tbl) do table.insert(ks, k) end
    return ks
end
