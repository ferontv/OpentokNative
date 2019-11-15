//
//  ButtonViewManager.m
//  OpentokNative
//
//  Created by Fernando Ontiveros on 11/14/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "ButtonViewManager.h"
#import "Button.h"
#import "React/UIView+React.h"

@implementation ButtonViewManager
RCT_EXPORT_MODULE()

- (UIView *)view {
  Button *button = [[Button alloc] init];
  return button;
}

RCT_EXPORT_VIEW_PROPERTY(buttonText, NSString);
RCT_EXPORT_VIEW_PROPERTY(onTap, RCTBubblingEventBlock);

@end
