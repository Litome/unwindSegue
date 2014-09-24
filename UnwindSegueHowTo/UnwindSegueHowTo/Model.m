//
//  Model.m
//  UnwindSegueHowTo
//
//  Created by Lisandre Taylor on 24/09/2014.
//  Copyright (c) 2014 Lisandre Taylor. All rights reserved.
//

#import "Model.h"

@implementation Model

+ (id) sharedInstance
{
    static dispatch_once_t onceToken = 0;
    
    __strong static id _sharedObject = nil;
    dispatch_once(&onceToken, ^{
        _sharedObject = [[self alloc] init];
    });
    
    return _sharedObject;
}

@end
