local cjson = require "cjson"
local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")

local out_str = ''
local infopub_themples = ngx.shared.infopub_themples
local f_goodimages = infopub_themples:get("f_goodimages")

local ref = ngx.var.http_referer

if g.debug then
    f_goodimages=nil
end
if f_goodimages==nil then
	local base_dir = g.base_dir
	local f = assert(io.open(base_dir.."themples/default/f_goodimages.html","r"))
	f_goodimages = f:read("*a")
	f:close()
	infopub_themples:set("f_goodimages",f_goodimages)
end

local token = session.getcookie('token')
if token == nil then
	token = session.getfromurl('token')
end

local hitip = '<a href="/login" style="font-weight: 700; font-size: 20px;color:#000000;" aligh="right">Login</a>'
local session_info = session.gettable(token)
if session_info then
	if #session_info.nickname>0 then
		hitip = '<a href="/s"><img src="/static/img/search.png" style="width:18px;height: 18px;vertical-align: -3px;"/></a><a href="/ulist" style="font-size: 14px;color: #333333;"> Hi,'..session_info.nickname..'</a>'
	else
		hitip = '<a href="/s"><img src="/static/img/search.png" style="width:18px;height: 18px;vertical-align: -3px;"/></a><a href="/ulist" style="font-size: 14px;color: #333333;"> Hi,'..session_info.phone..'</a>'
	end
end

out_str = out_str..f_goodimages
out_str = ngx.re.sub(out_str, "#HITIP#", hitip)

out_str = ngx.re.sub(out_str, "</body>", g.wap_analytics.."</body>")
ngx.say(out_str)

