//
//  YBAuthenticationCacheInteractor.h
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBAuthenticationCacheInteractor : NSObject
/**单例对象*/
+ (instancetype)shareInstance;
/**user idcard authen*/
@property(copy, nonatomic) NSString *idcard;
/**user workspace authen*/
@property(copy, nonatomic) NSString *workspace;
/**user income authen*/
@property(copy, nonatomic) NSString *income;
/**user emergency contact authen*/
@property(copy, nonatomic) NSString *emergencyContact;
/**user zimafen authen*/
@property(copy, nonatomic) NSString *Zimafen;
/**user sim authen*/
@property(copy, nonatomic) NSString *SIM;
/**user agreementURL authen*/
@property(copy, nonatomic) NSString *agreementURL;
/**user fill progress authen*/
@property(copy, nonatomic) NSString *fillProgress;
/**user whether had cache*/
@property(assign, nonatomic) BOOL didCached;

/**had cached*/
- (BOOL)hadCached;
/**clean cached*/
- (BOOL)cleanCached;

@end
