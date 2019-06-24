//
//  ViewController.h
//  FancyTextCreatorApp
//
//  Created by Jeff Jeong on 2019. 6. 24..
//  Copyright © 2019년 Tuentuenna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    BOOL state;
    
    
}


@property (weak, nonatomic) IBOutlet UILabel *label;

@property (weak, nonatomic) IBOutlet UITextField *textField;


@property (weak, nonatomic) IBOutlet UIButton *addShadowButton;


// 엔터를 쳤을때 나가도록 하기 위해 did on exit 으로 설정해서 action 을 넣어준다.
- (IBAction)dismissKeyBoard:(id)sender;

- (IBAction)makeRed:(id)sender;
- (IBAction)makeBlue:(id)sender;
- (IBAction)makeGreen:(id)sender;

- (IBAction)font1:(id)sender;
- (IBAction)font2:(id)sender;
- (IBAction)font3:(id)sender;
- (IBAction)font4:(id)sender;

- (IBAction)addShadow:(id)sender;
- (IBAction)small:(id)sender;
- (IBAction)medium:(id)sender;
- (IBAction)large:(id)sender;



@end

