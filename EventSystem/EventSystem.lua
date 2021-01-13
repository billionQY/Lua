require("EventID")

EventSystem = {}

local map

function EventSystem:init()
    map = {}
end

function EventSystem:dispose()
    map = nil
end

function EventSystem:publish(event_id, ...)
    local lst = map[event_id]
    if (lst ~= nil) then
        for k, v in pairs(lst) do
            v(...)
        end
    end
end

function EventSystem:subscribe(event_id, callback)
    local lst = map[event_id]
    if (lst == nil) then
        lst = {}
        map[event_id] = lst
    end

    table.insert(lst, callback)
end

function EventSystem:unsubscribe(event_id, callback)
    local lst = map[event_id]
    if (lst == nil) then
        return
    end
    
    for k, v in pairs(lst) do
        if (callback == v) then
            table.remove(lst, k)
            return
        end
    end
end

return EventSystem
