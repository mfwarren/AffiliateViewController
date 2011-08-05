//
//  InfoViewController.h
//
//  Created by generic on 7/27/11.
//  Copyright 2011 HalOtis Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppListDataSource.h"

@interface InfoViewController : UIViewController <UITabBarControllerDelegate> {
    
}

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;
@property (nonatomic, retain) IBOutlet AppListDataSource *appListDataSource;

@end
