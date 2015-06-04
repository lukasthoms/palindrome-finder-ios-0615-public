//
//  AppDelegate.m
//  Palindrome
//
//  Created by Lukas Thoms on 6/4/15.
//  Copyright (c) 2015 Lukas Thoms. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSString *palindrome = @"A car, a man, a maraca.";
    BOOL logme = [self checkForPalindrome:palindrome];
    NSLog(logme ? @"Yes" : @"No");

    return YES;
}

-(BOOL) checkForPalindrome: (NSString*)input {
    BOOL isPalindrome = YES;
    NSMutableArray *characters = [[NSMutableArray alloc] init];
    NSString *lowercaseString = [input lowercaseString];
    for (NSInteger i=0; i < lowercaseString.length; i++) {
        if ([lowercaseString characterAtIndex:i] <= 122 && [lowercaseString characterAtIndex:i] >= 97) {
            NSString *character = [[NSString alloc] initWithFormat:@"%C", [lowercaseString characterAtIndex:i]];
            [characters addObject:character];
        }
    }
    for (NSUInteger i = 0; i < (characters.count / 2); i++) {
        NSUInteger n = characters.count - 1 - i;
        if ([characters[i] isEqualToString:characters[n]]) {
            NSLog(@"Character %lu equals character %lu", (unsigned long)i, n);
        } else {
            isPalindrome = NO;
        }
            
    }

    return isPalindrome;
}





- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
