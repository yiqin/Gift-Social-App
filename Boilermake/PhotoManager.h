//
//  PhotoManager.h
//  Boilermake
//
//  Created by yiqin on 10/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhotoManager : NSObject {
    NSString *test;
}

@property (nonatomic, retain) NSString *test;

+ (id)sharedManager;

+(NSString *) getTest;
+(void) setTest:(NSString *) selectedTest;

@end
