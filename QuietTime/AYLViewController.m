//
//  AYLViewController.m
//  QuietTime
//
//  Created by Alex Yuning Liu on 4/12/14.
//  Copyright (c) 2014 Alex Yuning Liu. All rights reserved.
//

#import "AYLViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface AYLViewController ()

@end

@implementation AYLViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(playAudio:)
    forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Play Sound" forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
}

- (void)playAudio:(id)sender {
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:@"Beach" ofType:@"wav"];
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    NSError *error = nil;
    AVAudioPlayer *audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:&error];
    [audioPlayer play];
    NSLog(@"Should play sound, but may have encountered error %@", error);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
