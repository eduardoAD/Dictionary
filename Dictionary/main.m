//
//  main.m
//  Dictionary
//
//  Created by Eduardo Alvarado Díaz on 10/1/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main() {
    //NSDictionary *book = [[NSDictionary alloc] initWithObjectsAndKeys:@"Code Da Vinci",@"title",@"Dan Drown",@"author", nil];
    NSDictionary *book = @{@"title":@"Da Vinci's Code",@"author":@"Dan Drown"};

    NSLog(@"book has %@", book);

    NSString *string = [book objectForKey:@"author"];
    NSLog(@"string %@", string);

    NSMutableDictionary *mutableBook = [NSMutableDictionary dictionaryWithDictionary:book];
    [mutableBook setObject:@2000 forKey:@"year"];
    NSLog(@"%@", mutableBook);

    for (NSString *string in [mutableBook allKeys]) {
        NSLog(@"key %@ value %@", string, [mutableBook objectForKey:string]);
    }

    return 0;
}
