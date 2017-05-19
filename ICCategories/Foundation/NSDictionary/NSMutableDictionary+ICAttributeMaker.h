//
//  NSMutableDictionary+ICAttributeMaker.h
//  GarminTest
//
//  Created by icleon on 12/05/2017.
//  Copyright © 2017 icleon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableDictionary (ICAttributeMaker)

//NSFontAttributeName
- (NSMutableDictionary * (^)(UIFont *font))ic_font;

//NSParagraphStyleAttributeName
- (NSMutableDictionary * (^)(NSParagraphStyle *paragraphStyle))ic_paragraphStyle;

//NSForegroundColorAttributeName
- (NSMutableDictionary * (^)(UIColor *foregroundColor))ic_foregroundColor;

//NSBackgroundColorAttributeName
- (NSMutableDictionary * (^)(UIColor *backgroundColor))ic_backgroundColor;

//NSLigatureAttributeName
- (NSMutableDictionary * (^)(NSInteger ligature))ic_ligature;

//NSKernAttributeName
- (NSMutableDictionary * (^)(CGFloat kern))ic_kern;

//NSStrikethroughStyleAttributeName
- (NSMutableDictionary * (^)(NSInteger strikethroughStyle))ic_strikethroughStyle;

//NSUnderlineStyleAttributeName
- (NSMutableDictionary * (^)(NSUnderlineStyle underlineStyle))ic_underlineStyle;

//NSStrokeColorAttributeName
- (NSMutableDictionary * (^)(UIColor *strokeColor))ic_strokeColor;

//NSStrokeWidthAttributeName
- (NSMutableDictionary * (^)(NSInteger strokeWidth))ic_strokeWidth;

//NSShadowAttributeName
- (NSMutableDictionary * (^)(NSShadow *shadow))ic_shadow;

//NSTextEffectAttributeName
- (NSMutableDictionary * (^)(NSString *textEffect))ic_textEffect;

//NSAttachmentAttributeName
- (NSMutableDictionary * (^)(NSTextAttachment *attachment))ic_attachment;

//NSLinkAttributeName
- (NSMutableDictionary * (^)(NSURL *link))ic_link;

//NSBaselineOffsetAttributeName
- (NSMutableDictionary * (^)(CGFloat baselineOffset))ic_baselineOffset;

//NSUnderlineColorAttributeName
- (NSMutableDictionary * (^)(UIColor *underlineColor))ic_underlineColor;

//NSStrikethroughColorAttributeName
- (NSMutableDictionary * (^)(UIColor *strikethroughColor))ic_strikethroughColor;

//NSObliquenessAttributeName
- (NSMutableDictionary * (^)(CGFloat obliqueness))ic_obliqueness;

//NSExpansionAttributeName
- (NSMutableDictionary * (^)(CGFloat expansion))ic_expansion;

//NSWritingDirectionAttributeName
- (NSMutableDictionary * (^)(NSArray *writingDirection))ic_writingDirection;

//NSVerticalGlyphFormAttributeName
- (NSMutableDictionary * (^)(NSInteger verticalGlyphForm))ic_verticalGlyphForm;



@end
