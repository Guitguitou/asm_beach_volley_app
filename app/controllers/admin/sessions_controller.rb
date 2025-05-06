class Admin::SessionsController < Admin::BaseController
  before_action :set_session, only: [:edit, :update]

  def index
    @sessions = Session.order(starts_at: :asc)
  end

  def new
    redirect_to form_admin_sessions_path(type: "Training")
  end

  def form
    klass = params[:type].presence_in(%w[Training FreePlay]) || "Training"
    @session = klass.constantize.new
    render partial: "form", locals: { session: @session }
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to admin_dashboard_path, notice: "Session créée avec succès"
    else
      render partial: "form", locals: { session: @session }
    end
  end

  def edit
  end

  def update
    if @session.update(session_params)
      redirect_to admin_sessions_path, notice: "Session mise à jour"
    else
      render :edit
    end
  end

  private

  def session_params
    params.require(:session).permit(:type, :starts_at, :terrain, :capacity, group_ids: [])
  end

  def set_session
    @session = Session.find(params[:id])
  end
end
