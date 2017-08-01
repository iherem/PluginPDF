//
//  Bridging.h
//  AgentMate
//
//  Created by Softcake on 6/12/2558 BE.
//
//

#import <Cordova/CDVPlugin.h>

@interface Bridging : CDVPlugin

- (void)callEvent:(CDVInvokedUrlCommand *)command;

@end
