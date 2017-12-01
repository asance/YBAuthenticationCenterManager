//
//  YBAuthenItemManager.h
//  DDKuaiqian
//
//  Created by asance on 2017/11/8.
//  Copyright © 2017年 asance. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBAuthenItemManager : NSObject
/**YBAuthenItemKeyTitle*/
@property(copy, nonatomic) NSString *AuthenItemKeyTitle;
/**YBAuthenItemKeyDetail*/
@property(copy, nonatomic) NSString *AuthenItemKeyDetail;
/**YBAuthenItemKeyID*/
@property(copy, nonatomic) NSString *AuthenItemKeyID;

/**education array*/
@property(strong, nonatomic) NSArray *educationArray;
/**work array*/
@property(strong, nonatomic) NSArray *workArray;
/**job array*/
@property(strong, nonatomic) NSArray *jobArray;
/**service years array*/
@property(strong, nonatomic) NSArray *serviceYearArray;
/**salary array*/
@property(strong, nonatomic) NSArray *salaryArray;
/**salary mode array*/
@property(strong, nonatomic) NSArray *salaryModeArray;
/**salary day array*/
@property(strong, nonatomic) NSArray *salaryDayArray;
/**relation ship array*/
@property(strong, nonatomic) NSArray *relationShipArray;
/**单例对象*/
+ (instancetype)shareInstance;
+ (void)setItemKeyID:(NSString *)ID;
+ (void)setItemKeyTitle:(NSString *)title;
+ (void)setItemKeyDetail:(NSString *)detail;

/**return education array, include format item data*/
- (NSMutableArray *)educationFormatArray;
/**return education item for spec obj code*/
- (NSInteger)educationItemIndexForObject:(NSString *)obj;

/**return work array, include format item data*/
- (NSMutableArray *)workFormatArray;
/**return work item for spec obj code*/
- (NSInteger)workItemIndexForObject:(NSString *)obj;

/**return job array, include format item data*/
- (NSMutableArray *)jobFormatArray;
/**return job item for spec obj code*/
- (NSInteger)jobItemIndexForObject:(NSString *)obj;

/**return service year array, include format item data*/
- (NSMutableArray *)serviceYearFormatArray;
/**return service year item for spec obj code*/
- (NSInteger)serviceYearItemIndexForObject:(NSString *)obj;

/**return salary array, include format item data*/
- (NSMutableArray *)salaryFormatArray;
/**return salary item for spec obj code*/
- (NSInteger)salaryItemIndexForObject:(NSString *)obj;

/**return salary mode array, include format item data*/
- (NSMutableArray *)salaryModeFormatArray;
/**return salary mode item for spec obj code*/
- (NSInteger)salaryModeItemIndexForObject:(NSString *)obj;

/**return salary day array, include format item data*/
- (NSMutableArray *)salaryDayFormatArray;
/**return salary mode item for spec obj code*/
- (NSInteger)salaryDayItemIndexForObject:(NSString *)obj;

/**return relation ship array, include format item data*/
- (NSMutableArray *)relationShipFormatArray;
/**return relation ship item for spec obj code*/
- (NSInteger)relationShipItemIndexForObject:(NSString *)obj;

/**clean cached*/
- (BOOL)cleanCached;
@end
