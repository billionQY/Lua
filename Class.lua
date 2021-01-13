function class(class_name, base)
    local cls

    if base then
        cls = {}
        setmetatable(cls, { __index = base })
        cls.base = base
    else
        cls = { ctor = function() end }
    end

    cls.__type = class_name
    cls.__index = cls

    function cls.new(...)
        local instance = setmetatable({}, cls)
        instance.class = cls
        instance:ctor(...)
        return instance
    end

    return cls
end
