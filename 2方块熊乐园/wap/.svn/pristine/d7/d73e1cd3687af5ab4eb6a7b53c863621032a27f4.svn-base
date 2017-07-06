local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")
local out = require "infopub_output"

local _M = {
    _VERSION = '0.01',
}

--[[
输入:
	{
		"token":"", 			//有token,传token,没有就不传了，当做匿名了
		"goodid":"",			//产品ID
		"content":"",			//投诉内容
		"phonenumber":"",		//联系电话
		"timestamp":""			//时间戳
	}
--]]

function _M.main()
	ngx.req.read_body()
    local data = ngx.req.get_body_data()
    if not data then
    	out.error('no body')
    end
    
    local dt = cjson.decode(data)
    if not dt then
    	out.error('data error')
    end
    
    if #dt.goodid<1 then
    	out.error("goodid is null")
    end
    
    if #dt.content<10 then
    	out.error("Must be greater than 10 bytes.")
    end
    
    if #dt.phonenumber<3 then
    	out.error("phonenumber error.")
    end
    
    if not dt.token or (dt.token and #dt.token==0) then
    	--未登陆
    	--out.error("TOKEN_INVAID",out.ERR_TOKEN_INVAID, "/login")
    	dt.token = nil
    end
    
    local uid=0 --默认匿名
    local goodid = tonumber(dt.goodid)
    local u_phonenumber = dt.phonenumber
    if dt.token then
	    --session过期
	    local session_info = session.gettable(dt.token)
	    if not session_info then
			--out.error("TOKEN_INVAID",out.ERR_TOKEN_INVAID, "/login")
		else
			uid =  tonumber(session_info.id)
	    end
    end
    
    --入库
    local sql = "insert into `info_gg_tipoff` (`id`, `uid`, `content`, `goodid`, `phonenumber`, `time`, `status`) VALUES (NULL, "
    sql = sql .. uid 
    sql = sql .. "," .. ngx.quote_sql_str(dt.content)
    sql = sql .. "," .. goodid
    sql = sql .. "," .. ngx.quote_sql_str(u_phonenumber)
    sql = sql .. "," .. 'CURRENT_TIMESTAMP'
    sql = sql .. "," .. '0'
    sql = sql ..");"
    
	--ngx.say(sql)
	local res, err = mysql.query(sql)
	if res then
		out.done('success')
	end
	out.error('failed')
end

return _M