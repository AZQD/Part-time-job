local cjson = require "cjson"
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
--

local out_str = ''
local infopub_themples = ngx.shared.infopub_themples
local f_pub = infopub_themples:get("f_pub")

if g.debug then
    f_pub=nil
end
if f_pub==nil then
	local base_dir = g.base_dir
	local f = assert(io.open(base_dir.."themples/default/f_pub.html","r"))
	f_pub = f:read("*a")
	f:close()
	infopub_themples:set("f_pub",f_pub)
end

--get
if ngx.var.request_method == 'GET' then
	f_pub = ngx.re.sub(f_pub, "#POST_ADDR#", ngx.var.document_uri)
	f_pub = ngx.re.sub(f_pub, "#PHONE_NUMBER#", phone)
	out_str = out_str..f_pub
end

--post
if ngx.var.request_method == 'POST' then
	local details = nil
	local phone = nil
	ngx.req.read_body()
	local arg = ngx.req.get_post_args()
	for k,v in pairs(arg) do
		if k == 'details' then
			details = v
		end
		
		if k == 'phone' then
			phone = v
		end
	end
	
	local sql = "insert into info_gg_publist(`uid`,`details`,`phone`,`catid`,`pubtime`) VALUES("
	sql = sql .. uid .. ","
	sql = sql .. ngx.quote_sql_str(details) .. ","
	sql = sql .. ngx.quote_sql_str(phone) .. ","
	sql = sql .. "0" .. ","
	sql = sql .. "now())"
	--ngx.say(sql)
	local res, err = mysql.query(sql)
	if res then
		out_str = out_str..'发布成功'
	end
	
end

ngx.header['content-length'] = #out_str
ngx.say(out_str)
