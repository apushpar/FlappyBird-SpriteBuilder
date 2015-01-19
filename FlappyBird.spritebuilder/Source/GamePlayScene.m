#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObsacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObsacle += delta;
// check if 2 seconds have passed
    if (timeSinceObsacle > 2.0f) {

        // add new obstacle
        [self addObstacle];

        //reset timer
        timeSinceObsacle = 0.0f;
    }
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{

    [character flap];
}

@end
