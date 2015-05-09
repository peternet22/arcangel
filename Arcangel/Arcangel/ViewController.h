//
//  ViewController.h
//  Arcangel
//
//  Created by Pedro Torres on 9/05/15.
//  Copyright (c) 2015 Pedro Torres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@interface ViewController : UIViewController
{
    CLLocationManager *locationManager;
    float longitud;
    float latitud;
    
    IBOutlet UILabel *latitudLabel;
    IBOutlet UILabel *longitudLabel;
}


@property(nonatomic, retain) CLLocationManager *locationManager;


@end

