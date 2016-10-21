//
//  ViewController.m
//  绘制下载圆形
//
//  Created by liuxingchen on 16/10/21.
//  Copyright © 2016年 Liuxingchen. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet ProgressView *progress;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}
- (IBAction)progressSlider:(UISlider *)sender
{
    self.progressLabel.text = [NSString stringWithFormat:@"%.2f%%",sender.value *100];
    self.progress.progress = sender.value;
    
}
@end
