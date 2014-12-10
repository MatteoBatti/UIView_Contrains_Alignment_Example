//
//  ViewController.m
//  vertical_alignement_constrains
//
//  Created by Matteo on 06/11/14.
//  Copyright (c) 2014 AppFactory. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Alignment.h"

#define IBOX(x) [NSNumber numberWithLong:x]


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 400, 400)];
    [yellowView setBackgroundColor:[UIColor yellowColor]];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [greenView setBackgroundColor:[UIColor greenColor]];
    [yellowView addSubview: greenView];
    [greenView setAlignment:UIViewAlignmentCenter resetContrains:YES];
    [greenView release];
    [self.view addSubview:yellowView];
    [yellowView setAlignment:UIViewAlignmentCenter resetContrains:YES];
    [yellowView release];

    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    [redView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:redView];
    [redView setAlignment:UIViewAlignmentRight resetContrains:NO];
    [redView setAlignment:UIViewAlignmentTop resetContrains:NO];
    [redView release];
    
    UIView *purpleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    [purpleView setBackgroundColor:[UIColor purpleColor]];
    [self.view addSubview:purpleView];
    [purpleView setAlignmentChain:@[IBOX(UIViewAlignmentLeft), IBOX(UIViewAlignmentBottom)] resetContrains:NO];
    [purpleView release];
    
}


-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
