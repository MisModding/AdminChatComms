---@class StringStream
StringStream = {
    ---@field buffer string
    --- This String streams StringBuffer
    buffer = '',

    ---* Creates a New StringStream
    ---@return StringStream
    New = function() end,

    ---* Write a String to this StringStream
    ---@param str string
    Write = function(self, str) end,

    WriteLine = function(self, str) end,

    WriteValue = function(self, v) end,

    WriteIndex = function(self, v) end,
    ---* Delete the Contents of this StringStreams Buffer
    Reset = function(self) end,

}

---* Dumps a Table as a String with Limited Recursion
---@param myTable table to dump
---@param tableName string name of that table
---@param recuse boolean flag defining table handling - true recurses, false ignores them
---@return nil|string
function DumpTableAsLuaString(myTable, tableName, recurse) end

---* Table difference
---| For each entry, if there is a difference (in value or existence) between A and B, copy the entry from A into C
---@param A table
---@param B table
---@param C table
function TableDifference(A, B, C) end

---* Table difference (Recursive)
---| For each entry, if there is a difference (in value or existence) between A and B, copy the entry from A into C
---@param A table
---@param B table
---@param C table
function TableDifferenceRecursive(A, B, C) end

---* Table add
---| For each entry, if it exists in A but not in B, copy from A into B
---@param A table
---@param B table
function TableAdd(A, B) end

---* Table add (Recursive)
---| For each entry, if it exists in A but not in B, copy from A into B
---@param A table
---@param B table
function TableAddRecursive(A, B) end

---* Table intersect on keys
--- For each entry, if it does not exist in A but does in B, remove from B
---@param A table
---@param B table
function TableIntersectKeys(A, B) end

---* Table intersect on keys (Recursive)
--- For each entry, if it does not exist in A but does in B, remove from B
---@param A table
---@param B table
function TableIntersectKeysRecursive(A, B) end

---* Split up huge strings into smaller ones to allow dumping to log, etc
function BreakUpHugeString(input, minSize, maxSize) end

---* Dump the Contents of a Table to the Log
---@param table table to dump
---@param tableName string name of table
---@param recurse boolean flag to handle recursion
function LogTable(table, tableName, recurse) end

---* Take a path to a value and return it
---@param path string
---@return any
function GetValueRecursive(path) end

---* Take a path to a value and set that value
---| Currently won't handle functions
---@param path string
---@param value any
function SetValueRecursive(path, value) end

---* Print out a value or values
---| whatever they are, simulating print
function out(...) end
