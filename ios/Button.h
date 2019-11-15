//
//  Button.h
//  OpentokNative
//
//  Created by Fernando Ontiveros on 11/14/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>

@interface Button : UIView

@property (nonatomic, copy) RCTBubblingEventBlock onTap;

@end
