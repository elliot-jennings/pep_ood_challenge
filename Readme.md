## Pep's OOD Challenge

![pep](https://github.com/sportsdatasolutions/pep_ood_challenge/blob/master/pep.png)

### Instructions

1. Fork this repository.

2. Set up the project locally (clone from your fork), bundle install and open up the challenge in atom.

3. Read the rest of this Readme and inspect all the project files.

4. The ```player_selector.rb``` file will be your main ruby program.

5. Remember to utilise OOP and use classes and/or modules to modularise your code. You'll notice example Ruby Class and Module templates in the ```classes``` and  ```modules``` folders. It's important to take into account the 'S' and 'D' in 'SOLID' when you approach this task. It may seem overkill in smaller projects but they are essential when moving onto larger projects, so better practice now rather than later (where you could end up with monolithic code bases that look ugly and are hard to debug), speaking from experience here...

6. After you complete the challenge have a review session with your buddy. Remember to provide your own Readme.md detailing how you approached the challenge and how your buddy can review your solution.

### The Challenge

**We have a request from Pep Guardiola to deal with his new transfer targets! All his targets and statistics are contained in the ```transfer_targets.json``` file provided (they will be randomly generated each time you run the main ruby program). The task is simple, he wants us to accept candidates based on the following criteria:**

```
## Experience Criteria

1. Successful candidates must currently be playing in either of the following clubs:
- Arsenal
- Chelsea
- Crystal Palace
- Leicester City
- Liverpool
- Manchester United
- Southampton
- Tottenham Hotspur
- Watford

2. Successful candidates must have made a minimum of 14 Appearances.

## As Goalkeepers

1. Successful candidates will have made made over 4000 'Passes'.

2. Reject candidates that have made less than and average of 30 'Passes per match'.

## As Defenders

1. Successful candidates will have a 'Tackle Success %' of 70 or above.

2. Reject candidates that have an accumulation of more than 6 'Red Cards'.

## As Midfielders

1. Successful candidates must have a combined total of over 70 'Goals' and 'Assists'.

2. Pep only wants two Midfielders in his list, sorted via the highest number of 'Assists'.

## As Forwards

1. Successful candidates will have attempted more than 100 Shots.

2. Successful candidates must have a Shooting Accuracy above 35%.

(Hint: Shooting Accuracy is not in the data, so it will have to be calculated via Shots and Shots on target)

```

**Pep then wants his candidates to be placed in another file called ```successful_candidates.json``` for him to review. Make sure the data is in JSON or else he'll get really frustrated!** :rage:

### Checking your successful candidates with Pep
Coming Soon.

### Bonus - Test Driven Development

Test Driven Development is **essential** in the software development field. As we are not teaching you to become part of the development workforce, testing will not feature heavily in this course, however, it still could be an idea to try out some TDD in an easy exercise like this, especially if you are interested in branching out into the profession. Plus, you won't have to relly on pep to check your answers :wink:

Here is a great little tutorial using the game [Fizzbuzz](https://medium.com/craft-academy/introduction-to-ruby-and-rspec-135da4051802). Once you've completed it, give rspec a go in Pep's challenge, it will get you coding the TDD way in no time!

### Guru-Reviews

If you would like a review from your guru. Create a pull request to the original challenge repository. Note that as you are not making any changes to the original challenge repository, we didn't need to create an upstream remote when setting up locally. Make sure you have committed and pushed all your code to your own forked repository.

#### To Create a Pull Request from your forked Github repo:

![PullRequest](https://github.com/danielstpaul/sds_academy_course/blob/master/public/PullRequest.png)

![PullRequest1](https://github.com/danielstpaul/sds_academy_course/blob/master/public/PullRequest1.png)

![PullRequest2](https://github.com/danielstpaul/sds_academy_course/blob/master/public/PullRequest2.png)
