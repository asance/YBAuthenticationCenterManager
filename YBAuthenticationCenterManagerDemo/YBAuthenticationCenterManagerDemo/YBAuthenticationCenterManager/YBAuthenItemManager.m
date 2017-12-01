//
//  YBAuthenItemManager.m
//  DDKuaiqian
//
//  Created by asance on 2017/11/8.
//  Copyright © 2017年 asance. All rights reserved.
//

#import "YBAuthenItemManager.h"

@implementation YBAuthenItemManager

+ (instancetype)shareInstance{
    static YBAuthenItemManager *shareInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shareInstance = [[YBAuthenItemManager alloc] init];
        shareInstance.AuthenItemKeyID = @"AuthenItemKeyID";
        shareInstance.AuthenItemKeyTitle = @"AuthenItemKeyTitle";
        shareInstance.AuthenItemKeyDetail = @"AuthenItemKeyDetail";
    });
    return shareInstance;
}
+ (void)setItemKeyID:(NSString *)ID{
    if(ID.length){
        [YBAuthenItemManager shareInstance].AuthenItemKeyID = ID;
    }
}
+ (void)setItemKeyTitle:(NSString *)title{
    if(title.length){
        [YBAuthenItemManager shareInstance].AuthenItemKeyTitle = title;
    }
}
+ (void)setItemKeyDetail:(NSString *)detail{
    if(detail.length){
        [YBAuthenItemManager shareInstance].AuthenItemKeyDetail = detail;
    }
}
#pragma mark - Education
- (NSMutableArray *)educationFormatArray{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for(NSInteger i=0;i<self.educationArray.count;i++){
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        NSDictionary *oriDict = [self.educationArray objectAtIndex:i];
        [dict setObject:oriDict[@"itemName"] forKey:self.AuthenItemKeyTitle];
        [dict setObject:oriDict[@"itemCode"] forKey:self.AuthenItemKeyDetail];
        [array addObject:dict];
    }
    return array;
}
- (NSInteger)educationItemIndexForObject:(NSString *)obj{
    NSInteger index = -1;
    for(NSInteger i=0;i<self.educationArray.count;i++){
        NSDictionary *oriDict = [self.educationArray objectAtIndex:i];
        if([oriDict[@"itemCode"] isEqualToString:obj]){
            index = i;
            break;
        }
    }
    return index;
}
#pragma mark - Work
- (NSMutableArray *)workFormatArray{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for(NSInteger i=0;i<self.workArray.count;i++){
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        NSDictionary *oriDict = [self.workArray objectAtIndex:i];
        [dict setObject:oriDict[@"itemName"] forKey:self.AuthenItemKeyTitle];
        [dict setObject:oriDict[@"itemCode"] forKey:self.AuthenItemKeyDetail];
        [array addObject:dict];
    }
    return array;
}
- (NSInteger)workItemIndexForObject:(NSString *)obj{
    NSInteger index = -1;
    for(NSInteger i=0;i<self.workArray.count;i++){
        NSDictionary *oriDict = [self.workArray objectAtIndex:i];
        if([oriDict[@"itemCode"] isEqualToString:obj]){
            index = i;
            break;
        }
    }
    return index;
}

#pragma mark - Job
- (NSMutableArray *)jobFormatArray{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for(NSInteger i=0;i<self.jobArray.count;i++){
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        NSDictionary *oriDict = [self.jobArray objectAtIndex:i];
        [dict setObject:oriDict[@"itemName"] forKey:self.AuthenItemKeyTitle];
        [dict setObject:oriDict[@"itemCode"] forKey:self.AuthenItemKeyDetail];
        [array addObject:dict];
    }
    return array;
}
- (NSInteger)jobItemIndexForObject:(NSString *)obj{
    NSInteger index = -1;
    for(NSInteger i=0;i<self.jobArray.count;i++){
        NSDictionary *oriDict = [self.jobArray objectAtIndex:i];
        if([oriDict[@"itemCode"] isEqualToString:obj]){
            index = i;
            break;
        }
    }
    return index;
}

#pragma mark - Service Years
- (NSMutableArray *)serviceYearFormatArray{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for(NSInteger i=0;i<self.serviceYearArray.count;i++){
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        NSDictionary *oriDict = [self.serviceYearArray objectAtIndex:i];
        [dict setObject:oriDict[@"itemName"] forKey:self.AuthenItemKeyTitle];
        [dict setObject:oriDict[@"itemCode"] forKey:self.AuthenItemKeyDetail];
        [array addObject:dict];
    }
    return array;
}
- (NSInteger)serviceYearItemIndexForObject:(NSString *)obj{
    NSInteger index = -1;
    for(NSInteger i=0;i<self.serviceYearArray.count;i++){
        NSDictionary *oriDict = [self.serviceYearArray objectAtIndex:i];
        if([oriDict[@"itemCode"] isEqualToString:obj]){
            index = i;
            break;
        }
    }
    return index;
}

