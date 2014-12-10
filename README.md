UIView+Alignment
=====

simple Objective-C category for subviews's alignments.

Usage
=====

import

`#import "UIView+Alignment.h"`

You can add a consecutive `UIViewAlignment` to `UIView`

```
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [redView setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:redView];
    [redView setAlignment:UIViewAlignmentRight resetContrains:NO];
    [redView setAlignment:UIViewAlignmentTop resetContrains:NO];
    [redView release];
```
or an `NArray` of `NSNUmber`

```
    UIView *purpleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [purpleView setBackgroundColor:[UIColor purpleColor]];
    [self.view addSubview:purpleView];
    [purpleView setAlignmentChain:@[IBOX(UIViewAlignmentLeft), IBOX(UIViewAlignmentBottom)] resetContrains:NO];
    [purpleView release];
```
where `IBOX` is

`#define IBOX(x) [NSNumber numberWithLong:x]`

Example
=====

the following code is a complete example

```
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
```

and that the result

![Alt text](https://raw.githubusercontent.com/MatteoBatti/UIView_Contrains_Alignment_Example/master/image/example_result.png )





