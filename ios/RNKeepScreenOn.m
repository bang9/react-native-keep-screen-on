//
//  RNKeepScreenOn.m
//  RNKeepScreenOn
//
//  Copyright © 2020 Bang9. All rights reserved.
//

#import "RNKeepScreenOn.h"

@implementation RNKeepScreenOn

RCT_EXPORT_MODULE();

+ (void)hello {}

- (NSDictionary *)constantsToExport
{
  return @{ @"count": @1 };
}

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

@end
