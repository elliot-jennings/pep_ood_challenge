####### Program Dependencies ########
require 'json'
require './classes/transfer_target_generator'
# Templates - Remember remove or edit these line if you edit the file names etc.
require './classes/class_template'
require './modules/module_template'
# Must explicitly include modules to use them, unlike classes which are instantiated (created).
include ModuleTemplate

####### Set-Up ########

# Produces Transfer Targes (do not remove the following 3 lines, or you won't have any data for the challenge!).
TransferTargetGenerator.new(90).call
# Loads transfer targets from json file.
transfer_targets_json = File.read('transfer_targets.json')
# Transfers target list parsed into a ruby array full of ruby hash objects.
transfer_targets = JSON.parse(transfer_targets_json)


####### My Solution ########
# Hint: Inspect the data first with prettify. The data is a bunch of hash objects within a single array (this is how most json data will be displayed/formatted).
# Hint: In this challenge you won't be altering the stats of any player, simply checking them to filter out viable candidates to place in your successful_candidates.json file.
# Hint: Try utilising the find_all method for ruby arrays.


# Example Class
ClassTemplate.new('Hello Class World').call


# Example Module ( Tip: Modules can be included in Classes! )
ModuleTemplate::my_module_method('Hello Modular World')


# Remember to generate your sorted transfer_targets array into JSON ( Tip: JSON.generate(transfer_targets) )
# Then 'write' your sorted transfer targets into the successful_candidates.json file. ( Tip: File.write('successful_candidates.json', transfer_targets) )
