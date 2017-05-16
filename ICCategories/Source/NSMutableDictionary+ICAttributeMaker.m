//
//  NSMutableDictionary+ICAttributeMaker.m
//  GarminTest
//
//  Created by leon on 12/05/2017.
//  Copyright © 2017 icleon. All rights reserved.
//

#import "NSMutableDictionary+ICAttributeMaker.h"

@implementation NSMutableDictionary (ICAttributeMaker)

#pragma mark - Private

- (void)ic_safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if(!anObject) {
        return;
    }
    
    if(!aKey) {
        return;
    }
    
    [self setObject:anObject forKey:aKey];
}

#pragma mark - Public

//NSFontAttributeName
- (NSMutableDictionary * (^)(UIFont *font))font {
    return ^id(UIFont *font) {
        [self ic_safeSetObject:font forKey:NSFontAttributeName];
        return self;
    };
}

//NSParagraphStyleAttributeName
- (NSMutableDictionary * (^)(NSParagraphStyle *paragraphStyle))paragraphStyle {
    return ^id(NSParagraphStyle *paragraphStyle) {
        [self ic_safeSetObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        return self;
    };
}

//NSForegroundColorAttributeName
- (NSMutableDictionary * (^)(UIColor *foregroundColor))foregroundColor {
    return ^id(UIColor *foregroundColor) {
        [self ic_safeSetObject:foregroundColor forKey:NSForegroundColorAttributeName];
        return self;
    };
}

//NSBackgroundColorAttributeName
- (NSMutableDictionary * (^)(UIColor *backgroundColor))backgroundColor {
    return ^id(UIColor *backgroundColor) {
        [self ic_safeSetObject:backgroundColor forKey:NSBackgroundColorAttributeName];
        return self;
    };
}

//NSLigatureAttributeName
- (NSMutableDictionary * (^)(NSInteger ligature))ligature {
    return ^id(NSInteger ligature) {
        [self ic_safeSetObject:@(ligature) forKey:NSLigatureAttributeName];
        return self;
    };
}

//NSKernAttributeName
- (NSMutableDictionary * (^)(CGFloat kern))kern {
    return ^id(CGFloat kern) {
        [self ic_safeSetObject:@(kern) forKey:NSKernAttributeName];
        return self;
    };
}

//NSStrikethroughStyleAttributeName
- (NSMutableDictionary * (^)(NSInteger strikethroughStyle))strikethroughStyle {
    return ^id(NSInteger strikethroughStyle) {
        [self ic_safeSetObject:@(strikethroughStyle) forKey:NSStrikethroughStyleAttributeName];
        return self;
    };
}

//NSUnderlineStyleAttributeName
- (NSMutableDictionary * (^)(NSUnderlineStyle underlineStyle))underlineStyle {
    return ^id(NSUnderlineStyle underlineStyle) {
        [self ic_safeSetObject:@(underlineStyle) forKey:NSUnderlineStyleAttributeName];
        return self;
    };
}

//NSStrokeColorAttributeName
- (NSMutableDictionary * (^)(UIColor *strokeColor))strokeColor {
    return ^id(UIColor *strokeColor) {
        [self ic_safeSetObject:strokeColor forKey:NSStrokeColorAttributeName];
        return self;
    };
}

//NSStrokeWidthAttributeName
- (NSMutableDictionary * (^)(NSInteger strokeWidth))strokeWidth {
    return ^id(NSInteger strokeWidth) {
        [self ic_safeSetObject:@(strokeWidth) forKey:NSStrokeWidthAttributeName];
        return self;
    };
}

//NSShadowAttributeName
- (NSMutableDictionary * (^)(NSShadow *shadow))shadow {
    return ^id(NSShadow *shadow) {
        [self ic_safeSetObject:shadow forKey:NSShadowAttributeName];
        return self;
    };
}

//NSTextEffectAttributeName
- (NSMutableDictionary * (^)(NSString *textEffect))textEffect {
    return ^id(NSString *textEffect) {
        [self ic_safeSetObject:textEffect forKey:NSTextEffectAttributeName];
        return self;
    };
}

//NSAttachmentAttributeName
- (NSMutableDictionary * (^)(NSTextAttachment *attachment))attachment {
    return ^id(NSTextAttachment *attachment) {
        [self ic_safeSetObject:attachment forKey:NSAttachmentAttributeName];
        return self;
    };
}

//NSLinkAttributeName
- (NSMutableDictionary * (^)(NSURL *link))link {
    return ^id(NSURL *link) {
        [self ic_safeSetObject:link forKey:NSLinkAttributeName];
        return self;
    };
}

//NSBaselineOffsetAttributeName
- (NSMutableDictionary * (^)(CGFloat baselineOffset))baselineOffset {
    return ^id(CGFloat baselineOffset) {
        [self ic_safeSetObject:@(baselineOffset) forKey:NSBaselineOffsetAttributeName];
        return self;
    };
}

//NSUnderlineColorAttributeName
- (NSMutableDictionary * (^)(UIColor *underlineColor))underlineColor {
    return ^id(UIColor *underlineColor) {
        [self ic_safeSetObject:underlineColor forKey:NSUnderlineColorAttributeName];
        return self;
    };
}

//NSStrikethroughColorAttributeName
- (NSMutableDictionary * (^)(UIColor *strikethroughColor))strikethroughColor {
    return ^id(UIColor *strikethroughColor) {
        [self ic_safeSetObject:strikethroughColor forKey:NSStrikethroughColorAttributeName];
        return self;
    };
}

//NSObliquenessAttributeName
- (NSMutableDictionary * (^)(CGFloat obliqueness))obliqueness {
    return ^id(CGFloat obliqueness) {
        [self ic_safeSetObject:@(obliqueness) forKey:NSObliquenessAttributeName];
        return self;
    };
}

//NSExpansionAttributeName
- (NSMutableDictionary * (^)(CGFloat expansion))expansion {
    return ^id(CGFloat expansion) {
        [self ic_safeSetObject:@(expansion) forKey:NSExpansionAttributeName];
        return self;
    };
}

//NSWritingDirectionAttributeName
- (NSMutableDictionary * (^)(NSArray *writingDirection))writingDirection {
    return ^id(NSArray *writingDirection) {
        [self ic_safeSetObject:writingDirection forKey:NSWritingDirectionAttributeName];
        return self;
    };
}

//NSVerticalGlyphFormAttributeName
- (NSMutableDictionary * (^)(NSInteger verticalGlyphForm))verticalGlyphForm {
    return ^id(NSInteger verticalGlyphForm) {
        [self ic_safeSetObject:@(verticalGlyphForm) forKey:NSVerticalGlyphFormAttributeName];
        return self;
    };
}

@end
