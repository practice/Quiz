//
//  ViewController.m
//  Quiz
//
//  Created by WonShawn on 2014. 9. 28..
//  Copyright (c) 2014년 miraeclimate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init {
    NSLog(@"init called");
    self = [super init];
    if (self) {
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"What is 7 = 7?"];
        [answers addObject:@"14"];

        [questions addObject:@"From what is cognac is made?"];
        [answers addObject:@"Grapes"];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"What is 7 = 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"From what is cognac is made?"];
        [answers addObject:@"Grapes"];
    }
    return self;
}

- (IBAction)showQuestion:(id)sender {
    currentQuestionIndex++;
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    NSLog(@"showing question: %@ at index %d of %d", question, currentQuestionIndex, [questions count]);
    
    [questionField setText:question];
    
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender {
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    [answerField setText:answer];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
