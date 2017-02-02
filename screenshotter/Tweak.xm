#import<iAd/ADBannerView.h>
@class GADBannerView;
@interface SpringBoard
- (void)menuButtonDown:(id)down;
@end
@interface SBScreenShotter:NSObject
+ (id)sharedInstance;
-(void)saveScreenshot:(BOOL)screenshot;
@end
@interface SBScreenFlash:NSObject
+ (id)sharedInstance;
- (void)flashColor:(UIColor *)color;
@end
@interface PlayViewController:UIViewController
@property (strong, nonatomic) UIView *localAdView;
@property(retain, nonatomic) ADBannerView *iAdView;
- (void)viewWillAppear:(BOOL)animated;
- (void)adViewDidReceiveAd:(GADBannerView *)gAdView;
@end

%hook SBScreenFlash
- (void)flashColor:(UIColor *)color
{

%orig([UIColor yellowColor]);
NSLog(@"jieping!");
}
%end

/*%hook SBScreenShotter
- (void)saveScreenshot:(BOOL)screenshot{
	
	NSLog(@"saveScreenshot: is called!");
	SBScreenFlash * flash = [%c(SBScreenFlash) sharedInstance];
	UIColor *color = [UIColor yellowColor];
	[flash flashColor:color];
	%orig;
}
%end
*/

%hook PlayViewController
- (void)viewWillAppear:(BOOL)animated{
//- (void)viewDidLoad{
	%orig;

	//NSLog(@"iAdView was been hidden!");
	
	//GADBannerView *gAdView = MSHookIvar<GADBannerView *>(self, "gAdView");
	//gAdView.hidden = YES;
	self.localAdView.hidden = YES;
	//self.iAdView.hidden = YES;
	
    
}
- (void)planAds{
	return ;
}
%end



/*%hook SpringBoard
- (void)menuButtonDown:(id)down{
	
	NSLog(@"你按下了home键");
	SBScreenShotter *shotter = [%c(SBScreenShotter) sharedInstance];
	[shotter saveScreenshot:YES];
	SBScreenFlash * flash = [%c(SBScreenFlash) sharedInstance];
	UIColor *color = [UIColor yellowColor];
	[flash flashColor:color];
	%orig;
	

}

%end*/

