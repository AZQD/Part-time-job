local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")
local out = require "infopub_output"

local _M = {
    _VERSION = '0.01',
}

function _M.main()
	local key = ngx.var.arg_key
	if not key or #key <1 then
		key=''
	end
	
	local start = ngx.var.arg_start
	if start then
		start = tonumber(start)
	end
	
	if not start then
		start = 0;
	end
	
	local n = ngx.var.arg_n
	if n then
		n = tonumber(n)
	else
		n = 30
	end
	
	if not n then
		n = 30
	end
	
	if n>30 then
		n = 30
	end
	
	--总条数
	local msql = "select count(id) as n from info_gg_publist where details like "..ngx.quote_sql_str('%'..key..'%')
	local mres, merr = mysql.query(msql)
	local tnumber = 0
	if mres then
		tnumber = mres[1].n
	end
	
	local sql = "select * from info_gg_publist where details like "..ngx.quote_sql_str('%'..key..'%')
	if start and n then
		sql = sql.." limit "..start..","..n
	end
	local res, err = mysql.query(sql)
	if res then
		out.done(cjson.encode(res),tnumber)
	end
	out.error('failed')
end

return _M