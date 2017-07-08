local cjson = require "cjson"
local http = require "resty.http"
local g = require("infopub_config")
local mysql = require("infopub_mysql")

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

function _M._post_data(hurl, href, hcookie, body, huseragent)
	local httpc = http.new()
	local luseragent = 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'
	if huseragent then
		luseragent = huseragent
	end

	local res, err = httpc:request_uri(hurl, {
		method = "POST",
		ssl_verify = false,
		body = body,
		headers = {
			  ["Connection"] = "keep-alive",
			  ["User-Agent"] = luseragent,
			  ["Accept-Encoding"] = "", --不接受压缩编码数据
			  ["Accept-Language"] = "zh-CN,zh;q=0.8",
			  ["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
			  ["Referer"] = href,
			  ["Cookie"] = hcookie
			}
	})
	
	if res then
		httpc:set_keepalive(60000, 10)
	else
		httpc:close()
	end
	return res, err
end

function _M.json_decode( str )
    local json_value = nil
    pcall(function (str) json_value = cjson.decode(str) end, str)
    return json_value
end

function _M.gettoptipinfo()
	local infopub_cdata = ngx.shared.infopub_cdata
	local toptipinfo = infopub_cdata:get("toptipinfo")
	if not toptipinfo then
		local sql = "select * from info_gg_toptips"
		local res, err = mysql.query(sql)
		if res then
			toptipinfo = cjson.encode(res)
			infopub_cdata:set("toptipinfo",toptipinfo, 3600)
		end
	end
	return cjson.decode(toptipinfo)[1].content
end

return _M