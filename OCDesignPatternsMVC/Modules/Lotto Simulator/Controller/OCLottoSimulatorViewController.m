//
//  OCLottoSimulatorViewController.m
//  OCDesignPatterns
//
//  Created by Marcin Iwanicki on 2/20/14.
//  Copyright (c) 2014 Marcin Iwanicki. All rights reserved.
//

#import "OCLottoSimulatorViewController.h"
#import "OCLottoSimulatorView.h"
#import "OCLottoSimulatorModel.h"
#import "OCLottoSimulatorModelProtocol.h"
#import "OCLottoSimulatorModelDecorator.h"

@interface OCLottoSimulatorViewController ()

// Model
@property (nonatomic, strong) id<OCLottoSimulatorModelProtocol> lottoSimulatorModel;

@end

@implementation OCLottoSimulatorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self addNumbersObserver];
}

#pragma mark - Actions
- (IBAction)randNumbersAction:(id)sender
{
    [self.lottoSimulatorModel randNumbers];
}

- (IBAction)sortNumbersAction:(id)sender
{
    [self.lottoSimulatorModel sortNumbers];
}

- (IBAction)randNumbersBackgroundColorAction:(id)sender
{
    [self.lottoSimulatorView randNumbersBackgroundColor];
}

- (IBAction)resetNumbersBackgroundColorAction:(id)sender
{
    [self.lottoSimulatorView resetNumbersBackgroundColor];
}

#pragma mark - Getters
- (OCLottoSimulatorView *)lottoSimulatorView
{
    return (OCLottoSimulatorView *)self.view;
}

- (OCLottoSimulatorModel *)lottoSimulatorModel
{
    if (_lottoSimulatorModel == nil) {
        self.lottoSimulatorModel = [[OCLottoSimulatorModelDecorator alloc]
                                    initWithLottoSimulatorModel:[OCLottoSimulatorModel new]];
    }
    return _lottoSimulatorModel;
}

#pragma mark - Notifications
- (void)numbersStringHasBeenChanged:(NSNotification *)notification
{
    NSString *numbers = self.lottoSimulatorModel.numbersAsString;
    
    [self.lottoSimulatorView numbers:numbers];
}

- (void)addNumbersObserver
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(numbersStringHasBeenChanged:)
                                                 name:kLottoSimulatorModelNumbersHaveBeenChangedNotificationName
                                               object:self.lottoSimulatorModel];
}

#pragma mark - Memory management
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
