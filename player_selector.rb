####### Program Dependencies ########
require 'json'
# Templates - Remember remove or edit these line if you edit the file names etc.
require './modules/module_template'
# Must explicitly include modules to use them, unlike classes which are instantiated (created).
include ModuleTemplate

targets = File.read('transfer_targets.json')
targets = JSON.parse(targets)

clubs_list = ['Arsenal', 'Chelsea', 'Leicester City','Liverpool', 'Manchester United', 'Tottenham Hotspur']

def filter_clubs_criteria(targets, clubs_list)
  targets.delete_if { |player| player['Appearances'].to_i < 50 }
  targets.delete_if { |player| !clubs_list.include?(player['Club']) }
  targets.delete_if { |player| player['Position'] == 'Goalkeeper' && player['Passes'].to_i < 3000 }
  targets.delete_if { |player| player['Position'] == 'Goalkeeper' && player['Passes per match'].to_f < 28.00 }
end

filter_clubs_criteria(targets, clubs_list)

# # Then 'write' your sorted transfer targets into the successful_candidates.json file.
File.write('successful_candidates.json', targets.to_json)