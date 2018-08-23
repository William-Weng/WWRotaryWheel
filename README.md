# WWSegmentControl
一個自訂有QQ動畫的SegmentControl

[![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://developer.apple.com/swift/) [![Version](https://img.shields.io/cocoapods/v/WWRotaryWheel.svg?style=flat)](http://cocoapods.org/pods/WWRotaryWheel) [![Platform](https://img.shields.io/cocoapods/p/WWRotaryWheel.svg?style=flat)](http://cocoapods.org/pods/WWRotaryWheel) [![License](https://img.shields.io/cocoapods/l/WWRotaryWheel.svg?style=flat)](http://cocoapods.org/pods/WWRotaryWheel)

![一個自訂的SegmentControl (上傳至Cocoapods)](./WWRotaryWheel.gif)

# 使用範例
![IBOutlet](./IBOutlet.png)

```swift
import UIKit
import WWSegmentControl

class ViewController: UIViewController {

    @IBOutlet weak var myRotaryWheel: WWRotaryWheel!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myRotaryWheel.delegate = self
        myRotaryWheel.imageSetting([#imageLiteral(resourceName: "list"), #imageLiteral(resourceName: "like"), #imageLiteral(resourceName: "meeting"), #imageLiteral(resourceName: "plus"), #imageLiteral(resourceName: "check-mark")])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: WWRotaryWheelDelegate {
    
    func wwRotaryWheel(_ wwRotaryWheel: WWRotaryWheel, clickedItemAt index: Int, for buttons: [UIButton]) {
        myLabel.text = index.description
    }
    
    func wwRotaryWheel(_ wwRotaryWheel: WWRotaryWheel, selectedItemAt index: Int, for buttons: [UIButton]) {
        for button in buttons { button.backgroundColor = .clear }
        buttons[index].backgroundColor = .yellow
    }
}
```