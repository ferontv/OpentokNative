import React from 'react';
import {requireNativeComponent} from 'react-native';

export const Button = props => {
  return <ButtonView {...props} />;
};

let ButtonView = requireNativeComponent('ButtonView', Button);