#pragma mark - Salary
- (NSMutableArray *)salaryFormatArray{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for(NSInteger i=0;i<self.salaryArray.count;i++){
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        NSDictionary *oriDict = [self.salaryArray objectAtIndex:i];
        [dict setObject:oriDict[@"itemName"] forKey:self.AuthenItemKeyTitle];
        [dict setObject:oriDict[@"itemCode"] forKey:self.AuthenItemKeyDetail];
        [array addObject:dict];
    }
    return array;
}
- (NSInteger)salaryItemIndexForObject:(NSString *)obj{
    NSInteger index = -1;
    for(NSInteger i=0;i<self.salaryArray.count;i++){
        NSDictionary *oriDict = [self.salaryArray objectAtIndex:i];
        if([oriDict[@"itemCode"] isEqualToString:obj]){
            index = i;
            break;
        }
    }
    return index;
}

#pragma mark - Salary Mode
- (NSMutableArray *)salaryModeFormatArray{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for(NSInteger i=0;i<self.salaryModeArray.count;i++){
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        NSDictionary *oriDict = [self.salaryModeArray objectAtIndex:i];
        [dict setObject:oriDict[@"itemName"] forKey:self.AuthenItemKeyTitle];
        [dict setObject:oriDict[@"itemCode"] forKey:self.AuthenItemKeyDetail];
        [array addObject:dict];
    }
    return array;
}
- (NSInteger)salaryModeItemIndexForObject:(NSString *)obj{
    NSInteger index = -1;
    for(NSInteger i=0;i<self.salaryModeArray.count;i++){
        NSDictionary *oriDict = [self.salaryModeArray objectAtIndex:i];
        if([oriDict[@"itemCode"] isEqualToString:obj]){
            index = i;
            break;
        }
    }
    return index;
}

#pragma mark - Salary Day
- (NSMutableArray *)salaryDayFormatArray{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for(NSInteger i=0;i<self.salaryDayArray.count;i++){
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        NSDictionary *oriDict = [self.salaryDayArray objectAtIndex:i];
        [dict setObject:oriDict[@"itemName"] forKey:self.AuthenItemKeyTitle];
        [dict setObject:oriDict[@"itemCode"] forKey:self.AuthenItemKeyDetail];
        [array addObject:dict];
    }
    return array;
}
- (NSInteger)salaryDayItemIndexForObject:(NSString *)obj{
    NSInteger index = -1;
    for(NSInteger i=0;i<self.salaryDayArray.count;i++){
        NSDictionary *oriDict = [self.salaryDayArray objectAtIndex:i];
        if([oriDict[@"itemCode"] isEqualToString:obj]){
            index = i;
            break;
        }
    }
    return index;
}

#pragma mark - Relation Ship
- (NSMutableArray *)relationShipFormatArray{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for(NSInteger i=0;i<self.relationShipArray.count;i++){
        NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
        NSDictionary *oriDict = [self.relationShipArray objectAtIndex:i];
        [dict setObject:oriDict[@"itemName"] forKey:self.AuthenItemKeyTitle];
        [dict setObject:oriDict[@"itemCode"] forKey:self.AuthenItemKeyDetail];
        NSString *rID = [NSString stringWithFormat:@"%@",oriDict[@"id"]];
        [dict setObject:rID forKey:self.AuthenItemKeyID];
        [array addObject:dict];
    }
    return array;
}
- (NSInteger)relationShipItemIndexForObject:(NSString *)obj{
    NSInteger index = -1;
    for(NSInteger i=0;i<self.relationShipArray.count;i++){
        NSDictionary *oriDict = [self.relationShipArray objectAtIndex:i];
        if([oriDict[@"itemCode"] isEqualToString:obj]){
            index = i;
            break;
        }
    }
    return index;
}

- (BOOL)cleanCached{
    self.educationArray = nil;
    self.workArray = nil;
    self.jobArray = nil;
    self.serviceYearArray = nil;
    self.salaryArray = nil;
    self.salaryModeArray = nil;
    self.salaryDayArray = nil;
    self.relationShipArray = nil;
    return YES;
}
@end
