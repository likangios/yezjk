//
//  PicModel.h
//  yezjk
//
//  Created by luck on 2018/6/18.
//  Copyright © 2018年 luck. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PicModel : NSObject

/**
 id
 */
@property(nonatomic,strong) NSString *picId;

/**
 标题
 */
@property(nonatomic,strong) NSString *title;

/**
 单词
 */
@property(nonatomic,strong) NSString *word;

/**
 图片名字
 */
@property(nonatomic,strong) NSString *imageName;

/**
 图片类型 1=果蔬卡，2=动物卡，3=黑白洞洞卡
 */
@property(nonatomic,strong) NSNumber *type;

/**
 是否收藏 1=收藏，0=没收藏
 */
@property(nonatomic,strong) NSNumber *isStore;

@property(nonatomic,assign) BOOL isCustom;

@end
