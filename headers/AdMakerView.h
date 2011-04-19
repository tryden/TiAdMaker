//
//  AdMakerView.h
//
//
//  Copyright 2011 NOBOT Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AdMakerDelegate.h"

@interface AdMakerView : UIViewController <UIWebViewDelegate> {
	id<AdMakerDelegate> delegate;

	BOOL useSafari;		// とび先URLの表示にSafariを使うか
}

@property(nonatomic,assign) id <AdMakerDelegate> delegate;

@property(nonatomic) BOOL useSafari;

-(void)adMakerDelegate:(id)_delegate;
-(void)setFrame:(CGRect)frame;
-(void)start;	// 表示開始

- (void)viewWillAppear;
- (void)viewWillDisappear;

@end
