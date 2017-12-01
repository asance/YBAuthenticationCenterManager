//
//  YBAuthenticationCenterIDCardCacheInteractor.h
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBAuthenticationCenterIDCardCacheInteractor : NSObject
/**单例对象*/
+ (instancetype)shareInstance;
/**user name*/
@property(copy, nonatomic) NSString *name;
/**user idcard number*/
@property(copy, nonatomic) NSString *idcardNumber;
/**user education*/
@property(copy, nonatomic) NSString *education;
/**user education code*/
@property(copy, nonatomic) NSString *educationCode;
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
