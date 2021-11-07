class ApplicationController < ActionController::Base
  helper_method :secret_clearance
  before_action :authenticate_user!

  def secret_clearance
    session[:clearance].presence || false
  end
end
