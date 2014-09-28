//
//  ViewController.h
//  Quiz
//
//  Created by WonShawn on 2014. 9. 28..
//  Copyright (c) 2014년 miraeclimate. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int currentQuestionIndex;
    
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;
@end

