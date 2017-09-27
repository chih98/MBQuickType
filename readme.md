# MB Quick Type
> This is under the MIT license

<img src="./preview.gif" width="225" height="487">

## Synopsis


## Let's Get Started

> I would like to add that this is a very early version, and that I am intending to add many more features to it.
>
> If you have an idea, please create an issue, and add an `idea` tag


## Variables

* `buttons: [UIButton]` is the array where all the `UIButton` are stored. This is private since you can use any button you want

> Button height should be 30, width should be adaptable.

* `buttonBGColor: UIColor` sets the color for all buttons in the list

> Default is a nice shade of light blue.

* `barBGColor: UIColor` sets the background color

> Default is set to

## Functions

```Swift
func init(withController: UIViewController, inputView: UIView)
```
This is the default initializer. No other initializer will work
* param `withController` is the controller where the button targets are.
* param `inputView` must be the input view where the keyboard should have MBQuickType as the accessory view.

This document will be updated within the week. Just make sure `renderedView()` is used last. It returns the final view.

```Swift
func addButton(withTitle: String, target: Selector)
```
Even though `buttons: [UIButton]` is public, this function adds a a preformatted button to the array. The formatting is the same as in the preview image.

```Swift
func renderedView() -> UIView
```
Once all settings are set, and all buttons are added, set `renderedView()` to a variable. `renderedView()` returns the inputAccessoryView.

## Example Implementation

This is the implmentation to get the result above.

```Swift
import UIKit
import MBQuickType

public class MyViewController {

// TextField/TextView where you want the MBQuickType to be the inputAccessoryView.
@IBOutlet weak var myTextField: UITextField!

override func viewDidLoad() {
super.viewDidLoad()

// Initializing MBQuickType
let quickType = MBQuickType(withController: self, inputView: self.textField)

// Adding Buttons
quickType.addButton(withTitle: "Option1", target: #selector(self.buttonAction(_:)))
quickType.addButton(withTitle: "Option2", target: #selector(self.buttonAction(_:)))
//...
quickType.addButton(withTitle: "Option6", target: #selector(self.buttonAction(_:)))

// Setting inputAccessoryView as the returned view
self.myTextField.inputAccessoryView = quickType.renderedView()

}

}

```

