#define RELEASE
#define TWEAK_BUNDLE_ID "com.supermamon.spotwhite"
#define TWEAK_NAME "SpotWhite"
#define TWEAK_ABBR "SPW"

#ifdef RELEASE
# define NSLog(...)
#endif


%hook SBSearchBackdropView
- (void)layoutSubviews {
	%orig;
	
	NSLog(TWEAK_ABBR@"::SBSearchBackdropView.layoutSubviews called.");
	UIView *_tintView = MSHookIvar<UIView *>(self, "_tintView");	
	_tintView.hidden = YES;
	
}
%end

%hook SBSearchBlurEffectView
- (void)layoutSubviews {
	%orig;
	
	NSLog(TWEAK_ABBR@"::SBSearchBlurEffectView.layoutSubviews called.");
	UIView *_tintView = MSHookIvar<UIView *>(self, "_tintView");	
	_tintView.hidden = YES;
	
}
%end