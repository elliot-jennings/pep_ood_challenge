####### Program Dependencies ########
require 'json'
# Templates - Remember remove or edit these line if you edit the file names etc.
require './classes/class_template'
require './modules/module_template'
# Must explicitly include modules to use them, unlike classes which are instantiated (created).
include ModuleTemplate

####### My Solution ########
# Load and assign data to a variable here.
transfer_targets = File.read('transfer_targets.json')
transfer_targets = JSON.parse(transfer_targets)
# Tip: Inspect the data first with prettify (shift + command + p). The data is a bunch of hash objects within a single array (this is how most json data will be displayed/formatted).

# Example Class.
ClassTemplate.new('Hello Class World').call

# Example Module ( Tip: Modules can also be included into Classes! ).
my_module_method('Hello Modular World')

# # Then 'write' your sorted transfer targets into the successful_candidates.json file.
File.write('successful_candidates.json', transfer_targets.to_json)
