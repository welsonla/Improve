//
//  PractBase64.m
//  Improve
//
//  Created by 万业超 on 12-10-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "PractBase64.h"

@implementation PractBase64

- (id)init{
    self = [super init];
    if(self){
        NSString *_helloWorld = @"HelloWorld";
        NSString *afterEncode = [_helloWorld base64EncodedString];
        NSString *afterDecode = [afterEncode base64DecodedString];
        
        NSLog(@"afterEncoding:%@-----------afterDecoding:%@",afterEncode,afterDecode);
    }
    return self;
}

@end
