require_relative 'player_generator'

class TransferTargetGenerator

  def initialize(number_of_players)
    @number_of_players = (number_of_players / 3.00).ceil
    @transfer_targets = []
  end

  attr_reader :number_of_players, :transfer_targets
  private :number_of_players, :transfer_targets

  def call
    generate_players
    File.write('transfer_targets.json', transfer_targets.to_json)
    p 'Transfer List Successfully Generated'
  end

  private

  def generate_players
    number_of_players.times do
      transfer_targets << PlayerGenerator.new().call
    end
  end
end
