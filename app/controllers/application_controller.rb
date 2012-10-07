class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :password_protected if Rails.env.staging?

  protected

  def password_protected
    authenticate_or_request_with_http_basic do |username, password|
      username == "digicommu" && password == "akita"
    end
  end

end
