//
//  Property_List_ViewerViewController.h
//  Property List Viewer
//
//  Created by Jim Dovey on 10-05-11.
//  Copyright Kobo Inc. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Property_List_ViewerViewController : UIViewController
{
	UITextView * textView;
}

@property (nonatomic, retain) IBOutlet UITextView * textView;

@end

