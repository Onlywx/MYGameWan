//
//  XMLYNetManager.h
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "RankingListModel.h"
#import "AlbumListModel.h"
@interface XMLYNetManager : BaseNetManager
/*
 *获取音乐列表top50
 *
 *@param pageId 当前页数从1开始
 *
 *@return 返回当前请求所在的任务
 */
+ (id)getRankListWithPageId:(NSInteger)pageId kCompletionHandle;

/**
 *  根据音乐组类型ID获取对应音乐列表。两个参数的确定完全靠经验，工作以后会有服务器人员告诉你哪些是参数，应该传什么
 *
 *  @param ID     音乐组ID
 *  @param pageId 当前页数，从1开始
 *
 *  @return 返回当前请求所在任务
 */
+ (id)getAlbumWithId:(NSInteger)ID page:(NSInteger)pageId kCompletionHandle;

@end
