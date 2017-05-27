local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")


local token = session.getcookie('token')
if token == nil then
	token = session.getfromurl('token')
end

local uid = 0
local phone=''
local session_info = session.gettable(token)
if session_info then
	uid = session_info.id
	phone = session_info.phone
end

local dstr = ngx.re.sub(ngx.var.uri, "/d/","")
local n = ngx.re.match(dstr, [[^([0-9]+)]],"")
local did=0
if n ~= nil then
    did=tonumber(n[0])
    if did<0 then
		did = 0
	end
end


local out_str = ''
local infopub_themples = ngx.shared.infopub_themples
local f_details = infopub_themples:get("f_details")

if g.debug then
	f_details = nil
end
if f_details==nil then
	local base_dir = g.base_dir
	local f = assert(io.open(base_dir.."themples/default/f_details.html","r"))
	f_details = f:read("*a")
	f:close()
	infopub_themples:set("f_details",f_details)
end

out_str = out_str..f_details

local sql = "select * from info_gg_publist where id = "..did
local res, err = mysql.query(sql)
if res then
	for k, v in ipairs(res) do
		--ngx.say(v.details)
		out_str = ngx.re.sub(out_str, "#DETAILS#", v.details)
		out_str = ngx.re.sub(out_str, "#PUBTIME#", v.pubtime)
	end
end

ngx.say(out_str)



