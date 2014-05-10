//
//  ViewController.m
//  SampleNotWorking
//
//  Created by Mustafa Rahman on 5/9/14.
//  Copyright (c) 2014 Moomoo. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
    [[NSNotificationCenter defaultCenter] addObserverForName:@"supbro"
                                                      object:nil
                                                       queue:mainQueue
                                                  usingBlock:^(NSNotification *note)
     {
         
         NSLog(@"got the notification!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! %@", note.userInfo);

         
         
     }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
