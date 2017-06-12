local g = require("infopub_config")
local mysql = require("infopub_mysql")
local session = require("infopub_session")
local out = require "infopub_output"

local _M = {
    _VERSION = '0.01',
}

function _M.main()
	local cid = ngx.var.arg_cid
	if cid then
		cid = tonumber(cid)
	end
	
	local areaid = ngx.var.arg_areaid
	if areaid then
		areaid = tonumber(areaid)
	end
	
	local pmax = ngx.var.arg_pmax
	if pmax then
		pmax = tonumber(pmax)
	end
	
	local pmin = ngx.var.arg_pmin
	if pmin then
		pmin = tonumber(pmin)
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
	
	local sql = "select * from info_gg_publist where 1=1"
	if cid then
		sql = sql.." and cid="..cid
	end
	
	if areaid then
		sql = sql.." and areaid="..areaid
	end
	
	if pmax then
		sql = sql.." and price<"..pmax
	end
	
	if pmin then
		sql = sql.." and price>"..pmin
	end
	
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