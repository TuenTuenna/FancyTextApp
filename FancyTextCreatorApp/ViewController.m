//
//  ViewController.m
//  FancyTextCreatorApp
//
//  Created by Jeff Jeong on 2019. 6. 24..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)dismissKeyBoard:(id)sender {
    // 텍스트 입력창에 적힘 글을 라벨에 띄운다.
    self.label.text = self.textField.text;
    [self resignFirstResponder];
    
}

- (IBAction)makeRed:(id)sender {
    
    UIColor *red = [UIColor redColor];
    [self.label setTextColor:red];
    
}

- (IBAction)makeBlue:(id)sender {
    
    UIColor *blue = [UIColor blueColor];
    [self.label setTextColor:blue];
    
}

- (IBAction)makeGreen:(id)sender {
    
    UIColor *green = [UIColor greenColor];
    [self.label setTextColor:green];
    
}

- (IBAction)font1:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Blacksword" size:24]];
}

- (IBAction)font2:(id)sender {
     [self.label setFont:[UIFont fontWithName:@"LemonMilk" size:24]];
}

- (IBAction)font3:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Moon Flower" size:24]];
}

- (IBAction)font4:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"SugarstyleMillenial-Regular" size:24]];
}

- (IBAction)addShadow:(id)sender {
    
    if(state == true){
        // 쉐도우 뺴기
        self.label.layer.shadowOpacity = 0;
        state = false;
        // 쉐도우 버튼 글자
        [self.addShadowButton setTitle:@"Add Shadow" forState:UIControlStateNormal];
        
    } else {
        // 쉐도우 넣기
        self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
        self.label.layer.shadowOpacity = 0.25;
        self.label.layer.shadowRadius = 2.0f;
        self.label.layer.shadowOffset = CGSizeMake(2, 2);
        state = true;
        
        [self.addShadowButton setTitle:@"Remove Shadow" forState:UIControlStateNormal];
        
    }
    
   
    
}

- (IBAction)small:(id)sender {
    UIFont *font = self.label.font;
    self.label.font = [font fontWithSize:10];
}

- (IBAction)medium:(id)sender {
    UIFont *font = self.label.font;
    self.label.font = [font fontWithSize:25];
}

- (IBAction)large:(id)sender {
    UIFont *font = self.label.font;
    self.label.font = [font fontWithSize:45];
}





@end
