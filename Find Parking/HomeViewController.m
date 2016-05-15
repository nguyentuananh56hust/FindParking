//
//  GoogleMapViewController.m
//  Find Parking
//
//  Created by TuanAnh on 3/1/16.
//  Copyright © 2016 TuanAnh. All rights reserved.
//
#if !defined(__has_feature) || !__has_feature(objc_arc)
#error "This file requires ARC support."
#endif


#import "HomeViewController.h"
#import "homeTableViewCell.h"

@interface HomeViewController ()

@end
@implementation HomeViewController {
    BOOL _firstLocationUpdate;
    GMSMarker *_b4Marker;
}

@synthesize tableView = _tableView;
@synthesize mapView = _mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:21.0103267
                                                            longitude:105.833808
                                                                 zoom:12];
    
    //self.mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    _mapView.camera = camera;
    _mapView.settings.compassButton = YES;
    _mapView.settings.myLocationButton = YES;
    
    _b4Marker = [[GMSMarker alloc] init];
    _b4Marker.title = @"B4 Phạm Ngọc Thạch";
    _b4Marker.snippet = @"Phạm Ngọc Thạch,\nKim Liên,Đống Đa,HN";
    _b4Marker.position = CLLocationCoordinate2DMake(21.0099532, 105.8363835);
    _b4Marker.appearAnimation = kGMSMarkerAnimationPop;
    _b4Marker.draggable = YES;
    _b4Marker.flat = YES;
    _b4Marker.groundAnchor = CGPointMake(0.5, 0.5);
    _b4Marker.map = _mapView;
    NSLog(@"B4Marker: %@",_b4Marker);
    
    // Listen to the myLocation property of GMSMapView.
    [_mapView addObserver:self
               forKeyPath:@"myLocation"
                  options:NSKeyValueObservingOptionNew
                  context:NULL];

    // Ask for My Location data after the map has already been added to the UI.
    dispatch_async(dispatch_get_main_queue(), ^{
        _mapView.myLocationEnabled = YES;
    });
}

- (void)dealloc {
    [_mapView removeObserver:self
                  forKeyPath:@"myLocation"
                     context:NULL];
}

#pragma mark - KVO updates

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    if (!_firstLocationUpdate) {
        // If the first location update has not yet been recieved, then jump to that
        // location.
        _firstLocationUpdate = YES;
        CLLocation *location = [change objectForKey:NSKeyValueChangeNewKey];
        _mapView.camera = [GMSCameraPosition cameraWithTarget:location.coordinate
                                                         zoom:17];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    homeTableViewCell *cell = (homeTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"homeTableViewCell"];
    if (cell == nil) {
        cell = [[homeTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"homeTableViewCell"];
    }
    cell.lblName.text = @"B4 Phạm Ngọc Thạch";
    cell.lblFee.text = @"3.000";
    cell.lblTime.text = @"6h-23h";
    cell.lblChasm.text = @"300 chỗ";
    return cell;
}

@end
