//
//  playVC.m
//  Riddle
//
//  Created by Macbook on 29/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "playVC.h"

@interface playVC ()
{
    NSMutableArray * riddlesArray;
    NSMutableDictionary * riddle;
    
    NSMutableArray * OriginalAnswerArray;
    NSMutableArray * ShuffledAnswerArray;
    
    NSString * selectedAnswer;
    NSMutableDictionary * selectedRiddle;
    NSString * selctedChar;
    int selectedIndex;
    NSString * selectAnswerButton;
    NSString * selectedChooseButton;
    int life;
    int score;
    int counter;
    int level;
}

@end

@implementation playVC

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    self.navigationController.navigationBar.hidden = false;
    
    
    level = 1;
        score = 0;
    [self setArray];
    [self setScreen];
}

- (IBAction)ab1:(id)sender
{
    
}

- (IBAction)ab2:(id)sender
{
    
}

- (IBAction)ab3:(id)sender
{
    
}

- (IBAction)ab4:(id)sender
{
    
}

- (IBAction)ab5:(id)sender
{
    
}

- (IBAction)ab6:(id)sender
{
    
}



- (IBAction)cb1:(id)sender
{
    if (selectedIndex < OriginalAnswerArray.count)
    {
        if ([[ShuffledAnswerArray objectAtIndex:0] isEqualToString:[OriginalAnswerArray objectAtIndex:selectedIndex]])
        {
            [self setAnswerButtons];
            selectedIndex = selectedIndex + 1 ;
            
            [self checkWin];
        
        }
        else
        {
            life = life -1;
            [self setHearts];
        }
    }
    
}

- (IBAction)cb2:(id)sender
{
    if (selectedIndex < OriginalAnswerArray.count)
    {
        if ([[ShuffledAnswerArray objectAtIndex:1] isEqualToString:[OriginalAnswerArray objectAtIndex:selectedIndex]])
        {
            [self setAnswerButtons];
            selectedIndex = selectedIndex + 1 ;
            
            [self checkWin];
            
        }
        else
        {
            life = life -1;
            [self setHearts];
        }
    }
}

- (IBAction)cb3:(id)sender
{
    if (selectedIndex < OriginalAnswerArray.count)
    {
        if ([[ShuffledAnswerArray objectAtIndex:2] isEqualToString:[OriginalAnswerArray objectAtIndex:selectedIndex]])
        {
            [self setAnswerButtons];
            selectedIndex = selectedIndex + 1 ;
            
            [self checkWin];
            
        }
        else
        {
            life = life -1;
            [self setHearts];
        }
    }
}

- (IBAction)cb4:(id)sender
{
    if (selectedIndex < OriginalAnswerArray.count)
    {
        if ([[ShuffledAnswerArray objectAtIndex:3] isEqualToString:[OriginalAnswerArray objectAtIndex:selectedIndex]])
        {
            [self setAnswerButtons];
            selectedIndex = selectedIndex + 1 ;
            
            [self checkWin];
            
        }
        else
        {
            life = life -1;
            [self setHearts];
        }
    }
}

- (IBAction)cb5:(id)sender
{
    if (selectedIndex < OriginalAnswerArray.count)
    {
        if ([[ShuffledAnswerArray objectAtIndex:4] isEqualToString:[OriginalAnswerArray objectAtIndex:selectedIndex]])
        {
            [self setAnswerButtons];
            selectedIndex = selectedIndex + 1 ;
            
            [self checkWin];
            
        }
        else
        {
            life = life -1;
            [self setHearts];
        }
    }
}

- (IBAction)cb6:(id)sender
{
    if (selectedIndex < OriginalAnswerArray.count)
    {
        if ([[ShuffledAnswerArray objectAtIndex:5] isEqualToString:[OriginalAnswerArray objectAtIndex:selectedIndex]])
        {
            [self setAnswerButtons];
            selectedIndex = selectedIndex + 1 ;
            
            [self checkWin];
            
        }
        else
        {
            life = life -1;
            [self setHearts];
        }
    }
}



