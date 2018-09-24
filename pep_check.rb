require 'json'

def pep_check(position)
  successful_candidates = JSON.parse(File.read('successful_candidates.json'))
  players = successful_candidates.find_all { |player| player['position'] == position }
  if players.empty?
    result = "No #{position}s! Re-run your set_up.rb file please."
  else
    results = []
    players.each do |player|
      if is_experianced(player)
        results << check_statistics(player, position)
      else
        results << 'False'
      end
    end
    if results.include? 'False'
      result = "#{position}s no es bueno!"
    else
      result = "#{position}s are bueno!"
    end
  end
  return result
end

def is_experianced(player)
  player['age'] >= 18 && player['club']['division'] == 1 && player['statistics']['appearances'] >= 15
end

def check_statistics(player, position)
  check_def_stats(player) if position == 'Defender'
  check_mid_stats(player) if position == 'Midfielder'
  check_fwd_stats(player) if position == 'Forward'
end

def check_def_stats(player)
  player_stats = player['statistics']
  player_stats['tackles'] > 40 && player_stats['interceptions'] > 20 && player_stats['weight'].gsub('kg', '').to_i >= 68
end

def check_mid_stats(player)
  player_cards = player['statistics']['cards']['yellow'] + player['statistics']['cards']['red']
  player['name'].include?('Silva') && player_cards < 20
end

def check_fwd_stats(player)
  player_stats = player['statistics']
  player_goals_and_assists = player_stats['goals'] + player_stats['assists']
  player_goals_and_assists >= 60 && player_stats['height'].gsub('m', '').to_f >= 1.80
end

p pep_check('Defender'), pep_check('Midfielder'), pep_check('Forward')
