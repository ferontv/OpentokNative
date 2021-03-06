//
//  Button.m
//  OpentokNative
//
//  Created by Fernando Ontiveros on 11/14/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "Button.h"
#import "React/UIView+React.h"

@implementation Button {
  UIButton *_button;
  NSString *_buttonText;
}

-(void) setButtonText:(NSString *)buttonText {
  NSLog(@"Set text %@", buttonText);
  _buttonText = buttonText;
  if(_button) {
    [_button setTitle:buttonText forState:(UIControlStateNormal)];
    [_button sizeToFit];
  }
}

-(void) layoutSubviews {
  [super layoutSubviews];
  if( _button == nil) {
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_button addTarget:self action:@selector(onButtonTap:) forControlEvents:UIControlEventTouchUpInside];
    [_button setTitle:_buttonText forState:UIControlStateNormal];
    [_button sizeToFit];
    [self insertSubview:_button atIndex:0 ];
  }
}

- (void)insertReactSubview:(UIView *)view atIndex:(NSInteger)atIndex
{
  [self addSubview:view];
}

- (void)removeReactSubview:(UIView *)subview
{
  [subview removeFromSuperview];
}

- (void)removeFromSuperview
{
  [super removeFromSuperview];
}

- (IBAction) onButtonTap:(id)sender {
  self.onTap(@{});
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
