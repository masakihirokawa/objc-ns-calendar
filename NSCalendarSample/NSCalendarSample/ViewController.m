//
//  ViewController.m
//  NSCalendarSample
//
//  Created by Dolice on 2013/04/14.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //現在のカレンダーを取得する
  NSCalendar *calendar = [NSCalendar currentCalendar];
  if (![[calendar calendarIdentifier] isEqualToString:NSGregorianCalendar]) {
    //グレゴリオ暦以外のカレンダーが使用されている
    calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  }
  
  //取得する日時の情報を格納したインスタンスを生成する
  NSDateComponents *components = [[NSDateComponents alloc] init];
  
  [components setYear:2013];
  [components setMonth:4];
  [components setDay:14];
  [components setHour:9];
  [components setMinute:0];
  [components setSecond:55];
  
  //日時のオブジェクトを取得する
  NSDate *date = [calendar dateFromComponents:components];
  NSLog(@"%@", date);
}

@end
