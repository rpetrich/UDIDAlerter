#import <UIKit/UIKit.h>

extern CFStringRef MGCopyAnswer(CFStringRef key) WEAK_IMPORT_ATTRIBUTE;

%ctor {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	%init();
	[[NSNotificationCenter defaultCenter] addObserverForName:UIApplicationDidFinishLaunchingNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *block) {
		CFStringRef uniqueIdentifier = MGCopyAnswer(CFSTR("UniqueDeviceID"));
		UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"UDID" message:(NSString *)uniqueIdentifier delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
		if (uniqueIdentifier)
			CFRelease(uniqueIdentifier);
		[av show];
		[av release];
	}];
	[pool drain];
}