module Api
module V1
class BaseController < ActionController::Base
  protect_from_forgery with: :exception
end
end
end
