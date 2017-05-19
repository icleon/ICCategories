//
//  NSObject+ICBlocksPerform.m
//  ICTools
//
//  Created by icleon on 19/05/2017.
//  Copyright © 2017 icleon. All rights reserved.
//

#import <objc/runtime.h>
#import "NSObject+ICBlocksPerform.h"


static char kICBlockKey;

@interface NSObject (ICBlocksPerform_Private)
@property (nonatomic, copy) void (^ _Nullable ICPerformBlock)(void);

@end

@implementation NSObject (ICBlocksPerform_Private)
@dynamic ICPerformBlock;

- (void)setICPerformBlock:(void (^ _Nullable)(void))ICPerformBlock {
    objc_setAssociatedObject(self, &kICBlockKey, ICPerformBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void (^ _Nullable)(void))ICPerformBlock {
    return objc_getAssociatedObject(self, &kICBlockKey);
}

@end



@implementation NSObject (ICBlocksPerform)

#pragma mark - Private

- (void)ICPerformCallback {
    !self.ICPerformBlock ? : self.ICPerformBlock();
    self.ICPerformBlock = nil;
}

#pragma mark - Public

- (void)ic_performBlock:(void (^ _Nonnull)(void))block {
    self.ICPerformBlock = block;
    [self performSelector:@selector(ICPerformCallback)];
}

- (void)ic_performBlock:(void (^ _Nonnull)(void))block afterDelay:(NSTimeInterval)delay {
    self.ICPerformBlock = block;
    [self performSelector:@selector(ICPerformCallback) withObject:nil afterDelay:delay];
}

- (void)ic_performBlock:(void (^ _Nonnull)(void))block onThread:(nullable NSThread *)thr waitUntilDone:(BOOL)wait modes:(nullable NSArray *)array {
    self.ICPerformBlock = block;
    [self performSelector:@selector(ICPerformCallback) onThread:thr withObject:nil waitUntilDone:wait modes:array];
}

- (void)ic_performBlock:(void (^ _Nonnull)(void))block onThread:(nullable NSThread *)thr waitUntilDone:(BOOL)wait {
    self.ICPerformBlock = block;
    [self performSelector:@selector(ICPerformCallback) onThread:thr withObject:nil waitUntilDone:wait];
}

- (void)ic_performBlockInBackground:(void (^ _Nonnull)(void))block {
    self.ICPerformBlock = block;
    [self performSelectorInBackground:@selector(ICPerformCallback) withObject:nil];
}

- (void)ic_performBlockOnMainThread:(void (^ _Nonnull)(void))block waitUntilDone:(BOOL)wait modes:(nullable NSArray<NSString *> *)array {
    self.ICPerformBlock = block;
    [self performSelectorOnMainThread:@selector(ICPerformCallback) withObject:nil waitUntilDone:wait modes:array];
}

- (void)ic_performBlockOnMainThread:(void (^ _Nonnull)(void))block waitUntilDone:(BOOL)wait {
    self.ICPerformBlock = block;
    [self performSelectorOnMainThread:@selector(ICPerformCallback) withObject:nil waitUntilDone:wait];
}

@end
