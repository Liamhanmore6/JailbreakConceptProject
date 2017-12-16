//
//  ViewController.m
//  JailbreakConcept
//
//  Created by Liam Hanmore on 10/04/2016.
//  Copyright © 2016 Liam Hanmore. All rights reserved.
//
// https://github.com/Liamhanmore6/JailbreakConcept
#import "ViewController.h"
#import "SVProgressHUD.h"

@interface ViewController ()

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

- (IBAction)JBButtonAction:(id)sender {
    [self performSelector:@selector(PreparingEnvironment) withObject:self];
    [self performSelector:@selector(PatchingKernal) withObject:self afterDelay:12.0];
    [self performSelector:@selector(InstallingCydia) withObject:self afterDelay:23.0];
    [self performSelector:@selector(cleaningUp) withObject:self afterDelay:27.0];
    [self performSelector:@selector(Jbdone) withObject:self afterDelay:34.5];
    self.JBButtonOutlt.enabled = FALSE;
}

-(void)PreparingEnvironment {
    [SVProgressHUD showWithStatus:@"Preparing Environment"];
}

-(void)PatchingKernal {
    [SVProgressHUD showWithStatus:@"Patching Kernal"];
}

-(void)InstallingCydia {
    [SVProgressHUD showWithStatus:@"Installing Cydia"];
}

-(void)cleaningUp {
    [SVProgressHUD showWithStatus:@"Cleaning up"];
}

-(void)Jbdone {
    [SVProgressHUD showSuccessWithStatus:@"Jailbreak done!"];
    self.JBButtonOutlt.enabled = TRUE;
}



@end
