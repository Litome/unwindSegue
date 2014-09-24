//
//  LoginViewController.m
//  UnwindSegueHowTo
//
//  Created by Lisandre Taylor on 24/09/2014.
//  Copyright (c) 2014 Lisandre Taylor. All rights reserved.
//

#import "LoginViewController.h"
#import "Model.h"

@interface LoginViewController ()

@property Model *model;

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _model = [Model sharedInstance];
        _model.systemStatus = kStartUp;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)unwindToLogin:(UIStoryboardSegue *)unwindSegue {
    
    _model.systemStatus = kLoggedOut;

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
