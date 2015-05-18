class ApplicationController < ActionController::Base

  include DeviseTokenAuth::Concerns::SetUserByToken
  protect_from_forgery with: :exception

  before_action :render_layout!

  private

    def render_layout!
      render template: 'layouts/application' and return
    end
end
