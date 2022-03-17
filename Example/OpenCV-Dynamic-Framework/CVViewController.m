//
//  CVViewController.m
//  OpenCV-Dynamic-Framework
//
//  Created by eddy-lau on 03/18/2022.
//  Copyright (c) 2022 eddy-lau. All rights reserved.
//

#import "CVViewController.h"
#import "CVHelper.h"

@interface CVViewController ()

@property (nonatomic,weak) IBOutlet UIImageView *cropped;

@end

@implementation CVViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *original = [UIImage imageNamed:@"DemoImage"];
    
    CGFloat midX = original.size.width/2;
    CGFloat midY = original.size.height/2;
    UIImage *croppedImage = [CVHelper crop:original withRect:CGRectMake(midX-50, midY-50, 100, 100)];
    self.cropped.image = croppedImage;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
