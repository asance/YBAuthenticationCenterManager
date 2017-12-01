//
//  YBAuthenticationCenterWorkspaceCacheInteractor.h
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBAuthenticationCenterWorkspaceCacheInteractor : NSObject
/**单例对象*/
+ (instancetype)shareInstance;
/**user work*/
@property(copy, nonatomic) NSString *work;
/**user work code*/
@property(copy, nonatomic) NSString *workCode;
/**user job*/
@property(copy, nonatomic) NSString *job;
/**user job code*/
@property(copy, nonatomic) NSString *jobCode;
/**user name*/
@property(copy, nonatomic) NSString *name;
/**user city*/
@property(copy, nonatomic) NSString *provinceCity;
/**user city*/
@property(copy, nonatomic) NSString *city;
/**user city code*/
@property(copy, nonatomic) NSString *cityCode;
/**user province*/
@property(copy, nonatomic) NSString *province;
/**user province code*/
@property(copy, nonatomic) NSString *provinceCode;
/**user address*/
@property(copy, nonatomic) NSString *address;
/**user house phone*/
@property(copy, nonatomic) NSString *phone;
/**user whether had cache*/
@property(assign, nonatomic) BOOL didCached;

/**had cached*/
- (BOOL)hadCached;
/**clean cached*/
- (BOOL)cleanCached;
@end
