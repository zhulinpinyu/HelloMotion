class TapController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.greenColor
    @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = "Motion Back!"
    @label.sizeToFit
    @label.color = UIColor.blueColor
    @label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2)
    self.view.addSubview(@label)
  end
end