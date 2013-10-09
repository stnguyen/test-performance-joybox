#import "ObjCMover.h"
#import "cocos2d.h"

@implementation ObjCMover

+ (void) move: (NSArray*)characters withDelta:(float)delta {
  for (CCNode* character in characters) {
    CGPoint position = character.position;

    position = CGPointMake(position.x + ((float)(arc4random() % 40)-20)*delta,
                           position.y + ((float)(arc4random() % 40)-20)*delta);
    
    character.position = position;
  }
}

@end
