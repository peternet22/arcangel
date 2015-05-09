//
//  ViewController.m
//  Arcangel
//
//  Created by Pedro Torres on 9/05/15.
//  Copyright (c) 2015 Pedro Torres. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize locationManager;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.locationManager = [[CLLocationManager alloc] init];
    
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    self.locationManager.distanceFilter = kCLDistanceFilterNone;
    
    if([CLLocationManager locationServicesEnabled]){
        self.locationManager.delegate = self;
        
        
        [self.locationManager startUpdatingLocation];
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    latitud = newLocation.coordinate.latitude;
    longitud = newLocation.coordinate.longitude;
    latitudLabel.text = [NSString stringWithFormat:@"%0.8f",latitud];
    longitudLabel.text = [NSString stringWithFormat:@"%0.8f",longitud];
    
   
    

    
    
}

@end
