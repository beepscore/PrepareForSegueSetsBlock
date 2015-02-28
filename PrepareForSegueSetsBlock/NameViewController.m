//
//  NameViewController.m
//  PrepareForSegueSetsBlock
//
//  Created by Steve Baker on 2/27/15.
//  Copyright (c) 2015 Beepscore LLC. All rights reserved.
//

#import "NameViewController.h"

@interface NameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation NameViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneButtonTapped:(id)sender {
    // dismissViewControllerAnimated: completion: block type is (void (^)(void))
    // doesn't take an argument to pass in a local variable
    [self dismissViewControllerAnimated:YES completion: nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
