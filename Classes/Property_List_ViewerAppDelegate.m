//
//  Property_List_ViewerAppDelegate.m
//  Property List Viewer
//
//  Created by Jim Dovey on 10-05-11.
//  Copyright Kobo Inc. 2010. All rights reserved.
//

#import "Property_List_ViewerAppDelegate.h"
#import "Property_List_ViewerViewController.h"

@implementation Property_List_ViewerAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	NSURL * url = [launchOptions objectForKey: UIApplicationLaunchOptionsURLKey];
	if ( url != nil )
	{
		NSData * raw = [NSData dataWithContentsOfURL: url];
		id plist = [NSPropertyListSerialization propertyListFromData: raw
													mutabilityOption: NSPropertyListImmutable
															  format: NULL
													errorDescription: NULL];
		NSData * text = [NSPropertyListSerialization dataFromPropertyList: plist
																   format: NSPropertyListXMLFormat_v1_0
														 errorDescription: NULL];
		viewController.textView.text = [[[NSString alloc] initWithData: text encoding: NSUTF8StringEncoding] autorelease];
	}

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
