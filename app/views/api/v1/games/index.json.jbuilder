json.array! @games do |game|
  json.challenger do
    if json.challenger.present?
      json.partial!("api/v1/players/player", player: game.challenger)
    else
      nil
    end
 end

  json.challenged do
    if json.challenged.present?
      json.partial!("api/v1/players/player", player: game.challenged)
    else
      nil
    end
  end

  json.winner_id game.winner_id
  json.score game.score

end