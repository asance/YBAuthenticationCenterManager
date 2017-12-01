//
//  YBAuthenticationCenterEmergencyContactCacheInteractor.m
//  DDKuaiqian
//
//  Created by asance on 2017/11/14.
//  Copyright © 2017年 asance. All rights reserved.
//

#import "YBAuthenticationCenterEmergencyContactCacheInteractor.h"

@implementation YBAuthenticationCenterEmergencyContactCacheInteractor

+ (instancetype)shareInstance{
    static YBAuthenticationCenterEmergencyContactCacheInteractor *shareInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shareInstance = [[YBAuthenticationCenterEmergencyContactCacheInteractor alloc] init];
    });
    return shareInstance;
}

- (BOOL)hadCached{
    BOOL fetchRelationshipA = (self.relationshipA.length?YES:NO);
    BOOL fetchRelationshipB = (self.relationshipB.length?YES:NO);
    BOOL fetchRelationshipACode = (self.relationshipACode.length?YES:NO);
    BOOL fetchRelationshipBCode = (self.relationshipBCode.length?YES:NO);
    BOOL fetchContactAName = (self.contactAName.length?YES:NO);
    BOOL fetchContactBName = (self.contactBName.length?YES:NO);
    BOOL fetchContactAMobile = (self.contactAMobile.length?YES:NO);
    BOOL fetchContactBMobile = (self.contactBMobile.length?YES:NO);
    
    if(fetchRelationshipA&&
       fetchRelationshipB&&
       fetchRelationshipACode&&
       fetchRelationshipBCode&&
       fetchContactAName&&
       fetchContactBName&&
       fetchContactAMobile&&
       fetchContactBMobile){
        return YES;
    }
    return NO;
}

- (BOOL)cleanCached{
    self.didCached = NO;
    self.contactAID = nil;
    self.contactBID = nil;
    self.relationshipA = nil;
    self.relationshipB = nil;
    self.relationshipACode = nil;
    self.relationshipBCode = nil;
    self.contactAName = nil;
    self.contactBName = nil;
    self.contactAMobile = nil;
    self.contactBMobile = nil;
    return YES;
}
@end
