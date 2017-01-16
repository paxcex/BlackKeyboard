#import <Preferences/PSListController.h>
#import <SCLAlertView/SCLAlertView.h>
@interface BlackKeyboardListController: PSListController {
}
@end

@implementation BlackKeyboardListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [self loadSpecifiersFromPlistName:@"BlackKeyboard" target:self];
	}
	return _specifiers;
}

/* The "Visit iOSGods.com" link inside the Preferences button */
- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://iosgods.com"]];
}


- (void)viewDidLoad {
    [super viewDidLoad];

		SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];

		    [alert addButton: @"Visit" actionBlock: ^(void) {
		[[UIApplication sharedApplication] openURL: [NSURL URLWithString: @"https://www.facebook.com/fajar.loro"]];
		}];


		    alert.shouldDismissOnTapOutside = NO; //Dismiss alert when tapped outside? YES or NO
		    alert.backgroundType = Shadow; // Blur, Shadow or Transparent background
		    alert.customViewColor = [UIColor blackColor]; // Overwrite SCLAlertView (Buttons, top circle and borders) colors


		    //alert.showAnimationType = SlideInFromLeft; // Animation when the popup is shown. Default is SlideInFromTop
		    alert.hideAnimationType = SlideOutToBottom; // Animation when closing the popup. Default is FadeOut

		[alert showNotice: nil // Success, Error, Notice, Warning, Info, Edit, Custom, Waiting
		subTitle: @"Black Keyboard Mode Settings\n"
		closeButtonTitle: @"Thanks" // The text on the button which closes the popup
		duration: 0.0f]; // Seconds until the popup auto closes.
		        return;
		}
@end
// vim:ft=objc
