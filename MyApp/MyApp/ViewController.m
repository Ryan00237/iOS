//
//  ViewController.m
//  MyApp
//
//  Created by 任国良 on 2022/8/13.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) handleButtonClicked:(id)sender {
   NSLog(@"button have been clicked.");
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    CGRect buttonFrame = CGRectMake( 100, 200, 100, 30 );
    UIButton *button = [[UIButton alloc] initWithFrame: buttonFrame];
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor whiteColor]];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
 
    [self.view addSubview:button];
    
    
    [button addTarget:self
            action:@selector(handleButtonClicked:)
            forControlEvents:UIControlEventTouchUpInside
    ];

}


@end
