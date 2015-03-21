//
//  ViewController.m
//  Week3
//
//  Created by 박태준 on 2015. 3. 18..
//  Copyright (c) 2015년 박태준. All rights reserved.
//

#import "ViewController.h"
#import "NXSplitModel.h"
#import "NXSumModel.h"
//#import "NXImageModel.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // #1. JSON Serialization: NXSplitModel class
    // 아래 JSON 문자열을 쪼개서 딕셔너리로 만들어 봅니다.
    NSString* jsonData1 = @"[{\"id\": \"001\", \"name\": \"john\"}, {\"id\": \"007\", \"name\": \"james\"}]";
    NXSplitModel* result1 = [[NXSplitModel alloc] init];
    [result1 MyJSONSerializationFrom:jsonData1];
    NSLog(@"#1. JSON Serialization: NXSplitModel class: %@", result1.splitJson);
    
    
    // #2. JSON 문자열 만들기: NXSumModel class
    // #1의 결과인 result1을 이용합니다.
    NXSumModel* result2 = [[NXSumModel alloc]init];
    [result2 MyJSONMakerWithArray:result1.splitJson];
    NSLog(@"#2. JSON 문자열 만들기: NXSumModel class: %@", result2.makeJson);
    
    
    // #3. JSON Data로 이미지 보기: NXImageModel class
    // #1의 NXSplitModel class를 이용하여 딕셔너리화 합니다.
    NSString* jsonData2 = @"[{\"title\":\"죽은 시인의 사회\",\"image\":\"01.jpg\",\"content\":\"\uc601\ud654\ubcf4\ub7ec\uac00\uc790\",\"comments\":[{\"id\":1,\"user\":\"jobs\",\"comment\":\"apple\"},{\"id\":4,\"user\":\"cook\",\"comment\":\"apple\"}]}, {\"title\":\"파이널 컷\",\"image\":\"02.jpg\",\"content\":\"Pixar\",\"comments\":[]},{\"title\":\"굿 윌 헌팅\",\"image\":\"03.jpg\",\"content\":\"\uc6b0\ub514\uac00\ucd5c\uace0\",\"comments\":[{\"id\":2,\"user\":\"bill\",\"comment\":\"Microsoft\"}]}, {\"title\":\"어거스트 러쉬\",\"image\":\"04.jpg\",\"content\":\"\uc5b4\ub514\ub85c\",\"comments\":[{\"id\":4,\"user\":\"cook\",\"comment\":\"apple\"}]}]";
    
    
}

- (IBAction)randomChoice:(UIButton *)sender {
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
