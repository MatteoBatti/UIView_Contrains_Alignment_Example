//
//  UIView+Alignment.m
//  vertical_alignement_constrains
//
//  Created by Matteo on 06/11/14.
//  Copyright (c) 2014 AppFactory. All rights reserved.
//

#import "UIView+Alignment.h"

@implementation UIView (Alignment)

- (void)executeContrains:(UIViewAlignment)alignment
{
    switch (alignment) {
        case UIViewAlignmentCenter:
            [self setCenterConstrains];
            break;
        case UIViewAlignmentBottom:
            [self setBottomConstrains];
            break;
        case UIViewAlignmentTop:
            [self setTopConstrains];
            break;
        case UIViewAlignmentRight:
            [self setRightConstrains];
            break;
        case UIViewAlignmentLeft:
            [self setLeftConstrains];
            break;
        default:
            break;
    }
}

-(void) reset
{
    [self.superview removeConstraints:[self.superview constraints]];
}

-(void)setAlignment:(UIViewAlignment)alignment resetContrains:(BOOL)resetConstrain
{
    NSAssert(self.superview , @"UIView+Alignment the view should be added to superview");
    if (resetConstrain) {
        [self reset];
    }
    [self.superview needsUpdateConstraints];
    [self executeContrains:alignment];
    [self.superview needsUpdateConstraints];
}


-(void)setAlignmentChain:(NSArray *)alignmentChainArray resetContrains:(BOOL)resetConstrain
{
    NSAssert(self.superview , @"UIView+Alignment the view should be added to superview");
    if (resetConstrain) {
        [self reset];
    }
    [self.superview needsUpdateConstraints];
    for (int i= 0; i < [alignmentChainArray count] ; i++) {
        UIViewAlignment alignment = [[alignmentChainArray objectAtIndex:i] intValue];
        [self executeContrains:alignment];
    }
    [self.superview needsUpdateConstraints];
}



-(void) setCenterConstrains
{
    
    [self setWithHeight];
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:NSLayoutAttributeCenterX
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.superview
                                                               attribute:NSLayoutAttributeCenterX
                                                              multiplier:1.0
                                                                constant:0.0]];
    
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:NSLayoutAttributeCenterY
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.superview
                                                               attribute:NSLayoutAttributeCenterY
                                                              multiplier:1.0
                                                                constant:0.0]];
}

-(void) setTopConstrains
{
    [self setWithHeight];
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.superview
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1.0
                                                                constant:0.0]];
}

-(void) setBottomConstrains
{
    [self setWithHeight];
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:NSLayoutAttributeBottom
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.superview
                                                               attribute:NSLayoutAttributeBottom
                                                              multiplier:1.0
                                                                constant:0.0]];
}

-(void) setLeftConstrains
{
    [self setWithHeight];
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:NSLayoutAttributeLeft
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.superview
                                                               attribute:NSLayoutAttributeLeft
                                                              multiplier:1.0
                                                                constant:0.0]];
}

-(void) setRightConstrains
{
    [self setWithHeight];
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:NSLayoutAttributeRight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.superview
                                                               attribute:NSLayoutAttributeRight
                                                              multiplier:1.0
                                                                constant:0.0]];
}


-(void) setWithHeight
{
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSLayoutConstraint *cn = nil;
    cn = [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeHeight
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:nil
                                      attribute:NSLayoutAttributeNotAnAttribute
                                     multiplier:1.0
                                       constant:self.frame.size.height];
    [self.superview addConstraint:cn];
    
    cn = [NSLayoutConstraint constraintWithItem:self
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:nil
                                      attribute:NSLayoutAttributeNotAnAttribute
                                     multiplier:1.0
                                       constant:self.frame.size.width];
    [self.superview addConstraint: cn];
}



@end
