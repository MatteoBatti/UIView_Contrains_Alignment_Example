UIView+Alignment
=====

simple Objective-C category for subviews's alignments.

Usage
=====

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





