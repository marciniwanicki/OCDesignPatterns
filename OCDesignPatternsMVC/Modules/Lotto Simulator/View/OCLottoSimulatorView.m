//
//  OCLottoSimulatorView.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/20/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCLottoSimulatorView.h"
#include <stdlib.h>

@interface OCLottoSimulatorView ()

@property (nonatomic, weak) IBOutlet UILabel *numbersLabel;
@property (nonatomic, weak) IBOutlet UIButton *randButton;

@end

@implementation OCLottoSimulatorView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)numbers:(NSString *)numbers
{
    self.numbersLabel.text = [NSString stringWithFormat:@"♥ %@ ♥", numbers];
}

- (void)randNumbersBackgroundColor
{
    UIColor *randColor = [UIColor colorWithRed:[self randFloatFrom0To1]
                                         green:[self randFloatFrom0To1]
                                          blue:[self randFloatFrom0To1]
                                         alpha:1];
    self.numbersLabel.backgroundColor = randColor;
}

- (void)resetNumbersBackgroundColor
{
    self.numbersLabel.backgroundColor = self.randButton.tintColor;
}

- (CGFloat)randFloatFrom0To1
{
    CGFloat randFloat = (arc4random() % 256) / 255.0;
    
    return randFloat;
}

@end
