local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")
local out = require "infopub_output"

local _M = {
    _VERSION = '0.01',
}

function _M.main()
	local key = ngx.var.arg_key
	if not key then
		out.error('key is null')
	end
	
	local start = ngx.var.arg_start
	if start then
		start = tonumber(start)
	end
	
	local n = ngx.var.arg_n
	if n then
		n = tonumber(n)
	else
		n = 30
	end
	
	if n>30 then
		n = 30
	end
	
	local sql = "select * from info_gg_publist where details like "..ngx.quote_sql_str('%'..key..'%')
	if start and n then
		sql = sql.." limit "..start..","..n
	end
	local res, err = mysql.query(sql)
	if res then
		out.done(cjson.encode(res))
	end
	out.error('failed')
end

return _M