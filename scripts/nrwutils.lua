-- This Source Code Form is subject to the terms of the bCDDL, v. 1.1.
-- If a copy of the bCDDL was not distributed with this
-- file, You can obtain one at http://beamng.com/bCDDL-1.1.txt

local M = {}

local function msToTimeTable(t)
local decimals = math.floor(t % 1000.0) -- Hundredths of a sec
local seconds = math.floor(t / 1000.0) % 60
local minutes = math.floor(((t / 1000.0)/ 60.0))
local toRet = {}
toRet["decimals"] = decimals
toRet["seconds"] = seconds
toRet["minutes"] = minutes
return toRet
end

local function formatTimeTable(t)
return string.format("%d:%02d:%03d", t.minutes, t.seconds,t.decimals)
end

local function timeToMs(ms, seconds, minutes)
return ms + seconds * 1000 + minutes * 60000
end

local function ssplit(s, delimiter) 
local result = {}
if delimiter == "." then
for match in (s..delimiter):gmatch("(.-)%"..delimiter) do
table.insert(result, match)
end
else
for match in (s..delimiter):gmatch("(.-)"..delimiter) do
table.insert(result, match)
end
end
return result
end

M.ssplit = ssplit
M.formatTimeTable = formatTimeTable
M.timeToMs = timeToMs
M.msToTimeTable = msToTimeTable

return M