//
//  SomePrivatePod.m
//  SomePrivatePod
//
//  Created by Vsevolod on 12/12/19.
//  Copyright © 2019 Vsevolod. All rights reserved.
//

#import "SomePrivatePod.h"
#import <GoogleMobileAds/GoogleMobileAds.h>

@implementation SomePrivatePod

-(id) init
{
	if ((self = [super init]))
	{
		// simple call so that we can be sure GAD is linked
		[[GADMobileAds sharedInstance] startWithCompletionHandler:^(GADInitializationStatus * _Nonnull status) {
			// yay!
		}];
	}
	
	return self;
}

@end
