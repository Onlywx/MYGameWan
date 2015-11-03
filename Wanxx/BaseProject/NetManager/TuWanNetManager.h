//
//  TuWanNetManager.h
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
//只要共用一个解析类，就可以合起来写，只需要使用枚举变量，来决定不同的请求地址即可
//如果不会 可以参考汽车之家接口
typedef NS_ENUM(NSUInteger, InfoType) {
    InfoTypeTouTiao,//头条
    InfoTypeDuJia,  //独家
    InfoTypeAnHei3,//暗黑3
    InfoTypeMoShou,//魔兽
    InfoTypeFengBao,//风暴
    InfoTypeLuShi,//炉石
    InfoTypeXingJi2,//星际2
    InfoTypeShouWang,//守望
    InfoTypePicture,//图片
    InfoTypeVideo,//视频
    InfoTypeStrategy,//攻略
    InfoTypeHuanHua,//幻化
    InfoTypeQuWen,//趣闻
    InfoTypeCOS,//COS
    InfoTypeBeauty//美女
    
};
@interface TuWanNetManager : BaseNetManager
/**
 *  获取某种类型的资讯
 *
 *  @param type  资讯类型
 *  @param start 当前资讯起始索引值，最小为0
 *
 *  @return 请求所在任务
 */
+ (id)getTuWanInfoWithType:(InfoType)type start:(NSInteger)start kCompletionHandle;
@end
