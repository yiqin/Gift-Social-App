//
//  ViewController.m
//  Boilermake
//
//  Created by yiqin on 10/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
#import "PhotoManager.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
    
    // self.demoImages = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 960)];
    self.demoImages = [[UIImageView alloc] initWithImage:[PhotoManager getFirstImage]];
    self.demoImages.animationImages = [PhotoManager getAnimationImages];
    
    self.demoImages.backgroundColor = [UIColor redColor];
    
    self.demoImages.contentMode = UIViewContentModeScaleAspectFill;
    self.demoImages.animationRepeatCount = 100;
    self.demoImages.animationDuration = 0.5;
    
    [self.demoImages startAnimating];
    
    // [self.view addSubview:self.demoImages];
    
    NSArray *devices = [AVCaptureDevice devices];
    
    for (AVCaptureDevice *device in devices) {
        
        NSLog(@"Device name: %@", [device localizedName]);
        
        if ([device hasMediaType:AVMediaTypeVideo]) {
            
            if ([device position] == AVCaptureDevicePositionBack) {
                NSLog(@"Device position : back");
            }
            else {
                NSLog(@"Device position : front");
            }
        }
    }
}

- (void)viewDidLayoutSubviews{
    self.demoImages.frame = CGRectMake(10, 100, 300, 402);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
