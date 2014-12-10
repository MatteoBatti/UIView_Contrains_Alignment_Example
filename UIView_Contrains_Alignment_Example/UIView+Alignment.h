//
//  UIView+Alignment.h
//  vertical_alignement_constrains
//
//  Created by Matteo on 06/11/14.
//  Copyright (c) 2014 AppFactory. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    UIViewAlignmentCenter,
    UIViewAlignmentTop,
    UIViewAlignmentBottom,
    UIViewAlignmentRight,
    UIViewAlignmentLeft,
} UIViewAlignment;


@interface UIView (Alignment)

-(void)setAlignment:(UIViewAlignment)alignment resetContrains:(BOOL)resetConstrain;
-(void)setAlignmentChain:(NSArray *)alignmentChainArray resetContrains:(BOOL)resetConstrain;

@end
