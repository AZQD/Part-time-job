local cjson = require "cjson"
local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")
local dic = require("infopub_dic")
local funs = require("infopub_funs")

local out_str = ''
local infopub_themples = ngx.shared.infopub_themples
local f_comments = infopub_themples:get("f_comments")

local ref = ngx.var.http_referer
local m = ngx.re.match(ref, [[/d/([0-9]+)]],"")
local goodid = m[1]

if g.debug then
    f_comments=nil
end
if f_comments==nil then
	local base_dir = g.base_dir
	local f = assert(io.open(base_dir.."themples/default/f_comments.html","r"))
	f_comments = f:read("*a")
	f:close()
	infopub_themples:set("f_comments",f_comments)
end

local token = session.getcookie('token')
if token == nil then
	token = session.getfromurl('token')
end

local hitip = ""
local session_info = session.gettable(token)
if session_info then
	if #session_info.nickname>0 then
		hitip = '<a href="/s"><img src="/static/img/search.png" style="width:18px;height: 18px;vertical-align: -3px;"/></a><a href="/ulist" style="font-size: 14px;color: #333333;"> Hi,'..session_info.nickname..'</a>'
	else
		hitip = '<a href="/s"><img src="/static/img/search.png" style="width:18px;height: 18px;vertical-align: -3px;"/></a><a href="/ulist" style="font-size: 14px;color: #333333;"> Hi,'..session_info.phone..'</a>'
	end
end

out_str = out_str..f_comments
out_str = ngx.re.sub(out_str, "#HITIP#", hitip)
out_str = ngx.re.sub(out_str, "#GOODID#", goodid)

--[[
	{
		"token":"",			//登录凭证，当action="user" 时必须指定
		"goodid":"",		//商品ID, 当action="good" 时必须指定
		"action":"",		//good or user
		"start":"",			//从第几条开始
		"num":""			//获得几条,最多20条
	}
--]]
local getcomment_api = g.api_host.."/apigateway/"..dic.API_GETCOMMENT
local pbody = {}
pbody['token'] = token
pbody['goodid'] = tostring(goodid)
pbody['action'] = 'good'
pbody['start'] = '1'
pbody['num'] = '10'

local res, err = funs._post_data(getcomment_api, nil, nil, cjson.encode(pbody))
ngx.say(out_str)
if res then
	local rest = cjson.decode(res.body)
	if rest.status == 200 then
		local comments = cjson.decode(rest.data)
		for k, v in ipairs(comments) do
			ngx.say(v.nick_name)
			ngx.say("<br>")
			ngx.say(v.logo_url)
			ngx.say("<br>")
			ngx.say(v.content)
			ngx.say("<br>")
		end
	end
end
