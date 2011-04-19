//
//  TiAdMakerView.h
//  tiadmaker
//
//  Created by saiten on 11/04/19.
//  Copyright 2011 iside. All rights reserved.
//

#import "TiUIView.h"
#import "AdMakerView.h"
#import "AdMakerDelegate.h"

@interface CoSaitenTiAdmakerView : TiUIView <AdMakerDelegate> {
  AdMakerView *adMaker;
  UIViewController *controller;
}

- (void)attach;
- (void)detach;

@end
