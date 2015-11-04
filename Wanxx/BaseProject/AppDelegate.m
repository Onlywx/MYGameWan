//
//  AppDelegate.m
//  BaseProject
//
//  Created by jiyingxin on 15/10/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+Category.h"
#import "BaseNetManager.h"
#import "TuWanModel.h"
#import "XMLYNetManager.h"
#import "TuWanNetManager.h"
#import "DuoWanNetManager.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initializeWithApplication:application];
    
//    NSString *path = @"http://cache.tuwan.com/app/?appid=1&class=heronews&mod=八卦&appid=1&appver=2.1";
//    NSDictionary *params = @{@"appid":@1,@"class":@"heronews",@"mod":@"八卦",@"appver":@2.1};
//    [BaseNetManager GET:path parameters:params completionHandler:^(id responseObj, NSError *error) {
//        TuWanModel *model = [TuWanModel objectWithKeyValues:responseObj];
//        DDLogVerbose(@"...............");
//    }];
    
    
    
   
//    NSString *path = @"http://mobile.ximalaya.com/mobile/discovery/v1/rankingList/album?device=iPhone&key=ranking:album:played:1:2&pageId=2&pageSize=20&position=0&title=排行榜";
//    NSDictionary *params = @{@"device":@"iPhone", @"key":@"ranking:album:played:1:2", @"pageId":@"2", @"pageId":@"2", @"pageSize": @20, @"position": @0, @"title": @"排行榜"};
//    
//    
//    [BaseNetManager GET:@"http://mobile.ximalaya.com/mobile/discovery/v1/rankingList/album" parameters:params completionHandler:^(id responseObj, NSError *error) {
//        DDLogVerbose(@"...........");
    
    
    
    /*喜马拉雅接口测试通过*/
    [XMLYNetManager getRankListWithPageId:1 completionHandle:^(RankingListModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];                       
    
    [XMLYNetManager getAlbumWithId:3092772 page:1 completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@""); //需要添加 text/plain 解析允许，在baseNetwork中
    }];
    /*兔玩接口测试通过*/
    [TuWanNetManager getTuWanInfoWithType:InfoTypeTouTiao start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    
    [TuWanNetManager getTuWanInfoWithType:InfoTypeCOS start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeLuShi start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeDuJia start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeBeauty start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeQuWen start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeMoShou start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeVideo start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeShouWang start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeFengBao start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeStrategy start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeXingJi2 start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [TuWanNetManager getTuWanInfoWithType:InfoTypeAnHei3 start:0 completionHandle:^(TuWanModel *model, NSError *error) {
        DDLogVerbose(@"");
    }];
        /*多玩接口测试通过*/
    [DuoWanNetManager getHeroWithType:HeroTypeAll completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"...");
    }];
    [DuoWanNetManager getHeroWithType:HeroTypeFree completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"...");
    }];
    [DuoWanNetManager getHeroSkinsWithHeroName:@"Braum" completionHandle:^(NSArray *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    
    [DuoWanNetManager getHeroSoundWithHeroName:@"Braum" completionHandle:^(NSArray *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    
    [DuoWanNetManager getHeroVideosWithPage:1 tag:@"Braum" completionHandle:^(NSArray *model, NSError *error) {
        DDLogVerbose(@"");
    }];
    
    [DuoWanNetManager getHeroCZWithHeroName:@"Braum" completionHandle:^(NSArray *model, NSError *error) {
        DDLogVerbose(@"");
    }];

    [DuoWanNetManager getHeroDetailWithHeroName:@"Braum" completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];
    
    [DuoWanNetManager getHeroGiftAndRunWithHeroName:@"Braum" completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];

    [DuoWanNetManager getHeroChangeWithHeroName:@"Braum" completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];

    [DuoWanNetManager getHeroWeekDataWithHeroId:72 completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];
    
    [DuoWanNetManager getHeroToolMenuCompletionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];
    
    [DuoWanNetManager getHeroZBCategoryCompletionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];
    
    [DuoWanNetManager getZBItemListWithTag:@"consumable" completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];

    [DuoWanNetManager getZBDetailWithItemId:3004 completionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];
    [DuoWanNetManager getGiftCompletionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];

    [DuoWanNetManager getRunesCompletionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];
    
    [DuoWanNetManager getBestGroupCompletionHandle:^(id model, NSError *error) {
        DDLogVerbose(@"");
    }];

    



    return YES;
}

@end
