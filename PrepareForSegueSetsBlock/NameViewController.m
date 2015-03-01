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

    // http://stackoverflow.com/questions/21894375/cant-connect-ibaction-to-view
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]
                                       initWithTarget:self
                                       action:@selector(backgroundTapped)];
    [self.view addGestureRecognizer:gesture];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneButtonTapped:(id)sender {

    // run nameBlock, using local value as argument
    // self doesn't know which object set it's nameBlock property
    // self just supplies the argument(s) and runs whatever code is in nameBlock
    self.nameBlock(self.nameTextField.text);

    // dismissViewControllerAnimated: completion: block type is (void (^)(void))
    // completion block doesn't take an argument to pass in a local variable
    [self dismissViewControllerAnimated:YES completion: nil];
}

- (void)backgroundTapped {
    NSLog(@"backgroundTapped");
    [self.view endEditing:YES];
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
