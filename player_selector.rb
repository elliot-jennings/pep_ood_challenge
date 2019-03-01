####### Program Dependencies ########
require 'json'
# Templates - Remember remove or edit these line if you edit the file names etc.
require './classes/class_template'
require './modules/module_template'
# Must explicitly include modules to use them, unlike classes which are instantiated (created).
include ModuleTemplate

####### My Solution ########
# Load and assign data to a variable here.

targets = JSON.parse(File.read('transfer_targets.json'))
# Tip: Inspect the data first with prettify (shift + command + p). The data is a bunch of hash objects within a single array (this is how most json data will be displayed/formatted).

@successful_candidates = []

def filter_clubs_criteria(targets)
    clubs_list = ['Arsenal', 'Chelsea', 'Leicester City', 'Liverpool', 'Manchester United', 'Tottenham Hotspur']

    targets.each do |athlete|
        if clubs_list.include?(athlete["Club"])
         @successful_candidates << athlete
        else
         # Do nothing
        end
    end
end
#This is where the code goes to put successful candidates into the file

filter_clubs_criteria(targets)

"Appearances".to_i
    targets.each do |athlete|
        if "Appearances" > 49
        @successful_candidates << athlete
        else
        # Do nothing
        end
    end
end

def filter_goalkeepers(targets)
    goalies = ['Goalkeeper']

    targets.each do |athlete|
        if goalies.include?(athlete["Position"])
            @successful_candidates << athlete
        else
         # Do nothing
        end
    end
end

filter_goalkeepers(targets)

def filter_defenders
    defenders = ['Defender']

    targets.each do |athlete|
        if defenders.include?(athlete["Position"])
            @successful_candidates << athlete
        else
         # Do nothing
        end
    end
end

def filter_midfielders
    midfielders = ['Midfielder']

    targets.each do |athlete|
        if midfielders.include?(athlete["Position"])
            @successful_candidates << athlete
        else
         # Do nothing
        end
    end
end

def filter_forwards
    forwards = ['Forward']

    targets.each do |athlete|
        if forwards.include?(athlete["Position"])
            @successful_candidates << athlete
        else
         # Do nothing
        end
    end
end

# # Then 'write' your sorted transfer targets into the successful_candidates.json file.
File.write('successful_candidates.json', @successful_candidates.to_json)
