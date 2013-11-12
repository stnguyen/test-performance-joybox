Test performance Rubymotion + cocos2d (Joybox)
=======================

### Experiment

- Display 200 animated sprites on screen
- Schedule update to move each sprite a little bit per frame. Update code is written in both Ruby & Objective C for testing

![Joybox experiment](https://dl.dropboxusercontent.com/s/7dxnayxatu7iqti/test-joybox-experiment.PNG?dl=1&token_hash=AAGYOXkSG_rQm1I9GbO6BEIrtPJdfRGbmneJ0NIlJ8VWAg)

#### Update code

##### Ruby

    characters.each do |character|
      position = character.position
      position = CGPointMake(position.x + (Random.rand(40) - 20)*delta,
                             position.y + (Random.rand(40) - 20)*delta)
      character.setPosition position
    end

##### Objective C

    for (CCNode* character in characters) {
      CGPoint position = character.position;
      position = CGPointMake(position.x + ((float)(arc4random() % 40)-20)*delta,
                             position.y + ((float)(arc4random() % 40)-20)*delta);
      character.position = position;
    }

### Result

_Run the experiment on **iPhone 4**_

- With update code written in Objective C: **60fps** 
- With update code written in Ruby: 
  - Use `node.setPosition(position)` to set sprite position: **35fps**
  - Use `node.position = position` to set sprite position: **20fps**
