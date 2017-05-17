//
//  NSMutableDictionary+ICAttributeMakerTests.m
//  GarminTest
//
//  Created by leon on 12/05/2017.
//  Copyright © 2017 icleon. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSMutableDictionary+ICAttributeMaker.h"

@interface NSMutableDictionary_ICAttributeMakerTests : XCTestCase

@end

@implementation NSMutableDictionary_ICAttributeMakerTests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAttributeMaker {
    UIFont *font                        = [UIFont systemFontOfSize:20.0];
    NSParagraphStyle *paragraphStyle    = [NSParagraphStyle defaultParagraphStyle];
    UIColor *foregroundColor            = [UIColor redColor];
    UIColor *backgroundColor            = [UIColor whiteColor];
    NSInteger ligature                  = 3;
    CGFloat kern                        = 0.7;
    NSInteger strikethroughStyle        = 3;
    NSInteger underlineStyle            = 7;
    UIColor *strokeColor                = [UIColor blueColor];
    CGFloat strokeWidth                 = 4.0;
    NSShadow *shadow                    = [NSShadow new];
    NSString *textEffect                = @"textEffect.test";
    NSTextAttachment *textAttachment    = [NSTextAttachment new];
    NSURL *link                         = [NSURL URLWithString:@"https://www.baidu.com"];
    CGFloat baselineOffset              = 1.2;
    UIColor *underlineColor             = [UIColor blueColor];
    UIColor *strikethroughColor         = [UIColor blueColor];
    CGFloat obliqueness                 = 3.2;
    CGFloat expansion                   = 2.2;
    NSArray *writingDirection           = @[@(NSWritingDirectionLeftToRight|NSWritingDirectionEmbedding),
                                            @(NSWritingDirectionRightToLeft|NSWritingDirectionEmbedding)];
    NSInteger verticalGlyphForm         = 1;
    
    NSMutableDictionary *attribues = [NSMutableDictionary new]
    .ic_font(font)
    .ic_paragraphStyle(paragraphStyle)
    .ic_foregroundColor(foregroundColor)
    .ic_backgroundColor(backgroundColor)
    .ic_ligature(ligature)
    .ic_kern(kern)
    .ic_strikethroughStyle(strikethroughStyle)
    .ic_underlineStyle(underlineStyle)
    .ic_strokeColor(strokeColor)
    .ic_strokeWidth(strokeWidth)
    .ic_shadow(shadow)
    .ic_textEffect(textEffect)
    .ic_attachment(textAttachment)
    .ic_link(link)
    .ic_baselineOffset(baselineOffset)
    .ic_underlineColor(underlineColor)
    .ic_strikethroughColor(strikethroughColor)
    .ic_obliqueness(obliqueness)
    .ic_expansion(expansion)
    .ic_writingDirection(writingDirection)
    .ic_verticalGlyphForm(verticalGlyphForm);
    
    XCTAssertEqual(font, attribues[NSFontAttributeName]);
    XCTAssertEqual(paragraphStyle, attribues[NSParagraphStyleAttributeName]);
    XCTAssertEqual(foregroundColor, attribues[NSForegroundColorAttributeName]);
    XCTAssertEqual(backgroundColor, attribues[NSBackgroundColorAttributeName]);
    XCTAssertEqual(ligature, [attribues[NSLigatureAttributeName] integerValue]);
    XCTAssertEqualWithAccuracy(kern, [attribues[NSKernAttributeName] floatValue], 0.000001);
    XCTAssertEqual(strikethroughStyle, [attribues[NSStrikethroughStyleAttributeName] integerValue]);
    XCTAssertEqual(underlineStyle, [attribues[NSUnderlineStyleAttributeName] integerValue]);
    XCTAssertEqual(strokeColor, attribues[NSStrokeColorAttributeName]);
    XCTAssertEqual(strokeWidth, [attribues[NSStrokeWidthAttributeName] floatValue]);
    XCTAssertEqual(shadow, attribues[NSShadowAttributeName]);
    XCTAssertEqual(textEffect, attribues[NSTextEffectAttributeName]);
    XCTAssertEqual(textAttachment, attribues[NSAttachmentAttributeName]);
    XCTAssertEqual(link, attribues[NSLinkAttributeName]);
    XCTAssertEqualWithAccuracy(baselineOffset, [attribues[NSBaselineOffsetAttributeName] floatValue], 0.000001);
    XCTAssertEqual(underlineColor, attribues[NSUnderlineColorAttributeName]);
    XCTAssertEqual(strikethroughColor, attribues[NSStrikethroughColorAttributeName]);
    XCTAssertEqualWithAccuracy(obliqueness, [attribues[NSObliquenessAttributeName] floatValue], 0.000001);
    XCTAssertEqualWithAccuracy(expansion, [attribues[NSExpansionAttributeName] floatValue], 0.000001);
    XCTAssertEqual(writingDirection, attribues[NSWritingDirectionAttributeName]);
    XCTAssertEqual(verticalGlyphForm, [attribues[NSVerticalGlyphFormAttributeName] integerValue]);
}

@end
