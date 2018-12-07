//
//  HDKKxyhdtyuiuStoryModel.h
//  yezjk
//
//  Created by luck on 2018/6/24.
//  Copyright © 2018年 luck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HDKKxyhdtyuiuStoryModel : NSObject
/**
 id
 */
@property(nonatomic,strong) NSString *picId;
/**
 标题
 */
@property(nonatomic,strong) NSString *title;
/**
 内容
 */
@property(nonatomic,strong) NSString *content;
/**

 */
@property(nonatomic,strong) NSString *comment;

/**
 分类
 */
@property(nonatomic,strong) NSString *category;

/**
 图片类型 1=爸爸故事，2=妈妈故事，
 */
@property(nonatomic,strong) NSNumber *type;


@end
