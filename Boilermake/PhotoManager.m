//
//  PhotoManager.m
//  Boilermake
//
//  Created by yiqin on 10/18/14.
//  Copyright (c) 2014 yiqin. All rights reserved.
//

#import "PhotoManager.h"

@implementation PhotoManager
@synthesize test;

+(id)sharedManager
{
    static PhotoManager *sharedPhotoManger = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedPhotoManger = [[self alloc] init];
    });
    return sharedPhotoManger;
}

- (instancetype)init
{
    if (self = [super init]) {
        test = @"YESSSSSS";
    }
    return self;
}

+(NSString *) getTest
{
    PhotoManager *shared = [PhotoManager sharedManager];
    return shared.test;
}

+(void) setTest:(NSString *)selectedTest
{
    PhotoManager *shared = [PhotoManager sharedManager];
    shared.test = selectedTest;
}

@end
