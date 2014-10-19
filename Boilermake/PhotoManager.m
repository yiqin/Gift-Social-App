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
@synthesize firstImage;
@synthesize animationImages;

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
        
        firstImage = [UIImage imageNamed:@"IMG_1103.JPG"];
        animationImages = [NSMutableArray arrayWithObjects:firstImage,
                                                            [UIImage imageNamed:@"IMG_1104.JPG"],
                                                            [UIImage imageNamed:@"IMG_1105.JPG"],
                                                            [UIImage imageNamed:@"IMG_1105.JPG"],
                                                            [UIImage imageNamed:@"IMG_1104.JPG"], nil];
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

+(UIImage *) getFirstImage
{
    PhotoManager *shared = [PhotoManager sharedManager];
    return shared.firstImage;
}

+(NSMutableArray *) getAnimationImages
{
    PhotoManager *shared = [PhotoManager sharedManager];
    return shared.animationImages;
}


@end
