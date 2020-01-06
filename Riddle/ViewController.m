//
//  ViewController.m
//  Riddle
//
//  Created by Macbook on 29/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "ViewController.h"
#import "playVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = true;
  
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = true;
}

- (IBAction)play:(id)sender
{
    playVC * v = [self.storyboard instantiateViewControllerWithIdentifier:@"playVC"];
    [self.navigationController pushViewController:v animated:YES];
}

@end
