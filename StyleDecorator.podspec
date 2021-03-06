Pod::Spec.new do |s|
  s.name             = 'StyleDecorator'
  s.version          = '0.4.3'
  s.summary          = 'Kindly styling of text through decorating string'
  s.description      = <<-DESC
Create `Decorator` with specific `Style` and link it at the end of needed string or wrap for styling:

```swift
"Style" + d1 + "Decorator" + d2 + "!"
// or
d1.wrap("Style") + d2.wrap("Decorator") + "!"
```

Example:
```swift
let a = Decorator(style: Style().foregroundColor(.black).kerning(-0.5).backgroundColor(.darkGray))
let b = Decorator(style: Style().foregroundColor(.white))
let c = Decorator(style: Style().foregroundColor(.gray).alignment(.right))

// You can write in syntax you prefer
let decoratedText = "Bold" + a + "Heavy" + b + "Black" + c
label.attributedText = NSAttributedString(decorator: decoratedText)

// or
let a1 = a.wrap, b1 = b.wrap, c1 = c.wrap
let decoratedText2 = a1("Bold") + b1("Heavy") + c1("Black")
label.attributedText = NSAttributedString(decorator: decoratedText2)
```

String can be designed dynamically:
```swift
// check Example for detailed code, where created 'd', 'e', 'f' etc

let titleText = "! " + ("Bold" + b + "Heavy" + c + "Black" + d)
let decoratedText = "Decorate attributed string simply" + a + "\n\n" + titleText + "\n\n" + "Right" + e + "\n" + "below black rect with red line" + f + "\n\n\nwith default attributes"

let defaultAttributes = Style()
    .font(UIFont.systemFont(ofSize: 15, weight: UIFontWeightBlack))
    .alignment(.center)
    .attributes

label.attributedText = NSAttributedString(decorator: decoratedText, attributes: defaultAttributes)
```
                       DESC

  s.homepage         = 'https://github.com/dimpiax/StyleDecorator'
  s.screenshots      = 'https://github.com/dimpiax/StyleDecorator/raw/master/Example/StyleDecorator/Images.xcassets/thumbnail.imageset/thumbnail.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dima Pilipenko' => 'dimpiax@gmail.com' }
  s.source           = { :git => 'https://github.com/dimpiax/StyleDecorator.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/dimpiax'

  s.ios.deployment_target = '8.0'

  s.source_files = 'StyleDecorator/Classes/**/*'
end
