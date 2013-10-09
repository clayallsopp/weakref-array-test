weakref-array-test
==================

```
clayallsopp@claymbp ~/Projects/Motion/weakref-array-test: rake
     Build ./build/iPhoneSimulator-7.0-Development
   Compile ./app/app_delegate.rb
      Link ./build/iPhoneSimulator-7.0-Development/weakref-array-test.app/weakref-array-test
    Create ./build/iPhoneSimulator-7.0-Development/weakref-array-test.dSYM
  Simulate ./build/iPhoneSimulator-7.0-Development/weakref-array-test.app
DYLD_FRAMEWORK_PATH="/Applications/Xcode.app/Contents/Developer/../Frameworks":"/Applications/Xcode.app/Contents/Developer/../OtherFrameworks" /Library/RubyMotion/bin/ios/sim 2 1 7.0 "/Applications/Xcode.app/Contents/Developer" "./build/iPhoneSimulator-7.0-Development/weakref-array-test.app"
2013-10-09 14:14:25.809 weakref-array-test[92399:a0b] Cannot find executable for CFBundle 0x9d52eb0 </Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator7.0.sdk/System/Library/AccessibilityBundles/CertUIFramework.axbundle> (not loaded)
(main)> 2013-10-09 14:14:28.504 weakref-array-test[92399:a0b] app_delegate.rb:16:in `block in will_disappear!': undefined method `weakref_alive?' for main:__NSCFData (NoMethodError)
	from app_delegate.rb:15:in `will_disappear!'
	from app_delegate.rb:50:in `viewWillDisappear:'
2013-10-09 14:14:28.507 weakref-array-test[92399:a0b] *** Terminating app due to uncaught exception 'NoMethodError', reason: 'app_delegate.rb:16:in `block in will_disappear!': undefined method `weakref_alive?' for main:__NSCFData (NoMethodError)
	from app_delegate.rb:15:in `will_disappear!'
	from app_delegate.rb:50:in `viewWillDisappear:'
'
*** First throw call stack:
(
	0   CoreFoundation                      0x01d3a5e4 __exceptionPreprocess + 180
	1   libobjc.A.dylib                     0x001888b6 objc_exception_throw + 44
	2   weakref-array-test                  0x00107e2a _ZL10__vm_raisev + 346
	3   weakref-array-test                  0x00107ed5 rb_vm_raise + 165
	4   weakref-array-test                  0x000392f1 rb_exc_raise + 17
	5   weakref-array-test                  0x00106185 rb_vm_method_missing + 469
	6   weakref-array-test                  0x000dc64f rb_method_missing + 31
	7   weakref-array-test                  0x000e506c rb_vm_dispatch + 3916
	8   weakref-array-test                  0x000e3f3d rb_vm_trigger_method_missing + 717
	9   weakref-array-test                  0x000e4622 rb_vm_dispatch + 1282
	10  weakref-array-test                  0x00003c6c vm_dispatch + 1100
	11  weakref-array-test                  0x00009763 rb_scope__will_disappear!__block__ + 99
	12  weakref-array-test                  0x000f2d5f _ZL20dispatch_bimp_callerPFP11objc_objectS0_P13objc_selectorzEmS1_mP11rb_vm_blockiPKm + 46351
	13  weakref-array-test                  0x000e66ca _ZL13vm_block_evalP7RoxorVMP11rb_vm_blockP13objc_selectormiPKm + 970
	14  weakref-array-test                  0x000e6993 rb_vm_yield_args + 83
	15  weakref-array-test                  0x000db2e3 rb_yield + 67
	16  weakref-array-test                  0x00017448 rary_reject_bang + 104
	17  weakref-array-test                  0x00017353 rary_delete_if + 35
	18  weakref-array-test                  0x000fe3df _ZL20dispatch_rimp_callerPFP11objc_objectS0_P13objc_selectorzEmS1_iPKm + 46303
	19  weakref-array-test                  0x000e5673 rb_vm_dispatch + 5459
	20  weakref-array-test                  0x00003c6c vm_dispatch + 1100
	21  weakref-array-test                  0x0000962e rb_scope__will_disappear!__ + 238
	22  weakref-array-test                  0x000fe3df _ZL20dispatch_rimp_callerPFP11objc_objectS0_P13objc_selectorzEmS1_iPKm + 46303
	23  weakref-array-test                  0x000e5673 rb_vm_dispatch + 5459
	24  weakref-array-test                  0x00003c6c vm_dispatch + 1100
	25  weakref-array-test                  0x0000a434 rb_scope__viewWillDisappear:__ + 132
	26  weakref-array-test                  0x0000a4cc __unnamed_46 + 44
	27  UIKit                               0x006c631f -[UIViewController _setViewAppearState:isAnimating:] + 568
	28  UIKit                               0x006c68ee -[UIViewController __viewWillDisappear:] + 77
	29  UIKit                               0x006d7310 -[UIViewController(UIContainerViewControllerProtectedMethods) beginAppearanceTransition:animated:] + 199
	30  UIKit                               0x006dcb6c -[UINavigationController _startCustomTransition:] + 1028
	31  UIKit                               0x006e9757 -[UINavigationController _startDeferredTransitionIfNeeded:] + 688
	32  UIKit                               0x006ea349 -[UINavigationController __viewWillLayoutSubviews] + 57
	33  UIKit                               0x0082339d -[UILayoutContainerView layoutSubviews] + 213
	34  UIKit                               0x0f26756f -[UILayoutContainerViewAccessibility(SafeCategory) layoutSubviews] + 50
	35  UIKit                               0x00619dd7 -[UIView(CALayerDelegate) layoutSublayersOfLayer:] + 355
	36  libobjc.A.dylib                     0x0019a81f -[NSObject performSelector:withObject:] + 70
	37  QuartzCore                          0x023d672a -[CALayer layoutSublayers] + 148
	38  QuartzCore                          0x023ca514 _ZN2CA5Layer16layout_if_neededEPNS_11TransactionE + 380
	39  QuartzCore                          0x023ca380 _ZN2CA5Layer28layout_and_display_if_neededEPNS_11TransactionE + 26
	40  QuartzCore                          0x02332156 _ZN2CA7Context18commit_transactionEPNS_11TransactionE + 294
	41  QuartzCore                          0x023334e1 _ZN2CA11Transaction6commitEv + 393
	42  QuartzCore                          0x02333bb4 _ZN2CA11Transaction17observer_callbackEP19__CFRunLoopObservermPv + 92
	43  CoreFoundation                      0x01d0253e __CFRUNLOOP_IS_CALLING_OUT_TO_AN_OBSERVER_CALLBACK_FUNCTION__ + 30
	44  CoreFoundation                      0x01d0248f __CFRunLoopDoObservers + 399
	45  CoreFoundation                      0x01ce03b4 __CFRunLoopRun + 1076
	46  CoreFoundation                      0x01cdfb33 CFRunLoopRunSpecific + 467
	47  CoreFoundation                      0x01cdf94b CFRunLoopRunInMode + 123
	48  GraphicsServices                    0x0396a9d7 GSEventRunModal + 192
	49  GraphicsServices                    0x0396a7fe GSEventRun + 104
	50  UIKit                               0x005af94b UIApplicationMain + 1225
	51  weakref-array-test                  0x0000283c main + 156
	52  libdyld.dylib                       0x02f84725 start + 0
	53  ???                                 0x00000001 0x0 + 1
)
libc++abi.dylib: terminating with uncaught exception of type NoMethodError
```
