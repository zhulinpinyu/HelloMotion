class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    @green_view = UIView.alloc.initWithFrame(CGRectMake(50,50,200,200))
    @green_view.backgroundColor = UIColor.greenColor

    @window.addSubview(@green_view)

    @blue_view = UIView.alloc.initWithFrame(CGRectMake(125,125,50,50))
    @blue_view.backgroundColor = UIColor.blueColor
    @window.addSubview(@blue_view)

    @red_view = UIView.alloc.initWithFrame(CGRectMake(10,10,20,20))
    @red_view.backgroundColor = UIColor.redColor
    @blue_view.addSubview(@red_view)
    true
  end
end
