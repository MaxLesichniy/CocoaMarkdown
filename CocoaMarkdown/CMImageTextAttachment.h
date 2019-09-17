//
//  CMImageTextAttachment.h
//  CocoaMarkdown
//
//  Created by Jean-Luc on 10/05/2019.
//  Copyright © 2019 Indragie Karunaratne. All rights reserved.
//
@import Foundation;

#if TARGET_OS_IPHONE
@import UIKit;
#else
@import Cocoa;
#endif

NS_ASSUME_NONNULL_BEGIN

@interface CMImageTextAttachment : NSTextAttachment

- (instancetype) initWithImageURL:(NSURL*)imageURL defaultImageSize:(CGSize)defaultSize;

/**
*  Set a default size to the ImageTextAttachement.
*
*  @param newSize The new size of the ImageTextAttachement image.
*/
- (void) setImageTextAttachementSize:(CGSize)newSize;


@property (nonatomic, readonly) NSURL* imageURL;

@end

NS_ASSUME_NONNULL_END
