class Admin::BaseController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :authorize_admin!

  private

  def authorize_admin!
    unless current_user.admin?
      redirect_to root_path, alert: "Vous n'êtes pas autorisé à accéder à cette page"
    end
  end
end
