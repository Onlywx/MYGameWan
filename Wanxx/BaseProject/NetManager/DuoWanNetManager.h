//
//  DuoWanNetManager.h
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
/** 在多玩Model层中专门创建的头文件，目的只有一个，方便其他类引入多玩的全部头文件 */
#import "DuoWanModel.h"

typedef NS_ENUM(NSUInteger, HeroType) {
    
    HeroTypeFree,//免费英雄
    HeroTypeAll,//全部英雄
};
@interface DuoWanNetManager : BaseNetManager
//使用 /** 内容 */ 方式添加注释，可以让你的代码被调用时出现代码提示

/**
 *  获取免费英雄或收费英雄列表，因为免费和收费英雄请求穿十分相似，所以合写
 *
 *  @param type 请求英雄类型
 *
 *  @return 当前请求所在任务
 */
+ (id)getHeroWithType:(HeroType)type kCompletionHandle;


/**
 *  获取英雄皮肤
 *
 *  @param heroName 要获取皮肤的英雄英文名称
 *
 *  @return 请求所在任务
 */
+ (id)getHeroSkinsWithHeroName:(NSString *)heroName kCompletionHandle;


/**
 *  获取英雄配音
 *
 *  @param heroName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroSoundWithHeroName:(NSString *)heroName kCompletionHandle;


/**
 *  获取某英雄相关视频
 *
 *  @param page   视频页数,最小为1. eg 1,2,3,4...
 *  @param enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroVideosWithPage:(NSInteger)page tag:(NSString *)enName kCompletionHandle;

/**
 *  获取某英雄出装
 *
 *  @param enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroCZWithHeroName:(NSString *)enName kCompletionHandle;

/**
 *  获取英雄资料
 *
 *  @param enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroDetailWithHeroName:(NSString *)enName kCompletionHandle;


/**
 *  获取英雄的天赋和符文
 *
 *  @param enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroGiftAndRunWithHeroName:(NSString *)enName kCompletionHandle;

/**
 *  获取英雄改动后
 *
 *  @param enName 英雄英文名
 *
 *  @return 网络请求任务
 */
+ (id)getHeroChangeWithHeroName:(NSString *)enName kCompletionHandle;

/**
 *  获取一周
 *
 *  @param Id 英雄Id
 *
 *  @return 网络请求任务
 */
+ (id)getHeroWeekDataWithHeroId:(NSInteger)heroId kCompletionHandle;

/**
 获取游戏百科列表
*/
+(id)getHeroToolMenuCompletionHandle:(void (^)(id, NSError *))completionHandle;
/*获取装备分类*/
+(id)getHeroZBCategoryCompletionHandle:(void (^)(id, NSError *))completionHandle;

/**
 *  获取某分类装备列表
 *
 *  @param tag 分类tag
 *
 *  @return 
 */
+ (id)getZBItemListWithTag:(NSString *)tag kCompletionHandle;

/**
 *  装备详情
 *
 *  @param itemId 装备id
 *
 *  @return 
 */
+ (id)getZBDetailWithItemId:(NSInteger)itemId kCompletionHandle;

/*获取天赋*/
+ (id)getGiftCompletionHandle:(void (^)(id, NSError *))completionHandle;

/*获取符文*/
+ (id)getRunesCompletionHandle:(void (^)(id, NSError *))completionHandle;

/*获取召唤师技能*/
+ (id)getSumAbilityCompletionHandle:(void (^)(id, NSError *))completionHandle;

/*最佳阵容*/
+ (id)getBestGroupCompletionHandle:(void (^)(id, NSError *))completionHandle;

@end
