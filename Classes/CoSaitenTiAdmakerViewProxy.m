//
//  TiAdMakerViewProxy.m
//  tiadmaker
//
//  Created by saiten on 11/04/19.
//  Copyright 2011 iside. All rights reserved.
//

#import "CoSaitenTiAdmakerViewProxy.h"
#import "CoSaitenTiAdmakerView.h"

@implementation CoSaitenTiAdmakerViewProxy

- (void)viewDidAttach
{
  if(view)
    [(CoSaitenTiAdmakerView*)view attach];
}

- (void)viewWillDetach
{
  if(view)
    [(CoSaitenTiAdmakerView*)view detach];
}

@end
