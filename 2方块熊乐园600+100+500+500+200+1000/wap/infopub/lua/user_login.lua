local cjson = require "cjson"
local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")

local out_str = ''
local infopub_themples = ngx.shared.infopub_themples
local f_login = infopub_themples:get("f_login")

if g.debug then
    f_login=nil
end
if f_login==nil then
	local base_dir = g.base_dir
	local f = assert(io.open(base_dir.."themples/default/f_login.html","r"))
	f_login = f:read("*a")
	f:close()
	infopub_themples:set("f_login",f_login)
end

--get
if ngx.var.request_method == 'GET' then
	f_login = ngx.re.sub(f_login, "#POST_ADDR#", ngx.var.document_uri)
	out_str = out_str..f_login
end

--post
if ngx.var.request_method == 'POST' then
	local phone = nil
	local pass = nil
	ngx.req.read_body()
	local arg = ngx.req.get_post_args()
	for k,v in pairs(arg) do
		if k == 'phone' then
			phone = v
		end
		
		if k == 'password' then
			pass = v
		end
	end
	
	if phone and string.len(phone)>1 and pass and string.len(pass) then
		local sql = "select * from info_gg_users where phone="..ngx.quote_sql_str(phone).." and pass="..ngx.quote_sql_str(pass)
		local res, err = mysql.query(sql)
		if res then
			if table.maxn(res) > 0 then
				local token = ngx.md5(res[1].id..res[1].salt..ngx.now())
				--设置cookie
				session.setcookie('token', token)
				--如果不支持cookie则使用url token
				--保存登录信息
				session.set(token, cjson.encode(res),3600)
				--ngx.say('登录成功')
				ngx.redirect('/test?token='..token, 302)
			else
				--登录失败
				out_str = out_str..'account or password is error'
			end
		else
			--登录失败
			out_str = out_str..'account or password is error'
		end
	end
end

ngx.header['content-length'] = #out_str
ngx.say(out_str)

