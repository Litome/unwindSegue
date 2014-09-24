//
//  Model.h
//  UnwindSegueHowTo
//
//  Created by Lisandre Taylor on 24/09/2014.
//  Copyright (c) 2014 Lisandre Taylor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

/**
 *  Status codes for the system.
 */
typedef NS_ENUM(NSInteger, systemStatusCode) {
    kStartUp,
    kNewUser,
    kLoggingIn,
    kLoggedOut
};

/**
 *  The state the system is in.
 */
@property systemStatusCode systemStatus;

/**
 * Class method to access the singleton.
 * If this is the first access, an instance will be created.
 * Otherwise, a pointer to the existing instance is returned instead.
 *
 * @return Pointer to the shared instance of the Model's singleton
 */
+ (Model *) sharedInstance;

@end
