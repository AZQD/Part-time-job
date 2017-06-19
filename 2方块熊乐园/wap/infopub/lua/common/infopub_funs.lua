local cjson = require "cjson"
local g = require("infopub_config")

local _M = {
}


local function md5topath(md5hash)
    local rpath="";
    if md5hash == nil then
    	return nil
    end
    rpath = string.sub(md5hash, 1, 2).."/"..string.sub(md5hash, 3, 4)
    rpath = rpath.."/"..md5hash

    return rpath
end

function _M.getpath_by_uid(uid)
	local umd5 = string.upper(ngx.md5("uid"..uid))
	local rpath = md5topath(umd5)
	if not rpath then
		return nil
	end
	
	return rpath
end

function _M.getpath_by_goodid(goodid)
	local umd5 = string.upper(ngx.md5("goodid"..goodid))
	local rpath = md5topath(umd5)
	if not rpath then
		return nil
	end
	
	return rpath
end

function _M.savefile(path, content)
    local lfile = io.open(path,"w+")
    lfile:write(content)
    lfile:close()
    return
end

function _M.tryopenfile(path)
	local lfile = io.open(path)
	return lfile
end

return _M