# DeviceIdentificator

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/DeviceIdentificator.svg)](https://img.shields.io/cocoapods/v/DeviceIdentificator.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![Platform](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat) 
![Platform](https://img.shields.io/badge/platform-tvOS-blue.svg?style=flat)
[![Build Status](https://travis-ci.org/sebastianvarela/DeviceIdentificator.svg?branch=master)](https://travis-ci.org/sebastianvarela/DeviceIdentificator) [![codecov](https://codecov.io/gh/sebastianvarela/DeviceIdentificator/branch/master/graph/badge.svg)](https://codecov.io/gh/sebastianvarela/DeviceIdentificator) [![codebeat badge](https://codebeat.co/badges/0230786d-680e-4d4b-bcb0-bacc6693571f)](https://codebeat.co/projects/github-com-sebastianvarela-deviceidentificator-master)


## Introduction
Use `DeviceModel` to get some usefull information about some Apple devices (specially iPhones and iPads).

> Currently the Mac models available in this library correspond only to those that use Apple Silicon chips

## Platforms 
Support for iOS, iPadOS, macOS and tvOS

## Support
For Swift 4 please use v1

For Swift 5 please use v2+

## Installation

### Swift Package Manager
Add the package using Xcode or copy this into your `Package.swift` file:
```swift
.package(url: "https://github.com/sebastianvarela/DeviceIdentificator", from: "4.0.0")
```

### Manually
To install it manually, drag the DeviceIdentificator folder into your app project in Xcode. You can also add it as a git submodule by running the following command:
```zsh
$ git submodule add https://github.com/sebastianvarela/DeviceIdentificator.git
```

## Usage
```swift
import DeviceIdentificator

let deviceModel = DeviceModel.current
print("Current device: \(deviceModel.name)")

let isIpad = deviceModel.isIpad
let isSimulator = deviceModel.isSimulator
```
