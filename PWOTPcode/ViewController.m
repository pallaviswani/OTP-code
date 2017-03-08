//
//  ViewController.m
//  PWOTPcode
//
//  Created by Student P_08 on 06/12/16.
//  Copyright © 2016 Pallavi Wani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    mytextfieldone=[[UITextField alloc]init];
    mytextfieldone.frame=CGRectMake(30, 100, 50, 50);
    mytextfieldone.delegate=self;
    mytextfieldone.layer.borderColor=[UIColor blackColor].CGColor;
    mytextfieldone.layer.borderWidth=3;
    [self.view addSubview:mytextfieldone];
    
    mytextfieldtwo=[[UITextField alloc]init];
    mytextfieldtwo.frame=CGRectMake(90, 100, 50, 50);
    mytextfieldtwo.delegate=self;
    mytextfieldtwo.layer.borderColor=[UIColor blackColor].CGColor;
    mytextfieldtwo.layer.borderWidth=3;
    [self.view addSubview:mytextfieldtwo];

    mytextfieldthree=[[UITextField alloc]init];
    mytextfieldthree.frame=CGRectMake(150, 100, 50, 50);
    mytextfieldthree.delegate=self;
    mytextfieldthree.layer.borderColor=[UIColor blackColor].CGColor;
    mytextfieldthree.layer.borderWidth=3;
    [self.view addSubview:mytextfieldthree];

    mytextfieldfour=[[UITextField alloc]init];
    mytextfieldfour.frame=CGRectMake(210, 100, 50, 50);
    mytextfieldfour.delegate=self;
    mytextfieldfour.layer.borderColor=[UIColor blackColor].CGColor;
    mytextfieldfour.layer.borderWidth=3;
    [self.view addSubview:mytextfieldfour];

    
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
{
    if([string intValue] && textField.text.length >1)
        return YES;
    if(mytextfieldone.text.length == 0)
        [mytextfieldone becomeFirstResponder];
    else if(textField == mytextfieldone)
        [mytextfieldtwo becomeFirstResponder];
    else if(textField == mytextfieldtwo)
        [mytextfieldthree becomeFirstResponder];
    else if(textField == mytextfieldthree)
        [mytextfieldfour becomeFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
