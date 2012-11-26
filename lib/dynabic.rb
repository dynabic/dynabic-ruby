require 'api/swagger'
Dir["#{File.dirname(__FILE__)}/dynabic/api/*.rb"].each { |f| require f }
Dir["#{File.dirname(__FILE__)}/dynabic/models/*.rb"].each { |f| require f }
