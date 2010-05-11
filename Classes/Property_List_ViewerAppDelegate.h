//
//  Property_List_ViewerAppDelegate.h
//  Property List Viewer
//
//  Created by Jim Dovey on 10-05-11.
//  Copyright Kobo Inc. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Property_List_ViewerViewController;

@interface Property_List_ViewerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Property_List_ViewerViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Property_List_ViewerViewController *viewController;

@end

