/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {useState} from 'react';
import {SafeAreaView, View, Text, StatusBar} from 'react-native';

import {Button} from './Button';

const App = () => {
  const [count, setCount] = useState(0);
  const addCount = () => {
    setCount(count + 1);
  };
  return (
    <>
      <StatusBar barStyle="dark-content" />
      <SafeAreaView>
        <View>
          <Button
            buttonText="Hello"
            onTap={addCount}
            style={{height: 40, width: 80, backgroundColor: 'red'}}
          />
          <Text>Button Pressed Count: {count}</Text>
        </View>
      </SafeAreaView>
    </>
  );
};

export default App;
