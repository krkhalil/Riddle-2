//
//  playVC.h
//  Riddle
//
//  Created by Macbook on 29/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface playVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *levelLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIImageView *heart1;
@property (weak, nonatomic) IBOutlet UIImageView *heart2;
@property (weak, nonatomic) IBOutlet UIImageView *heart3;
@property (weak, nonatomic) IBOutlet UILabel *riddleLabel;

@property (weak, nonatomic) IBOutlet UIView *av1;
@property (weak, nonatomic) IBOutlet UIView *av2;
@property (weak, nonatomic) IBOutlet UIView *av3;
@property (weak, nonatomic) IBOutlet UIView *av4;
@property (weak, nonatomic) IBOutlet UIView *av5;
@property (weak, nonatomic) IBOutlet UIView *av6;

@property (weak, nonatomic) IBOutlet UIButton *ab1;
@property (weak, nonatomic) IBOutlet UIButton *ab2;
@property (weak, nonatomic) IBOutlet UIButton *ab3;
@property (weak, nonatomic) IBOutlet UIButton *ab4;
@property (weak, nonatomic) IBOutlet UIButton *ab5;
@property (weak, nonatomic) IBOutlet UIButton *ab6;



@property (weak, nonatomic) IBOutlet UIView *cv1;
@property (weak, nonatomic) IBOutlet UIView *cv2;
@property (weak, nonatomic) IBOutlet UIView *cv3;
@property (weak, nonatomic) IBOutlet UIView *cv4;
@property (weak, nonatomic) IBOutlet UIView *cv5;
@property (weak, nonatomic) IBOutlet UIView *cv6;

@property (weak, nonatomic) IBOutlet UIButton *cb1;
@property (weak, nonatomic) IBOutlet UIButton *cb2;
@property (weak, nonatomic) IBOutlet UIButton *cb3;
@property (weak, nonatomic) IBOutlet UIButton *cb4;
@property (weak, nonatomic) IBOutlet UIButton *cb5;
@property (weak, nonatomic) IBOutlet UIButton *cb6;



@end

NS_ASSUME_NONNULL_END
