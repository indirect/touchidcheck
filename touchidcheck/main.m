//
//  main.m
//  touchidcheck
//
//  Created by André Arko on 1/27/17.
//  Copyright © 2017 Intuitive Direction. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <LocalAuthentication/LocalAuthentication.h>

int main(int argc, const char * argv[]) {
    LAContext *myContext = [[LAContext alloc] init];
    NSError *authError = nil;

    if ([myContext canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&authError]) {
        printf("touchid_present=true\n");
        return 0;
    } else {
        printf("touchid_present=false\n");
        return 1;
    }
}
