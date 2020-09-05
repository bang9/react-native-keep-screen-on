//
//  RNKeepScreenOn.m
//  RNKeepScreenOn
//
//  Copyright © 2020 Bang9. All rights reserved.
//

#import "RNKeepScreenOn.h"
#import "UIKit/UIKit.h"

@implementation RNKeepScreenOn

+ (BOOL)requiresMainQueueSetup {
  return YES;
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(on) {
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    dispatch_sync(mainQueue, ^{
        [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
    });
}

RCT_EXPORT_METHOD(off) {
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    dispatch_sync(mainQueue, ^{
        [[UIApplication sharedApplication] setIdleTimerDisabled:NO];
    });
}

@end
