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
local test_cleartoken = require "api.test_cleartoken"
local putcomment = require "api.putcomment"
local getcomment = require "api.getcomment"
local putwish = require "api.putwish"
local delwish = require "api.delwish"
local getwish = require "api.getwish"
local checkwish = require "api.checkwish"
local upfile = require "api.upfile"
local getcomnums = require "api.getcommentnums"
local getbanner = require "api.getbanner"
local getbestgoods = require "api.getbestgoods"
local subtipoff = require "api.subtipoff"

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

if apiname == dic.API_PUTCOMMENT then
	putcomment.main()
end

if apiname == dic.API_PUTWISH then
	putwish.main()
end

if apiname == dic.API_DELWISH then
	delwish.main()
end

if apiname == dic.API_GETWISH then
	getwish.main()
end

if apiname == dic.API_GETCOMMENT then
	getcomment.main()
end

if apiname == dic.API_CHECKWISH then
	checkwish.main()
end

if apiname == dic.API_UPFILE then
	upfile.main()
end

if apiname == dic.API_GETCOMNUMS then
	getcomnums.main()
end

if apiname == dic.API_GETBANNER then
	getbanner.main()
end

if apiname == dic.API_TEST_CLEARTOKEN then
	test_cleartoken.main()
end

if apiname == dic.API_GETBESTGOODS then
	getbestgoods.main()
end

if apiname == dic.API_SUBTIPOFF then
	subtipoff.main()
end

ngx.say(apiname)
