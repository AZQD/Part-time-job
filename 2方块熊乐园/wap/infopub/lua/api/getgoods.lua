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
	
	local orderby = ngx.var.arg_orderby
	local sort = ngx.var.arg_sort
	if not orderby then
		orderby = 'pubtime'
	else
		if orderby == 'price' then
			orderby = 'price'
		else
			orderby = 'pubtime'
		end
	end
	if not sort then
		sort = 'desc'
	else
		if sort == 'asc' then
			sort = 'asc'
		else
			sort = 'desc'
		end
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
		if not start then
			start = 0
		end
	end
	
	local issell = ngx.var.arg_issell
	if issell then
		issell = tonumber(issell)
	else
		issell = 1
	end
	
	local n = ngx.var.arg_n
	if n then
		n = tonumber(n)
		if not n then
			n=30
		end
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
		sql = sql.." and (addr_l1="..areaid
		sql = sql.." or addr_l2="..areaid..")"
	end
	
	if pmax then
		sql = sql.." and price<"..pmax
	end
	
	if pmin then
		sql = sql.." and price>"..pmin
	end
	
	if issell then
		sql = sql.. " and issell="..issell
	end
	
	if orderby and sort then
		sql = sql .. " order by "..orderby .." "..sort
	end
	
	if start and n then
		sql = sql.." limit "..start..","..n
	end
	
	local res, err = mysql.query(sql)
	if res then
		for k, v in ipairs(res) do
			if not v.cimg or #v.cimg < 1 then
				local pc = string.find(v.imgs, ',')
				if pc then
					v.cimg = string.sub(v.imgs, 0, pc-1)
				end
			end
		end
		out.done(cjson.encode(res))
	end
	out.error('failed')
end

return _M