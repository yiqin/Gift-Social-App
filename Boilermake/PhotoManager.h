//
//  PhotoManager.h
//  Boilermake
//
//  Created by yiqin on 10/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PhotoManager : NSObject {
    NSString *test;
    UIImage *firstImage;
    NSMutableArray *animationImages;
}

@property (nonatomic, retain) NSString *test;
@property (nonatomic, retain) UIImage *firstImage;
@property (nonatomic, retain) NSMutableArray *animationImages;

+ (id)sharedManager;

+(NSString *) getTest;
+(void) setTest:(NSString *) selectedTest;

@end
