class PlayerGenerator

  def call
    player_object
  end

  private

  def player_object
    return {
      name: player_name,
      age: player_age,
      position: player_position,
      club: {
        division: club_div
      },
      statistics: {
        height: player_height,
        weight: player_weight,
        appearances: rand(0..100),
        goals: rand(0..100),
        assists: rand(0..100),
        tackles: rand(0..100),
        interceptions: rand(0..100),
        cards: {
          red: rand(0..10),
          yellow: rand(0..20)
        }
      }
    }
  end

  def player_name
    first_names = %w(Zatlan Silva David Wayne Mesut Lionel Cristiano Mohammed Sergio)
    last_names = %w(Silva Bobby Messi Ronaldo Salah Ozil Ramos)
    "#{first_names.sample} #{last_names.sample}"
  end

  def player_age
    rand(16..36)
  end

  def player_position
    positions = %w(Forward Midfielder Defender)
    positions.sample
  end

  def club_div
    rand(1..2)
  end

  def player_height
    num = rand(1.4..2.2).round(2)
    "#{num}m"
  end

  def player_weight
    num = rand(60..100)
    "#{num}kg"
  end
end