-(void) checkWin
{
    if (selectedIndex == OriginalAnswerArray.count)
    {
        
        if (score == 500)
        {
            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Well Done"
                                                                           message:[NSString stringWithFormat:@"You've solved all the Riddles!"]
                                                                    preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Back" style:UIAlertActionStyleDefault
                                                                  handler:^(UIAlertAction * action) {
                                                                      
                                                                      [self.navigationController popViewControllerAnimated:YES];
                                                                      
                                                                  }];
            
            [alert addAction:defaultAction];
            [self presentViewController:alert animated:YES completion:nil];
        }
        else
        {
        
        
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Well Done"
                                                                       message:[NSString stringWithFormat:@"The Answer was : %@ -- You Won", selectedAnswer]
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Next Riddle" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                                  
                                                                  
                                                                  level = level + 1;
                                                                  self->score = score + 100;
                                                                  [self setScreen];
                                                              }];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        }
    }
}


-(void) changerAnswerToArray:(NSString * ) ans
{
    OriginalAnswerArray = [[NSMutableArray alloc] initWithCapacity:[ans length]];
    for (int i=0; i < [ans length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [ans characterAtIndex:i]];
        [OriginalAnswerArray addObject:ichar];
    }
}



- (NSMutableArray*)shuffle : (NSMutableArray * ) arr
{
    NSUInteger count = [arr count];
    if (count <= 1) return arr;
    for (NSUInteger i = 0; i < count - 1; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [arr exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    
    return arr;
}


-(void) setHearts
{
    if (life == 3)
    {
        _heart1.hidden = false;
        _heart2.hidden = false;
        _heart3.hidden = false;
    }
    else if (life == 2)
    {
        _heart1.hidden = true;
        _heart2.hidden = false;
        _heart3.hidden = false;
    }
    else if (life == 1)
    {
        _heart1.hidden = true;
        _heart2.hidden = true;
        _heart3.hidden = false;
    }
    else if (life == 0)
    {
        _heart1.hidden = true;
        _heart2.hidden = true;
        _heart3.hidden = true;
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"You Lost"
                                                                       message:[NSString stringWithFormat:@"The Answer was : %@", selectedAnswer]
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Try Again" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                                  
                                                                  [self.navigationController popViewControllerAnimated:YES];
                                                              }];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
    
    
    
}

-(void) setScreen
{
    [_ab1 setTitle:@"?" forState:UIControlStateNormal];
    [_ab2 setTitle:@"" forState:UIControlStateNormal];
    [_ab3 setTitle:@"" forState:UIControlStateNormal];
    [_ab4 setTitle:@"" forState:UIControlStateNormal];
    [_ab5 setTitle:@"" forState:UIControlStateNormal];
    [_ab6 setTitle:@"" forState:UIControlStateNormal];
    
    
    

    
    _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
    
    _levelLabel.text = [NSString stringWithFormat:@"Level %d", level];
    
    int r = arc4random()%riddlesArray.count;
    
    selectedRiddle = [riddlesArray objectAtIndex:r];
    
    selectedAnswer = [selectedRiddle objectForKey:@"answer"];
    
    [self changerAnswerToArray:selectedAnswer];
    
    NSMutableArray * arr = [[NSMutableArray alloc] initWithArray:OriginalAnswerArray];
    
    ShuffledAnswerArray = [[NSMutableArray alloc ] init];
    ShuffledAnswerArray = [self shuffle:arr];
    
    
    
    _riddleLabel.text  = [selectedRiddle objectForKey:@"riddle"];
    
    selectedIndex = 0;
    
    life = 3;
    
    [self setHearts];
    
    [self setChoiceViews];
    [self setChoiceButtons];

    
    
}

-(void) setAnswerButtons
{
    if (selectedIndex == 0)
    {
        [_ab1 setTitle:[OriginalAnswerArray objectAtIndex:0] forState:UIControlStateNormal];
        [_ab2 setTitle:@"?" forState:UIControlStateNormal];
    }
    else if (selectedIndex == 1)
    {
        [_ab2 setTitle:[OriginalAnswerArray objectAtIndex:1] forState:UIControlStateNormal];
        [_ab3 setTitle:@"?" forState:UIControlStateNormal];
    }
    else if (selectedIndex == 2)
    {
        [_ab3 setTitle:[OriginalAnswerArray objectAtIndex:2] forState:UIControlStateNormal];
        [_ab4 setTitle:@"?" forState:UIControlStateNormal];
    }
    else if (selectedIndex == 3)
    {
        [_ab4 setTitle:[OriginalAnswerArray objectAtIndex:3] forState:UIControlStateNormal];
        [_ab5 setTitle:@"?" forState:UIControlStateNormal];
    }
    else if (selectedIndex == 4)
    {
        [_ab5 setTitle:[OriginalAnswerArray objectAtIndex:4] forState:UIControlStateNormal];
        [_ab6 setTitle:@"?" forState:UIControlStateNormal];
    }
    else if (selectedIndex == 5)
    {
        [_ab6 setTitle:[OriginalAnswerArray objectAtIndex:5] forState:UIControlStateNormal];
    }
}


-(void) setChoiceViews
{
    if (ShuffledAnswerArray.count == 6)
    {
        _cv1.hidden = false;
        _cv2.hidden = false;
        _cv3.hidden = false;
        _cv4.hidden = false;
        _cv5.hidden = false;
        _cv6.hidden = false;
        
        
        _av1.hidden = false;
        _av2.hidden = false;
        _av3.hidden = false;
        _av4.hidden = false;
        _av5.hidden = false;
        _av6.hidden = false;
        
        
    }
    else if (ShuffledAnswerArray.count == 5)
    {
        _cv1.hidden = false;
        _cv2.hidden = false;
        _cv3.hidden = false;
        _cv4.hidden = false;
        _cv5.hidden = false;
        _cv6.hidden = true;
        
        
        _av1.hidden = false;
        _av2.hidden = false;
        _av3.hidden = false;
        _av4.hidden = false;
        _av5.hidden = false;
        _av6.hidden = true;
        
        
    }
    else if (ShuffledAnswerArray.count == 4)
    {
        _cv1.hidden = false;
        _cv2.hidden = false;
        _cv3.hidden = false;
        _cv4.hidden = false;
        _cv5.hidden = true;
        _cv6.hidden = true;
        
        
        _av1.hidden = false;
        _av2.hidden = false;
        _av3.hidden = false;
        _av4.hidden = false;
        _av5.hidden = true;
        _av6.hidden = true;
        
    }
    else if (ShuffledAnswerArray.count == 3)
    {
        _cv1.hidden = false;
        _cv2.hidden = false;
        _cv3.hidden = false;
        _cv4.hidden = true;
        _cv5.hidden = true;
        _cv6.hidden = true;
        
        _av1.hidden = false;
        _av2.hidden = false;
        _av3.hidden = false;
        _av4.hidden = true;
        _av5.hidden = true;
        _av6.hidden = true;
        
    }
    
    
    
}

-(void) setChoiceButtons
{
    for(int i =0; i<ShuffledAnswerArray.count ; i++)
    {
        if (i == 5)
        {
            [_cb6 setTitle:[ShuffledAnswerArray objectAtIndex:i] forState:UIControlStateNormal];
        }
        else if (i == 4)
        {
            [_cb5 setTitle:[ShuffledAnswerArray objectAtIndex:i] forState:UIControlStateNormal];
        }
        else if (i == 3)
        {
            [_cb4 setTitle:[ShuffledAnswerArray objectAtIndex:i] forState:UIControlStateNormal];
        }
        else if (i == 2)
        {
            [_cb3 setTitle:[ShuffledAnswerArray objectAtIndex:i] forState:UIControlStateNormal];
        }
        else if (i == 1)
        {
            [_cb2 setTitle:[ShuffledAnswerArray objectAtIndex:i] forState:UIControlStateNormal];
        }
        else if (i == 0)
        {
            [_cb1 setTitle:[ShuffledAnswerArray objectAtIndex:i] forState:UIControlStateNormal];
        }
    }
}





-(void)setArray
{
    riddlesArray = [[NSMutableArray alloc] init];
    
    riddle = [[NSMutableDictionary alloc] init];
    [riddle setObject:@"It can be cracked, \nIt can be made, It can be told, \nIt can be played. \nWhat is it?" forKey:@"riddle"];
    [riddle setObject:@"Joke" forKey:@"answer"];
    [riddle setObject:@"1" forKey:@"id"];
    [riddlesArray addObject:riddle];
    
    
    riddle = [[NSMutableDictionary alloc] init];
    [riddle setObject:@"Long and thin, red within,\nWith a nail at the end.\nWhat am I?" forKey:@"riddle"];
    [riddle setObject:@"Finger" forKey:@"answer"];
    [riddle setObject:@"2" forKey:@"id"];
    [riddlesArray addObject:riddle];
    
    
    riddle = [[NSMutableDictionary alloc] init];
    [riddle setObject:@"I am born of water but when I return to water, I die. What am I?" forKey:@"riddle"];
    [riddle setObject:@"ICE" forKey:@"answer"];
    [riddle setObject:@"3" forKey:@"id"];
    [riddlesArray addObject:riddle];
    
    
    riddle = [[NSMutableDictionary alloc] init];
    [riddle setObject:@"What is the softest nut in the entire world?" forKey:@"riddle"];
    [riddle setObject:@"Donut" forKey:@"answer"];
    [riddle setObject:@"4" forKey:@"id"];
    [riddlesArray addObject:riddle];
    
    
    
    
    riddle = [[NSMutableDictionary alloc] init];
    [riddle setObject:@"Its ready to walk when I’m all tied up, but really should stop when I’m untied. What am I? " forKey:@"riddle"];
    [riddle setObject:@"Shoes" forKey:@"answer"];
    [riddle setObject:@"5" forKey:@"id"];
    [riddlesArray addObject:riddle];
    
    
    
    riddle = [[NSMutableDictionary alloc] init];
    [riddle setObject:@"What has six faces, But does not wear makeup. It also has twenty-one eyes, But cannot see? " forKey:@"riddle"];
    [riddle setObject:@"Dice" forKey:@"answer"];
    [riddle setObject:@"6" forKey:@"id"];
    [riddlesArray addObject:riddle];
    
    
    riddle = [[NSMutableDictionary alloc] init];
    [riddle setObject:@"I am always in front of you but never behind you. What am I?" forKey:@"riddle"];
    [riddle setObject:@"Future" forKey:@"answer"];
    [riddle setObject:@"7" forKey:@"id"];
    [riddlesArray addObject:riddle];
    
    
    riddle = [[NSMutableDictionary alloc] init];
    [riddle setObject:@"I start with an e and end with an e. I have whole countries inside of me. What am I?" forKey:@"riddle"];
    [riddle setObject:@"Europe" forKey:@"answer"];
    [riddle setObject:@"8" forKey:@"id"];
    [riddlesArray addObject:riddle];
    
    
//    riddle = [[NSMutableDictionary alloc] init];
//    [riddle setObject:@"Poor people have it. Rich people need it. If you eat it you die. what is it?" forKey:@"riddle"];
//    [riddle setObject:@"Nothin" forKey:@"answer"];
//    [riddle setObject:@"9" forKey:@"id"];
//    [riddlesArray addObject:riddle];
    
    
    riddle = [[NSMutableDictionary alloc] init];
    [riddle setObject:@"I make two people out of one.  What am I?" forKey:@"riddle"];
    [riddle setObject:@"Mirror" forKey:@"answer"];
    [riddle setObject:@"10" forKey:@"id"];
    [riddlesArray addObject:riddle];
    
    
    
    
}
@end
