//
//  CCGLView.h
//  cocos2d-ios
//
//  Created by Oleg Osin on 5/22/14.
//
//

#import "ccMacros.h"

#if __CC_PLATFORM_ANDROID

#import <BridgeKitV3/BridgeKit.h>
#import <android/native_window.h>
#import <bridge/runtime.h>
#import <BridgeKitV3/BridgeKit.h>

#import "../../Platforms/CCGL.h"
#import "CCDirectorView.h"

enum CCAndroidScreenMode {
    
    /* 
     NOTE: Emulation modes are not ideal and are only inteded for quick prototyping, 
     because emulation modes force a an aspect ratio that is not intended for the device.
     */
    
    /*
     Keeps true to the device resolution and calculates a content scale
     based on AndroidDisplayMetrics density property
     */
    CCNativeScreenMode,
    
    /* 
     Provides a screen that is 320pt wide and has the aspect ratio of the
     device. The screen size in pixels matches the native
     resolution.
     */
    CCScreenScaledAspectFitEmulationMode
};

BRIDGE_CLASS("org.cocos2d.CCGLView")
@interface CCGLView : AndroidSurfaceView <CCDirectorView>

- (id)initWithContext:(AndroidContext *)context;
- (id)initWithContext:(AndroidContext *)context screenMode:(enum CCAndroidScreenMode)screenMode scaleFactor:(float)scaleFactor;
- (BOOL)onTouchEvent:(AndroidMotionEvent *)event;

- (BOOL)setupView:(ANativeWindow*)window;
- (void)swapBuffers;

@property (nonatomic) CGFloat contentScaleFactor;
@property (nonatomic) CGRect bounds;
@property (nonatomic, readonly) EGLDisplay eglDisplay;
@property (nonatomic, readonly) EGLSurface eglSurface;
@property (nonatomic, readonly) EGLContext eglContext;
@property (nonatomic, readonly) EGLConfig eglConfiguration;
@property (nonatomic, readonly) enum CCAndroidScreenMode screenMode;

- (void)addGestureDetector:(AndroidGestureDetector *)detector;
- (void)removeGestureDetector:(AndroidGestureDetector *)detector;

@end
#endif // __CC_PLATFORM_ANDROID


