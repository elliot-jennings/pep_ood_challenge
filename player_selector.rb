####### Program Dependencies ########
require 'json'
# Templates - Remember remove or edit these line if you edit the file names etc.
require './classes/class_template'
require './modules/module_template'
# Must explicitly include modules to use them, unlike classes which are instantiated (created).
include ModuleTemplate

####### My Solution ########
# Set the data.
# Hint: Inspect the data first with prettify. The data is a bunch of hash objects within a single array (this is how most json data will be displayed/formatted).
# Hint: In this challenge you won't be altering the stats of any player, simply checking them to filter out viable candidates to place in your successful_candidates.json file.
transfer_targets_and_stats = JSON.parse(File.read('transfer_targets.json'))

# Example Class.
ClassTemplate.new('Hello Class World').call

# Example Module ( Tip: Modules can be extended into Classes! Google 'Ruby include vs extend' ).
ModuleTemplate::my_module_method('Hello Modular World')

# Then 'write' your sorted transfer targets into the successful_candidates.json file ( Tip: File.write('successful_candidates.json', transfer_targets.to_json) ).
