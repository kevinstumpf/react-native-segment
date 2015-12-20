//
//  RNSegment.m
//  RNSegment
//
//  Created by Kevin Stumpf on 12/19/15.
//  Copyright © 2015 Dispatcher. All rights reserved.
//

#import "RNSegment.h"
#import <Analytics/SEGAnalytics.h>
#import <Segment-GoogleAnalytics/SEGGoogleAnalyticsIntegrationFactory.h>
#import "RCTBridgeModule.h"

@implementation RNSegment

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(setupWithConfiguration:(NSString *)writeKey withDebug:(BOOL)debug)
{
    SEGAnalyticsConfiguration *config = [SEGAnalyticsConfiguration configurationWithWriteKey:writeKey];
    [config use:[SEGGoogleAnalyticsIntegrationFactory instance]];
    [SEGAnalytics setupWithConfiguration:config];
    [SEGAnalytics debug:debug];
}

RCT_EXPORT_METHOD(identify:(NSString *)userId withTraits:(NSDictionary *)traits withOptions:(NSDictionary *)options)
{
    [[SEGAnalytics sharedAnalytics] identify:userId traits:traits options:options];
}

RCT_EXPORT_METHOD(track:(NSString *)event withProperties:(NSDictionary *)properties withOptions:(NSDictionary *)options)
{
    [[SEGAnalytics sharedAnalytics] track:event properties:properties options:options];
}

RCT_EXPORT_METHOD(screen:(NSString *)name withProperties:(NSDictionary *)properties withOptions:(NSDictionary *)options)
{
    [[SEGAnalytics sharedAnalytics] screen:name properties:properties options:options];
}

RCT_EXPORT_METHOD(alias:(NSString *)newId withOptions:(NSDictionary *)options)
{
    [[SEGAnalytics sharedAnalytics] alias:newId options:options];
}

RCT_EXPORT_METHOD(reset)
{
    [[SEGAnalytics sharedAnalytics] reset];
}
@end
