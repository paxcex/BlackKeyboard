#import "writeData.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <substrate.h>

/* To MSHook Offsets, use https://iosgods.com/topic/22718-mshook-tweakpatcherfunction-tweakpatcher-withwithout-psedittextcellpsslidercell-generator-online/ */
/* To Easily Generate Tweak.xm and Preferences Plist https://iosgods.com/topic/24138-code-inject-generator-online-tweakxm-preferencesplist/ */

#define PLIST_PATH @"/var/mobile/Library/Preferences/com.pxcex.blackkeyboard.plist"

inline bool GetPrefBool(NSString *key) {
		return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

#include <substrate.h>

%hook _UITextDocumentInterface
-(long long) keyboardAppearance {
	if(GetPrefBool(@"Enable")){
return 1;
}
return %orig;
}
%end

%hook UITextInputTraits
-(void) setKeyboardAppearance:(long long)arg1 {
	if(GetPrefBool(@"Enable")){
arg1 = 1;
}
return %orig;
}
%end

%hook UITextInputTraits
-(long long) keyboardAppearance {
	if(GetPrefBool(@"Enable")){
return 1;
}
return %orig;
}
%end

%hook UITextField
-(void) setKeyboardAppearance:(long long)arg1 {
	if(GetPrefBool(@"Enable")){
arg1 = 1;
}
return %orig;
}
%end

%hook UISearchBar
-(void) setKeyboardAppearance:(long long)arg1 {
	if(GetPrefBool(@"Enable")){
arg1 = 1;
}
return %orig;
}
%end

%hook UIKeyboardLayoutStar
-(void) setKeyboardAppearance:(long long)arg1 {
	if(GetPrefBool(@"Enable")){
arg1 = 1;
}
return %orig;
}
%end

%hook UIKeyboardLayoutCursor
-(void) setKeyboardAppearance:(long long)arg1 {
	if(GetPrefBool(@"Enable")){
arg1 = 1;
}
return %orig;
}
%end
