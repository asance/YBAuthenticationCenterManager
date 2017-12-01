//
//  YBAuthenticationCenterWorkspaceCacheInteractor.m
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import "YBAuthenticationCenterWorkspaceCacheInteractor.h"

@implementation YBAuthenticationCenterWorkspaceCacheInteractor

+ (instancetype)shareInstance{
    static YBAuthenticationCenterWorkspaceCacheInteractor *shareInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shareInstance = [[YBAuthenticationCenterWorkspaceCacheInteractor alloc] init];
    });
    return shareInstance;
}

- (BOOL)hadCached{
    BOOL fetchWork = (self.work.length?YES:NO);
    BOOL fetchWorkCode = (self.workCode.length?YES:NO);
    BOOL fetchJob = (self.job.length?YES:NO);
    BOOL fetchJobCode = (self.jobCode.length?YES:NO);
    BOOL fetchName = (self.name.length?YES:NO);
    BOOL fetchProvinceCity = (self.provinceCity.length?YES:NO);
    BOOL fetchCity = (self.city.length?YES:NO);
    BOOL fetchCityCode = (self.cityCode.length?YES:NO);
    BOOL fetchProvince = (self.province.length?YES:NO);
    BOOL fetchProvinceCode = (self.provinceCode.length?YES:NO);
    BOOL fetchAddress = (self.address.length?YES:NO);
    
    if(fetchWork&&
       fetchWorkCode&&
       fetchJob&&
       fetchJobCode&&
       fetchName&&
       fetchProvinceCity&&
       fetchCity&&
       fetchCityCode&&
       fetchProvince&&
       fetchProvinceCode&&
       fetchAddress){
        return YES;
    }
    return NO;
}

- (BOOL)cleanCached{
    self.didCached = NO;
    self.work = nil;
    self.workCode = nil;
    self.job = nil;
    self.jobCode = nil;
    self.name = nil;
    self.provinceCity = nil;
    self.city = nil;
    self.cityCode = nil;
    self.province = nil;
    self.provinceCode = nil;
    self.address = nil;
    self.phone = nil;
    return YES;
}
@end
