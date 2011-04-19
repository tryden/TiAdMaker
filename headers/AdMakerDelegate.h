//
//  AdMakerDelegate.h
//
//
//  Copyright 2011 NOBOT Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AdMakerView;

@protocol AdMakerDelegate<NSObject>

@required

-(NSArray*)adKey;
-(UIViewController*)currentViewControllerForAd;

@optional

// Sent when an ad request loaded an ad; this is a good opportunity to add
// this view to the hierachy, if it has not yet been added.
- (void)requestAdSuccess;

// Sent when an ad request failed to load an ad.
- (void)requestAdFail;

@end
