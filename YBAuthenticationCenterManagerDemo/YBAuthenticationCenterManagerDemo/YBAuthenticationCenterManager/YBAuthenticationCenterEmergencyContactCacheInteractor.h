//
//  YBAuthenticationCenterEmergencyContactCacheInteractor.h
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBAuthenticationCenterEmergencyContactCacheInteractor : NSObject
/**单例对象*/
+ (instancetype)shareInstance;
/**user contact ID*/
@property(strong, nonatomic) NSNumber *contactAID;
/**user contact ID*/
@property(strong, nonatomic) NSNumber *contactBID;
/**user relationship*/
@property(copy, nonatomic) NSString *relationshipA;
/**user relationship*/
@property(copy, nonatomic) NSString *relationshipB;
/**user relationship code*/
@property(copy, nonatomic) NSString *relationshipACode;
/**user relationship code*/
@property(copy, nonatomic) NSString *relationshipBCode;
/**user contact name*/
@property(copy, nonatomic) NSString *contactAName;
/**user contact name*/
@property(copy, nonatomic) NSString *contactBName;
/**user contact mobile*/
@property(copy, nonatomic) NSString *contactAMobile;
/**user contact mobile*/
@property(copy, nonatomic) NSString *contactBMobile;
/**user whether had cache*/
@property(assign, nonatomic) BOOL didCached;

/**had cached*/
- (BOOL)hadCached;
/**clean cached*/
- (BOOL)cleanCached;
@end
