local cjson = require "cjson"
local str = require "resty.string"
local g = require("infopub_config")
local mysql = require("infopub_mysql")
local ran_str = require("resty.random")
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

ngx.say(uid)

local liststr = ngx.re.sub(ngx.var.uri, "/ulist/","")
local n = ngx.re.match(liststr, [[^([0-9]+)]],"")
local listid=0
if n ~= nil then
    listid=tonumber(n[0])
    if listid<0 then
		listid = 0
	end
end

local out_str = ''
local infopub_themples = ngx.shared.infopub_themples
local f_list = infopub_themples:get("f_list")

if g.debug then
    f_list = nil
end
if f_list==nil then
	local base_dir = g.base_dir
	local f = assert(io.open(base_dir.."themples/default/f_list.html","r"))
	f_list = f:read("*a")
	f:close()
	infopub_themples:set("f_list",f_list)
end

--get
if ngx.var.request_method == 'GET' then
	local list_item = ''
	local sql = "select * from info_gg_publist where uid = ".. uid .." order by id desc limit "..tonumber(listid)*10 .. ",10"
	local res, err = mysql.query(sql)
	if res then
		for k, v in ipairs(res) do
			list_item = list_item..'<a href="/d/'..v.id..'" style="display:inline-block;margin-bottom: 4px;background-color: #D7D7D7;font-size: 13px;color: #333333;width:100%;height: 18px;line-height: 18px;text-decoration: none;">'
			list_item = list_item..'<span style="width: 70%;display:inline-block;text-align: left">'
			list_item = list_item..v.details.."</span>"
			list_item = list_item..'<span style="width: 25%;display:inline-block;text-align: right">'
			list_item = list_item..v.pubtime.."</span>"
			list_item = list_item..'</a>'
		end
	end
	out_str = out_str..f_list
	out_str = ngx.re.sub(out_str, "#LIST_ITEM#", list_item)
	
	--
	local page_n = ''
	if listid == 0 then
		page_n = '<span><a href="/ulist/'..tonumber(listid)+1 ..'">next</a></span>'
	else
		page_n = '<span><a href="/ulist/'.. tonumber(listid)-1 ..'">prev</a></span> <span><a href="/ulist/'.. tonumber(listid)+1 ..'">next</a></span>'
	end
	
	out_str = ngx.re.sub(out_str, "#PAGE_N#", page_n)
end

ngx.say(out_str)