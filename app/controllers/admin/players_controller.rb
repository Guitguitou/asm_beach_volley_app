class Admin::PlayersController < Admin::BaseController
  before_action :set_player, only: [:edit, :update]

  def index
    @players = Player.order(created_at: :desc)
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to admin_players_path, notice: "Joueur créé avec succès"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @player.update(player_params)
      redirect_to admin_players_path, notice: "Joueur mis à jour"
    else
      render :edit
    end
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :phone, :user_id)
  end

  def set_player
    @player = Player.find_by(id: params[:id])
    redirect_to admin_players_path, alert: "Joueur introuvable" unless @player
  end
end
