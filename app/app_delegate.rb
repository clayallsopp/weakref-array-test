module LifecycleCallbacks
  def self.included(klass)
    klass.send(:attr_writer, :on_disappear_callbacks)
  end

  def on_disappear_callbacks
    @on_disappear_callbacks ||= []
  end

  def on_disappear(&block)
    on_disappear_callbacks << WeakRef.new(block)
  end

  def will_disappear!
    on_disappear_callbacks.delete_if do |block|
      !block.weakref_alive?
    end

    on_disappear_callbacks.each(&:call)
  end
end

class MyObject
  include LifecycleCallbacks
end

class MyController < UIViewController
  def viewDidLoad
    @@count ||= 0
    @@count += 1

    self.title = "Controller #{@@count}"

    @my_object = MyObject.new
    @my_object.on_disappear do
      puts "I'm disappearing"
    end

    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.setTitle("Push VC", forState:UIControlStateNormal)
    button.addTarget(self, action:"push", forControlEvents:UIControlEventTouchUpInside)
    button.sizeToFit

    self.edgesForExtendedLayout = UIRectEdgeNone

    self.view.addSubview(button)
  end

  def viewWillDisappear(animated)
    @my_object.will_disappear!

    super
  end

  def push
    vc = MyController.alloc.initWithNibName(nil, bundle:nil)
    self.navigationController.pushViewController(vc, animated:true)
  end
end

class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    navigation_controller = UINavigationController.alloc.init
    vc = MyController.alloc.initWithNibName(nil, bundle:nil)
    navigation_controller.pushViewController(vc, animated:true)

    @window.rootViewController = navigation_controller
    @window.makeKeyAndVisible
    true
  end
end
