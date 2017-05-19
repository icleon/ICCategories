//
//  NSObject+ICBlocksPerform.h
//  ICTools
//
//  Created by icleon on 19/05/2017.
//  Copyright © 2017 icleon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ICBlocksPerform)

- (void)ic_performBlock:(void (^ _Nonnull)(void))block;
- (void)ic_performBlock:(void (^ _Nonnull)(void))block afterDelay:(NSTimeInterval)delay;
- (void)ic_performBlock:(void (^ _Nonnull)(void))block onThread:(nullable NSThread *)thr waitUntilDone:(BOOL)wait modes:(nullable NSArray *)array;
- (void)ic_performBlock:(void (^ _Nonnull)(void))block onThread:(nullable NSThread *)thr waitUntilDone:(BOOL)wait;
- (void)ic_performBlockInBackground:(void (^ _Nonnull)(void))block;
- (void)ic_performBlockOnMainThread:(void (^ _Nonnull)(void))block waitUntilDone:(BOOL)wait modes:(nullable NSArray<NSString *> *)array;
- (void)ic_performBlockOnMainThread:(void (^ _Nonnull)(void))block waitUntilDone:(BOOL)wait;

@end
