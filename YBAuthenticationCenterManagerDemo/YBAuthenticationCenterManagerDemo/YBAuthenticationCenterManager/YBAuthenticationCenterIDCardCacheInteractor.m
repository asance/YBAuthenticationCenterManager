//
//  YBAuthenticationCenterIDCardCacheInteractor.m
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import "YBAuthenticationCenterIDCardCacheInteractor.h"

@implementation YBAuthenticationCenterIDCardCacheInteractor

+ (instancetype)shareInstance{
    static YBAuthenticationCenterIDCardCacheInteractor *shareInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shareInstance = [[YBAuthenticationCenterIDCardCacheInteractor alloc] init];
    });
    return shareInstance;
}

- (BOOL)hadCached{
    BOOL fetchName = (self.name.length?YES:NO);
    BOOL fetchIDCardNumber = (self.idcardNumber.length?YES:NO);
    BOOL fetchEducation = (self.education.length?YES:NO);
    BOOL fetchEducationCode = (self.educationCode.length?YES:NO);
    BOOL fetchProvinceCity = (self.provinceCity.length?YES:NO);
    BOOL fetchCity = (self.city.length?YES:NO);
    BOOL fetchCityCode = (self.cityCode.length?YES:NO);
    BOOL fetchProvince = (self.province.length?YES:NO);
    BOOL fetchProvinceCode = (self.provinceCode.length?YES:NO);
    BOOL fetchAddress = (self.address.length?YES:NO);
    
    if(fetchName&&
       fetchIDCardNumber&&
       fetchEducation&&
       fetchEducationCode&&
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
    self.name = nil;
    self.idcardNumber = nil;
    self.education = nil;
    self.educationCode = nil;
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
