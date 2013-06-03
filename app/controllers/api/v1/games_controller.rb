class Api::V1::GamesController < API::V1::BaseController
  def index
    @games = Rails.cache.fetch "api-v1-games", :expires_in => 1.minute do
      Game.complete.order(:updated_at)
    end

    respond_to do |format|
      format.json { render }
    end
  end
end
