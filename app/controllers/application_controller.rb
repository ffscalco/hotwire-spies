class ApplicationController < ActionController::Base
  helper_method :secret_clearance

  def secret_clearance
    session[:clearance].presence || false
  end
end
