local cjson = require "cjson"
local str = require "resty.string"
local g = require("infopub_config")
local mysql = require("infopub_mysql")
local ran_str = require("resty.random")
local session = require("infopub_session")
local dic = require("infopub_dic")
local funs = require("infopub_funs")

local token = session.getcookie('token')
if token == nil then
	token = session.getfromurl('token')
end

if not token then
	ngx.say("请先登录")
	ngx.exit(200)
end

local uid = nil
local goodid = ngx.var.arg_d
local session_info = session.gettable(token)
if session_info then
	uid = session_info.id
end

if (not uid) or (not goodid) then
	ngx.say("用户信息或发布信息错误")
end

local pbody = {}
local pubwish_api = g.api_host.."/apigateway/"..dic.API_PUTWISH
pbody['token'] = token
pbody['goodid'] = tostring(goodid)
pbody['timestamp'] = tostring(ngx.now())
local res, err = funs._post_data(pubwish_api, nil, nil, cjson.encode(pbody))

if res then
	ngx.say(res.body)
end

