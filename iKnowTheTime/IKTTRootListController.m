#import <Preferences/Preferences.h>

@interface IKTTRootListController : PSListController
 	- (void)visitTwitter;
	- (void)respring;
@end


@implementation IKTTRootListController
	- (NSArray *)specifiers {
		if (!_specifiers) {
			_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
		}

		return _specifiers;
	}
	- (void)respring {
		CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("com.p2kdev.iknowthetime.respring"), NULL, NULL, YES);
	}

	- (void)visitTwitter {
	  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://twitter.com/p2kdev"]];
	}

	@end
