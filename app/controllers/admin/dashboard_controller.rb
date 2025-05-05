class Admin::DashboardController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :require_admin!

  def index

  end

  private

  def require_admin!
    redirect_to root_path, alert: "Accès réservé aux admins" unless current_user&.admin?
  end
end
