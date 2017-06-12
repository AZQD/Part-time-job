local dic = require "infopub_dic"
local login = require "api.login"
local reg = require "api.reg"
local userinfo = require "api.getuserinfo"
local areas = require "api.areas"
local categorys = require "api.categorys"
local getgood = require "api.getgood"
local pubgood = require "api.pubgood"
local getgoods = require "api.getgoods"
local search = require "api.search"

ngx.header['content-type'] = 'application/json'
ngx.header['Access-Control-Allow-Origin'] = '*'
ngx.header['Access-Control-Allow-Headers'] = 'X-Requested-With';

local apiname = nil
local m = ngx.re.match(ngx.var.uri, [[/apigateway/([a-z]+)]],"")
if m then
	apiname = m[1]
end

if apiname == dic.API_LOGIN then
	login.main()
end

if apiname == dic.API_REG then
	reg.main()
end

if apiname == dic.API_GUINFO then
	userinfo.main()
end

if apiname == dic.API_AREAS then
	areas.main()
end

if apiname == dic.API_CATEGORYS then
	categorys.main()
end

if apiname == dic.API_GETGOOD then
	getgood.main()
end

if apiname == dic.API_PUBGOOD then
	pubgood.main()
end

if apiname == dic.API_GETGOODS then
	getgoods.main()
end

if apiname == dic.API_SEARCH then
	search.main()
end
