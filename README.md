# InterfaceBuilderKit
> 在interface builder中快速设置一些Xcode没有提供的custom runtime attributes的UI分类
> 使用Cocoapods时，请添加 **use_frameworks!**

![Version](https://img.shields.io/badge/pod-1.0.0-brightgreen.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Platform](https://img.shields.io/badge/Platform-iOS-orange.svg)
![Author](https://img.shields.io/badge/Author-__Finder丶Tiwk-green.svg)

## 0x00 UIView(Categroy)
![](images/UIView/view002.png)
![](images/UIView/view001.png)

## 0x01 原理
一 . `IBInspectable` 
通过在属性前添加`IBInspectable`关键字可以让此属性出现在Storyboard/Xib上的属性设置项中,当在设置项中设置时,其实是为视图控件添加用户自定义Runtime属性.
```ObjectiveC
//eg:
@property (nonatomic,assign) IBInspectable CGFloat X_BorderWidth;
```

二. `IB_DESIGNABLE`
在类/分类前标记,可以使被标记的视图制件在Storyboard/Xib中实时渲染
