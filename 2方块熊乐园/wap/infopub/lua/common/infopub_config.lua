local _M = {
    _VERSION = '0.01',
    
    base_dir = "/usr/local/openresty/nginx/html/lusaka/infopub/",

	debug = true,
	
	--每页最多显示多少条
	page_items = 10,
    --redis
    REDIS_HOST = '127.0.0.1',
    REDIS_PORT = 6379,

    --mysql
    mysql_option = {
        host = "127.0.0.1",
		port = 3306,
		database = "infopub",
		user = "infopub",
		password = "infopub123",
		max_packet_size = 1024 * 1024 
    }
}

return _M
