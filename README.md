# DeviceIdentificator
[![Swift Package Manager](https://img.shields.io/github/v/tag/hyperdevs-team/DeviceIdentificator?label=SPM)](https://github.com/hyperdevs-team/DeviceIdentificator/releases/latest)
![Platform](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat) 
![Platform](https://img.shields.io/badge/platform-macOS-blue.svg?style=flat)
![Platform](https://img.shields.io/badge/platform-watchOS-blue.svg?style=flat)
![Platform](https://img.shields.io/badge/platform-tvOS-blue.svg?style=flat)
[![Build Status](https://travis-ci.org/hyperdevs-team/DeviceIdentificator.svg?branch=master)](https://travis-ci.org/hyperdevs-team/DeviceIdentificator) [![codecov](https://codecov.io/gh/hyperdevs-team/DeviceIdentificator/branch/master/graph/badge.svg)](https://codecov.io/gh/hyperdevs-team/DeviceIdentificator) [![codebeat badge](https://codebeat.co/badges/ec456bb6-741a-416f-96ee-520f2b8d076a)](https://codebeat.co/projects/github-com-hyperdevs-team-deviceidentificator-master)


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
.package(url: "https://github.com/hyperdevs-team/DeviceIdentificator", from: "4.0.0")
```

### Manually
To install it manually, drag the DeviceIdentificator folder into your app project in Xcode. You can also add it as a git submodule by running the following command:
```zsh
$ git submodule add https://github.com/hyperdevs-team/DeviceIdentificator.git
```

## Usage
```swift
import DeviceIdentificator

let deviceModel = DeviceModel.current
print("Current device: \(deviceModel.name)")

let isIpad = deviceModel.isIpad
let isSimulator = deviceModel.isSimulator
```
