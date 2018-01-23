//
//  ViewController.m
//  SaveDataUserDefaultsObj
//
//  Created by LuyenBG on 1/23/18.
//  Copyright © 2018 LuyenBG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.text = [[NSUserDefaults standardUserDefaults] stringForKey:@"save"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveAction:(UIBarButtonItem *)sender {
    [[NSUserDefaults standardUserDefaults] setObject:self.textField.text forKey:@"save"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


@end
