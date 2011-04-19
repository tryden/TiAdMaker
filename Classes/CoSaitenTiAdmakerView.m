//
//  TiAdMakerView.m
//  tiadmaker
//
//  Created by saiten on 11/04/19.
//  Copyright 2011 iside. All rights reserved.
//

#import "TiUtils.h"
#import "TiUIWindow.h"
#import "TiUIWindowProxy.h"
#import "CoSaitenTiAdmakerView.h"


@implementation CoSaitenTiAdmakerView

- (void)dealloc
{
  NSLog(@"dealloc");
  RELEASE_TO_NIL(adMaker);
  [super dealloc];
}

- (void)initializeState
{
  [super initializeState];
  
  adMaker = [[AdMakerView alloc] init];
  [adMaker adMakerDelegate:self];
  [adMaker start];
  NSLog(@"[DEBUG] created admaker: %@", adMaker);  
}

-(void)willMoveToSuperview:(UIView *)newSuperview
{
	if ([newSuperview isKindOfClass:[TiUIView class]]) {
		TiUIView* currentView = (TiUIView*)newSuperview;
		while (currentView != nil && ![newSuperview isKindOfClass:[TiUIWindow class]]) {
			currentView = (TiUIView*)[newSuperview superview];
		}
		controller = [(TiWindowProxy*)[(TiUIWindow*)currentView proxy] navController];
		if (controller == nil) {
			controller = [(TiWindowProxy*)[(TiUIWindow*)currentView proxy] controller];
		}
	}
	else {
		controller = nil;
	}
  [adMaker adMakerDelegate:self];
}

- (void)attach
{
  if(adMaker) {
    [adMaker viewWillAppear];
  }
}

- (void)detach
{
  if(adMaker)
    [adMaker viewWillDisappear];
}

#pragma mark AdMakerDelegate methods

- (UIViewController *)currentViewControllerForAd
{
  NSLog(@"currentController %@", controller);
  return controller;
}

- (NSArray *)adKey
{
  return [NSArray arrayWithObjects:[self.proxy valueForKey:@"adUrl"], 
                                   [self.proxy valueForKey:@"siteId"], 
                                   [self.proxy valueForKey:@"zoneId"], nil];
}

- (void)requestAdSuccess
{
  NSLog(@"[DEBUG] adMaker request Ad success");
  [adMaker setFrame:CGRectMake(0, 0, 320, 50)];
  [super addSubview:adMaker.view];
}

- (void)requestAdFail
{
  NSLog(@"[DEBUG] adMaker request Ad fail");
}

@end
