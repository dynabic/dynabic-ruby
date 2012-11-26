$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))
$LOAD_PATH.unshift(File.expand_path('../lib/dynabic', __FILE__))

require 'dynabic'

Swagger.configure do |config|
  config.client_id   = 'f71bd4b0adda428587bc'
  config.private_key = '412f6d6f60d44b568018'
  config.host        = 'api.dynabic.com'
  config.scheme      = 'https'
  config.base_path   = '/billing1.1'
end

a = Subscriptions_api._get_subscriptions('groupdocs', 'xml', 0, 100).map do |i|
  i.customer['email']
end
require 'pp'
pp a
