//
//  NSMutableDictionary+ICAttributeMaker.m
//  GarminTest
//
//  Created by icleon on 12/05/2017.
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
- (NSMutableDictionary * (^)(UIFont *font))ic_font {
    return ^id(UIFont *font) {
        [self ic_safeSetObject:font forKey:NSFontAttributeName];
        return self;
    };
}

//NSParagraphStyleAttributeName
- (NSMutableDictionary * (^)(NSParagraphStyle *paragraphStyle))ic_paragraphStyle {
    return ^id(NSParagraphStyle *paragraphStyle) {
        [self ic_safeSetObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
        return self;
    };
}

//NSForegroundColorAttributeName
- (NSMutableDictionary * (^)(UIColor *foregroundColor))ic_foregroundColor {
    return ^id(UIColor *foregroundColor) {
        [self ic_safeSetObject:foregroundColor forKey:NSForegroundColorAttributeName];
        return self;
    };
}

//NSBackgroundColorAttributeName
- (NSMutableDictionary * (^)(UIColor *backgroundColor))ic_backgroundColor {
    return ^id(UIColor *backgroundColor) {
        [self ic_safeSetObject:backgroundColor forKey:NSBackgroundColorAttributeName];
        return self;
    };
}

//NSLigatureAttributeName
- (NSMutableDictionary * (^)(NSInteger ligature))ic_ligature {
    return ^id(NSInteger ligature) {
        [self ic_safeSetObject:@(ligature) forKey:NSLigatureAttributeName];
        return self;
    };
}

//NSKernAttributeName
- (NSMutableDictionary * (^)(CGFloat kern))ic_kern {
    return ^id(CGFloat kern) {
        [self ic_safeSetObject:@(kern) forKey:NSKernAttributeName];
        return self;
    };
}

//NSStrikethroughStyleAttributeName
- (NSMutableDictionary * (^)(NSInteger strikethroughStyle))ic_strikethroughStyle {
    return ^id(NSInteger strikethroughStyle) {
        [self ic_safeSetObject:@(strikethroughStyle) forKey:NSStrikethroughStyleAttributeName];
        return self;
    };
}

//NSUnderlineStyleAttributeName
- (NSMutableDictionary * (^)(NSUnderlineStyle underlineStyle))ic_underlineStyle {
    return ^id(NSUnderlineStyle underlineStyle) {
        [self ic_safeSetObject:@(underlineStyle) forKey:NSUnderlineStyleAttributeName];
        return self;
    };
}

//NSStrokeColorAttributeName
- (NSMutableDictionary * (^)(UIColor *strokeColor))ic_strokeColor {
    return ^id(UIColor *strokeColor) {
        [self ic_safeSetObject:strokeColor forKey:NSStrokeColorAttributeName];
        return self;
    };
}

//NSStrokeWidthAttributeName
- (NSMutableDictionary * (^)(NSInteger strokeWidth))ic_strokeWidth {
    return ^id(NSInteger strokeWidth) {
        [self ic_safeSetObject:@(strokeWidth) forKey:NSStrokeWidthAttributeName];
        return self;
    };
}

//NSShadowAttributeName
- (NSMutableDictionary * (^)(NSShadow *shadow))ic_shadow {
    return ^id(NSShadow *shadow) {
        [self ic_safeSetObject:shadow forKey:NSShadowAttributeName];
        return self;
    };
}

//NSTextEffectAttributeName
- (NSMutableDictionary * (^)(NSString *textEffect))ic_textEffect {
    return ^id(NSString *textEffect) {
        [self ic_safeSetObject:textEffect forKey:NSTextEffectAttributeName];
        return self;
    };
}

//NSAttachmentAttributeName
- (NSMutableDictionary * (^)(NSTextAttachment *attachment))ic_attachment {
    return ^id(NSTextAttachment *attachment) {
        [self ic_safeSetObject:attachment forKey:NSAttachmentAttributeName];
        return self;
    };
}

//NSLinkAttributeName
- (NSMutableDictionary * (^)(NSURL *link))ic_link {
    return ^id(NSURL *link) {
        [self ic_safeSetObject:link forKey:NSLinkAttributeName];
        return self;
    };
}

//NSBaselineOffsetAttributeName
- (NSMutableDictionary * (^)(CGFloat baselineOffset))ic_baselineOffset {
    return ^id(CGFloat baselineOffset) {
        [self ic_safeSetObject:@(baselineOffset) forKey:NSBaselineOffsetAttributeName];
        return self;
    };
}

//NSUnderlineColorAttributeName
- (NSMutableDictionary * (^)(UIColor *underlineColor))ic_underlineColor {
    return ^id(UIColor *underlineColor) {
        [self ic_safeSetObject:underlineColor forKey:NSUnderlineColorAttributeName];
        return self;
    };
}

//NSStrikethroughColorAttributeName
- (NSMutableDictionary * (^)(UIColor *strikethroughColor))ic_strikethroughColor {
    return ^id(UIColor *strikethroughColor) {
        [self ic_safeSetObject:strikethroughColor forKey:NSStrikethroughColorAttributeName];
        return self;
    };
}

//NSObliquenessAttributeName
- (NSMutableDictionary * (^)(CGFloat obliqueness))ic_obliqueness {
    return ^id(CGFloat obliqueness) {
        [self ic_safeSetObject:@(obliqueness) forKey:NSObliquenessAttributeName];
        return self;
    };
}

//NSExpansionAttributeName
- (NSMutableDictionary * (^)(CGFloat expansion))ic_expansion {
    return ^id(CGFloat expansion) {
        [self ic_safeSetObject:@(expansion) forKey:NSExpansionAttributeName];
        return self;
    };
}

//NSWritingDirectionAttributeName
- (NSMutableDictionary * (^)(NSArray *writingDirection))ic_writingDirection {
    return ^id(NSArray *writingDirection) {
        [self ic_safeSetObject:writingDirection forKey:NSWritingDirectionAttributeName];
        return self;
    };
}

//NSVerticalGlyphFormAttributeName
- (NSMutableDictionary * (^)(NSInteger verticalGlyphForm))ic_verticalGlyphForm {
    return ^id(NSInteger verticalGlyphForm) {
        [self ic_safeSetObject:@(verticalGlyphForm) forKey:NSVerticalGlyphFormAttributeName];
        return self;
    };
}

@end
