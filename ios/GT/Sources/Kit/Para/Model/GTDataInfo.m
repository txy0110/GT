//
//  GTDataInfo.m
//  GTKit
//
//  Created   on 13-12-9.
// Tencent is pleased to support the open source community by making
// Tencent GT (Version 2.4 and subsequent versions) available.
//
// Notwithstanding anything to the contrary herein, any previous version
// of Tencent GT shall not be subject to the license hereunder.
// All right, title, and interest, including all intellectual property rights,
// in and to the previous version of Tencent GT (including any and all copies thereof)
// shall be owned and retained by Tencent and subject to the license under the
// Tencent GT End User License Agreement (http://gt.qq.com/wp-content/EULA_EN.html).
//
// Copyright (C) 2015 THL A29 Limited, a Tencent company. All rights reserved.
//
// Licensed under the MIT License (the "License"); you may not use this file
// except in compliance with the License. You may obtain a copy of the License at
//
// http://opensource.org/licenses/MIT
//
// Unless required by applicable law or agreed to in writing, software distributed
// under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
//
//

#import "GTDataInfo.h"

@implementation GTDataInfo

- (id)initWithAlias:(NSString*)alias
{
    self = [super init];
    if (self) {
        _alias = [[self alias:alias] retain];
    }
    
    return self;
}

- (void) dealloc
{
    self.alias = nil;
    
    [super dealloc];
}


- (NSString *)alias:(NSString *)inputStr
{
    NSUInteger subIndex = [inputStr length];
    if ([inputStr length] == 4) {
        subIndex = 4;
    } else if (subIndex > 4) {
        subIndex = 3;
    }
    NSString *alias = [inputStr substringToIndex:subIndex];
    
    if ([inputStr length] > 4) {
        NSMutableString *str = [NSMutableString stringWithFormat:@"%@.", [alias uppercaseString]];
        return str;
    }
    
    return [alias uppercaseString];
}

@end
