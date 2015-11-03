//
//  RuneModel.m
//  BaseProject
//
//  Created by tarena on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "RuneModel.h"

@implementation RuneModel

//首字母大写
+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName
{
    return [propertyName firstCharUpper];
}
+ (NSDictionary *)objectClassInArray{
    return @{@"Purple" : [RunePurpleModel class], @"Yellow" : [RuneYellowModel class], @"Blue" : [RuneBlueModel class], @"Red" : [RuneRedModel class]};
}
@end
@implementation RunePurpleModel
+ (NSDictionary *)replacedKeyFromPropertyName{
    return @{@"img": @"Img", @"name": @"Name", @"recom": @"Recom", @"units": @"Units", @"type": @"Type", @"standby": @"Standby", @"alias": @"Alias", @"prop": @"Prop"};
}

@end


@implementation RuneYellowModel

@end


@implementation RuneBlueModel

@end


@implementation RuneRedModel

@end


