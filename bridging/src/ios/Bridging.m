//
//  Bridging.m
//  AgentMate
//
//  Created by Softcake on 6/12/2558 BE.
//
//

#import "Bridging.h"

@implementation Bridging

#pragma mark - Event: callEvent
- (void)callEvent:(CDVInvokedUrlCommand *)command {
    NSString *event = command.arguments[0];
    NSDictionary *payload = [self convertPayload:command.arguments[1] callbackId:command.callbackId];
    
    [self performSelector:NSSelectorFromString([NSString stringWithFormat:@"%@:", event]) withObject:payload afterDelay:0];
}

- (NSDictionary *)convertPayload:(id)payload callbackId:(NSString *)callbackId {
    if ([payload isKindOfClass:[NSNull class]]) {
        return @{@"callbackId": callbackId};
    }
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithDictionary:payload];
    [dictionary setObject:callbackId forKey:@"callbackId"];
    return [dictionary copy];
}

@end
