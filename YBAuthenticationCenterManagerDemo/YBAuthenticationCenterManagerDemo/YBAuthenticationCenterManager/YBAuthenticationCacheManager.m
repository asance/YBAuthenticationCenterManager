//
//  YBAuthenticationCacheManager.m
//  DDKuaiqian
//
//  Created by asance on 2017/11/15.
//  Copyright © 2017年 asance. All rights reserved.
//

#import "YBAuthenticationCacheManager.h"
#import "YBAuthenItemManager.h"
#import "YBAuthenticationCacheInteractor.h"
#import "YBAuthenticationCenterIDCardCacheInteractor.h"
#import "YBAuthenticationCenterIncomeCacheInteractor.h"
#import "YBAuthenticationCenterWorkspaceCacheInteractor.h"
#import "YBAuthenticationCenterEmergencyContactCacheInteractor.h"

@implementation YBAuthenticationCacheManager

+ (BOOL)cleanCached{
    [[YBAuthenItemManager shareInstance] cleanCached];
    [[YBAuthenticationCacheInteractor shareInstance] cleanCached];
    [[YBAuthenticationCenterIDCardCacheInteractor shareInstance] cleanCached];
    [[YBAuthenticationCenterIncomeCacheInteractor shareInstance] cleanCached];
    [[YBAuthenticationCenterWorkspaceCacheInteractor shareInstance] cleanCached];
    [[YBAuthenticationCenterEmergencyContactCacheInteractor shareInstance] cleanCached];
    return YES;
}

@end
