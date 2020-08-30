//
//  avplayerVC.m
//  TBPlayer
//
//  Created by qianjianeng on 16/2/27.
//  Copyright © 2016年 SF. All rights reserved.
//

#import "avplayerVC.h"
#import "TBPlayer.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


@interface avplayerVC ()

@property (nonatomic, strong) TBPlayer *player;
@property (nonatomic, strong) UIView *showView;

@end

@implementation avplayerVC

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.showView = [[UIView alloc] init];
    self.showView.backgroundColor = [UIColor redColor];
    self.showView.frame = CGRectMake(0, 0, kScreenWidth, kScreenHeight);
    [self.view addSubview:self.showView];
    
    
    
    NSString *document = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    NSString *movePath =  [document stringByAppendingPathComponent:@"保存数据.mp4"];
    
    NSURL *localURL = [NSURL fileURLWithPath:movePath];
    
    NSURL *url2 = [NSURL URLWithString:@"https://3.ddyunbo.com//share//i9y0UWo4WBSxIxuB"];
//    if (_urlStr != nil) {
//        url2 = [NSURL URLWithString:_urlStr];
//    }
    
    
    [[TBPlayer sharedInstance] playWithUrl:url2 showView:self.showView];

}




@end
