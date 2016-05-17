//
//  ParkingID+CoreDataProperties.h
//  
//
//  Created by TuanAnh on 5/16/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ParkingID.h"

NS_ASSUME_NONNULL_BEGIN

@interface ParkingID (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *isManager;
@property (nullable, nonatomic, retain) NSNumber *parking_id;

@end

NS_ASSUME_NONNULL_END
