local _M = {
    _VERSION = '0.01',
    
    base_dir = "/usr/local/openresty/nginx/html/lusaka/infopub/",

	debug = true,
	
	--每页最多显示多少条
	page_items = 10,
    --redis
    REDIS_HOST = '127.0.0.1',
    REDIS_PORT = 6379,
    comments_path = '/data/comments/',
    wishs_path = '/data/wishs/',
    ups_path = '/data/ups/',
    downs_path = '/data/downs/',
    imgs_path = '/data/imgs/',
    tmp_path = '/data/tmp/',
	api_host = 'http://127.0.0.1:82',

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
