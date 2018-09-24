####### Program Dependencies ########
require 'json'
require './classes/transfer_target_generator'

####### Set-Up ########
# Produces Transfer Targets.
TransferTargetGenerator.new(90).call
