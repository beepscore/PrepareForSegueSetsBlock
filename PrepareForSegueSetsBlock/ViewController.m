//
//  ViewController.m
//  PrepareForSegueSetsBlock
//
//  Created by Steve Baker on 2/27/15.
//  Copyright (c) 2015 Beepscore LLC. All rights reserved.
//

#import "ViewController.h"
#import "NameViewController.h"

@interface ViewController ()

// Often apps would use an editable textField here instead of a label.
// In this app we don't, in order to practice using block property.
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    NameViewController *nameViewController = (NameViewController*)[segue destinationViewController];

    // reduce chance of retain cycle
    __weak typeof(self) weakSelf = self;

    nameViewController.nameBlock = ^(NSString * name){
        // block contains reference to locally scoped nameLabel,
        // so whoever runs block will have access to it.
        weakSelf.nameLabel.text = [NSString stringWithFormat:@"Hi %@", name];
    };
}

@end
