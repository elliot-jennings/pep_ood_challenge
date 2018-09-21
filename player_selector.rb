require 'json'
require './classes/transfer_target_generator'
# Templates - Remember remove or edit these line if you edit the file names etc.
require './classes/class_template'
require './modules/module_template'
# Must explicitly include modules to use them, unlike classes which are instantiated (created).
include ModuleTemplate

# Produces Transfer Targes (do not remove the following 3 lines, or you won't have any data for the challenge!).
TransferTargetGenerator.new(90).call
# Loads transfer targets from json file ( Tip: instpect the actual data file using prettify ).
transfer_targets_json = File.read('transfer_targets.json')
# Transfers target list parsed into a ruby array full of ruby hash objects ( Tip: each player is a hash object, within an array ).
transfer_targets = JSON.parse(transfer_targets_json)

# An example Ruby Class and Ruby Module for you to see in action:
# Example Class.
ClassTemplate.new('Hello Class World').call
# Example Module. ( Tip: Modules can be included in Classes! )
ModuleTemplate::my_module_method('Hello Modular World')

# Hint: Try utilising Select and Reject methods for ruby arrays.

# Remember to generate your sorted transfer_targets array into JSON ( Tip: JSON.generate(transfer_targets) )
# Then 'write' your sorted transfer targets into the successful_candidates.json file. ( Tip: File.write('successful_candidates.json', transfer_targets) )
