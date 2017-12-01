//
//  YBAuthenticationCacheInteractor.m
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import "YBAuthenticationCacheInteractor.h"

@implementation YBAuthenticationCacheInteractor

+ (instancetype)shareInstance{
    static YBAuthenticationCacheInteractor *shareInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shareInstance = [[YBAuthenticationCacheInteractor alloc] init];
    });
    return shareInstance;
}

- (BOOL)hadCached{
    BOOL fetch0 = (self.idcard.length?YES:NO);
    BOOL fetch1 = (self.workspace.length?YES:NO);
    BOOL fetch2 = (self.income.length?YES:NO);
    BOOL fetch3 = (self.emergencyContact.length?YES:NO);
    BOOL fetch4 = (self.Zimafen.length?YES:NO);
    BOOL fetch5 = (self.SIM.length?YES:NO);
    BOOL fetch6 = (self.fillProgress.length?YES:NO);

    if(fetch0&&
       fetch1&&
       fetch2&&
       fetch3&&
       fetch4&&
       fetch5&&
       fetch6){
        return YES;
    }
    return NO;
}

- (BOOL)cleanCached{
    self.didCached = NO;
    self.idcard = nil;
    self.workspace = nil;
    self.income = nil;
    self.emergencyContact = nil;
    self.Zimafen = nil;
    self.SIM = nil;
    self.agreementURL = nil;
    self.fillProgress = nil;
    return YES;
}

@end
