//
//  main.m
//  _11-PlistReview
//
//  Created by jack on 12/1/17.
//  Copyright © 2017 jack. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        NSArray *arr = @[@"jack", @"mike", @"Nancy", @"John"];
        //        BOOL flag = [arr writeToFile:@"/Users/jack/Desktop/arr.plist" atomically:YES];
        
        //        NSDictionary *persons = @{
        //                                  @"name":@"jack",
        //                                  @"age":@20,
        //                                  @"height":@1.88
        //                                  };
        //        BOOL flag = [persons writeToFile:@"/Users/jack/Desktop/persons.plist" atomically:YES];
        
        NSArray *persons = @[
                             @{@"name":@"jack", @"age":@20, @"height":@1.88, @"friends":@[@"Nancy",@"mike"]},
                             @{@"name":@"Nancy", @"age":@21, @"height":@1.68},
                             @{@"name":@"mike", @"age":@25, @"height":@1.88, @"friend":@"jack"}
                             ];
        BOOL flag = [persons writeToFile:@"/Users/jack/Desktop/personsDict.plist" atomically:YES];
        if (flag) {
            NSLog(@"Write Success");
        }
    }
    return 0;
}
