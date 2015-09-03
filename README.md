GSSynthesizeSingleton
=====================
[![Build Status](https://travis-ci.org/GyazSquare/GSSynthesizeSingleton.svg?branch=master)](https://travis-ci.org/GyazSquare/GSSynthesizeSingleton)

GSSynthesizeSingleton is a simple macro to synthesize the methods for an Objective-C singleton class.

## Requirements

* Xcode 7 or later
* Base SDK: iOS 9 / OS X 10.11 or later

## Installation

### CocoaPods

Add the pod to your `Podfile`:

```ruby
# ... snip ...

pod 'GSSynthesizeSingleton'
```

Install the pod:

```sh
$ pod install
```

### Source

Check out the source:

```sh
$ git clone https://github.com/GyazSquare/GSSynthesizeSingleton.git
```

Copy GSSynthesizeSingleton.h into your project.

## Usage

1. Declare a singleton class method in your header file.
2. Add one macro in your source file.

MyManager.h
```objc
@import Foundation;

@interface MyManager : NSObject

+ (instancetype)sharedManager;

@end
```
MyManager.m
```objc
#import "GSManager.h"
#import "GSSynthesizeSingleton.h"

@implementation MyManager

GSSynthesizeSingleton(My, Manager);

@end
```

## License

GSSynthesizeSingleton is licensed under the MIT License.

See the LICENSE file for more info.
