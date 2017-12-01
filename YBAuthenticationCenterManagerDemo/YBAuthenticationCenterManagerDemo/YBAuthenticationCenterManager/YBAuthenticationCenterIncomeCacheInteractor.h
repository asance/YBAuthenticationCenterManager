//
//  YBAuthenticationCenterIncomeCacheInteractor.h
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBAuthenticationCenterIncomeCacheInteractor : NSObject
/**单例对象*/
+ (instancetype)shareInstance;
/**user services year*/
@property(copy, nonatomic) NSString *servicesYear;
/**user salary code*/
@property(copy, nonatomic) NSString *salary;
/**user salary mode*/
@property(copy, nonatomic) NSString *salaryMode;
/**user salary day*/
@property(copy, nonatomic) NSString *salaryDay;
/**user services year code*/
@property(copy, nonatomic) NSString *servicesYearCode;
/**user salary code*/
@property(copy, nonatomic) NSString *salaryCode;
/**user salary mode code*/
@property(copy, nonatomic) NSString *salaryModeCode;
/**user salary day code*/
@property(copy, nonatomic) NSString *salaryDayCode;
/**user whether had cache*/
@property(assign, nonatomic) BOOL didCached;

/**had cached*/
- (BOOL)hadCached;
/**clean cached*/
- (BOOL)cleanCached;

@end
