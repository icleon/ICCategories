//
//  NSMutableDictionary+ICAttributeMaker.h
//  GarminTest
//
//  Created by leon on 12/05/2017.
//  Copyright © 2017 icleon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableDictionary (ICAttributeMaker)

//NSFontAttributeName
- (NSMutableDictionary * (^)(UIFont *font))font;

//NSParagraphStyleAttributeName
- (NSMutableDictionary * (^)(NSParagraphStyle *paragraphStyle))paragraphStyle;

//NSForegroundColorAttributeName
- (NSMutableDictionary * (^)(UIColor *foregroundColor))foregroundColor;

//NSBackgroundColorAttributeName
- (NSMutableDictionary * (^)(UIColor *backgroundColor))backgroundColor;

//NSLigatureAttributeName
- (NSMutableDictionary * (^)(NSInteger ligature))ligature;

//NSKernAttributeName
- (NSMutableDictionary * (^)(CGFloat kern))kern;

//NSStrikethroughStyleAttributeName
- (NSMutableDictionary * (^)(NSInteger strikethroughStyle))strikethroughStyle;

//NSUnderlineStyleAttributeName
- (NSMutableDictionary * (^)(NSUnderlineStyle underlineStyle))underlineStyle;

//NSStrokeColorAttributeName
- (NSMutableDictionary * (^)(UIColor *strokeColor))strokeColor;

//NSStrokeWidthAttributeName
- (NSMutableDictionary * (^)(NSInteger strokeWidth))strokeWidth;

//NSShadowAttributeName
- (NSMutableDictionary * (^)(NSShadow *shadow))shadow;

//NSTextEffectAttributeName
- (NSMutableDictionary * (^)(NSString *textEffect))textEffect;

//NSAttachmentAttributeName
- (NSMutableDictionary * (^)(NSTextAttachment *attachment))attachment;

//NSLinkAttributeName
- (NSMutableDictionary * (^)(NSURL *link))link;

//NSBaselineOffsetAttributeName
- (NSMutableDictionary * (^)(CGFloat baselineOffset))baselineOffset;

//NSUnderlineColorAttributeName
- (NSMutableDictionary * (^)(UIColor *underlineColor))underlineColor;

//NSStrikethroughColorAttributeName
- (NSMutableDictionary * (^)(UIColor *strikethroughColor))strikethroughColor;

//NSObliquenessAttributeName
- (NSMutableDictionary * (^)(CGFloat obliqueness))obliqueness;

//NSExpansionAttributeName
- (NSMutableDictionary * (^)(CGFloat expansion))expansion;

//NSWritingDirectionAttributeName
- (NSMutableDictionary * (^)(NSArray *writingDirection))writingDirection;

//NSVerticalGlyphFormAttributeName
- (NSMutableDictionary * (^)(NSInteger verticalGlyphForm))verticalGlyphForm;



@end
