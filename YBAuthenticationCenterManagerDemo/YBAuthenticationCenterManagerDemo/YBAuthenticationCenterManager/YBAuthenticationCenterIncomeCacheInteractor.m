//
//  YBAuthenticationCenterIncomeCacheInteractor.m
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import "YBAuthenticationCenterIncomeCacheInteractor.h"

@implementation YBAuthenticationCenterIncomeCacheInteractor

+ (instancetype)shareInstance{
    static YBAuthenticationCenterIncomeCacheInteractor *shareInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shareInstance = [[YBAuthenticationCenterIncomeCacheInteractor alloc] init];
    });
    return shareInstance;
}

- (BOOL)hadCached{
    BOOL fetchServicesYear = (self.servicesYear.length?YES:NO);
    BOOL fetchSalary = (self.salary.length?YES:NO);
    BOOL fetchSalaryMode = (self.salaryMode.length?YES:NO);
    BOOL fetchSalaryDay = (self.salaryDay.length?YES:NO);
    BOOL fetchServicesYearCode = (self.servicesYearCode.length?YES:NO);
    BOOL fetchSalaryCode = (self.salaryCode.length?YES:NO);
    BOOL fetchSalaryModeCode = (self.salaryModeCode.length?YES:NO);
    BOOL fetchSalaryDayCode = (self.salaryDayCode.length?YES:NO);
    
    if(fetchServicesYear&&
       fetchSalary&&
       fetchSalaryMode&&
       fetchSalaryDay&&
       fetchServicesYearCode&&
       fetchSalaryCode&&
       fetchSalaryModeCode&&
       fetchSalaryDayCode){
        return YES;
    }
    return NO;
}

- (BOOL)cleanCached{
    self.didCached = NO;
    self.servicesYear = nil;
    self.salary = nil;
    self.salaryMode = nil;
    self.salaryDay = nil;
    self.servicesYearCode = nil;
    self.salaryCode = nil;
    self.salaryModeCode = nil;
    self.salaryDayCode = nil;
    return YES;
}
@end
