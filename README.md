# AnchorLayout
[![Platform](http://img.shields.io/badge/platform-iOS-blue.svg?style=flat)](https://developer.apple.com/iphone/index.action)
[![Language](http://img.shields.io/badge/language-Swift-brightgreen.svg?style=flat)](https://developer.apple.com/swift)
[![License](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](http://mit-license.org)

### Quick auto layout UIKit UIViews by using anchor

## Requirements
- iOS 11 or any higher version
- Xcode 12 or any higher version
- Swift 5

## Installation

### Cocoapods
Add the pod to your Podfile:
```ruby
pod 'AnchorLayout'
```

And then run:
```ruby
pod install
```
Import AnchorLayout:
```swift
import AnchorLayout
```

## Usage
- Add a gray view in superview's center with fixed size (height: 100, width: 100)
```swift
let grayView = UIView()
grayView.backgroundColor = .gray
grayView.anchorSize(h: 100, w: 100)
superview.addSubview(grayView)
grayView.centerInSuperView()
```
- Add a brown view below gray view with fixed height (50)
```swift
let brownView = UIView()
brownView.backgroundColor = .brown
brownView.anchorSize(h: 50)
superview.addSubview(brownView)
brownView.anchor(top: grayView.bottomAnchor, leading: grayView.leadingAnchor, bottom: nil, trailing: grayView.trailingAnchor)
```

- Add a blue view to the right of grayView & brownView
```swift
let blueView = UIView()
blueView.backgroundColor = .blue
blueView.anchorSize(w: 120)
superview.addSubview(blueView)
blueView.anchor(top: grayView.topAnchor, leading: grayView.trailingAnchor, bottom: brownView.bottomAnchor, trailing: nil)
```

- Add a yellow view into blue view and fill with padding 10
```swift
let yellowView = UIView()
yellowView.backgroundColor = .yellow
blueView.addSubview(yellowView)
yellowView.fillSuperview(padding: .init(top: 10, left: 10, bottom: 10, right: 10))
```
        
