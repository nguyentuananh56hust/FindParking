//
//  DataParking+CoreDataProperties.h
//  
//
//  Created by TuanAnh on 5/15/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "DataParking.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataParking (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *address;
@property (nullable, nonatomic, retain) NSNumber *camera;
@property (nullable, nonatomic, retain) NSNumber *carSlot;
@property (nullable, nonatomic, retain) NSNumber *carWash;
@property (nullable, nonatomic, retain) NSNumber *electricCharge;
@property (nullable, nonatomic, retain) NSNumber *latitude;
@property (nullable, nonatomic, retain) NSNumber *longitude;
@property (nullable, nonatomic, retain) NSNumber *maintenance;
@property (nullable, nonatomic, retain) NSNumber *motorSlot;
@property (nullable, nonatomic, retain) NSString *notes;
@property (nullable, nonatomic, retain) NSString *openTime;
@property (nullable, nonatomic, retain) NSNumber *parking_id;
@property (nullable, nonatomic, retain) NSString *parkingName;
@property (nullable, nonatomic, retain) NSNumber *peopleDisability;
@property (nullable, nonatomic, retain) NSString *ratesDaily;
@property (nullable, nonatomic, retain) NSString *ratesHourly;
@property (nullable, nonatomic, retain) NSString *ratesMonthly;
@property (nullable, nonatomic, retain) NSString *ratesShift;
@property (nullable, nonatomic, retain) NSNumber *roof;
@property (nullable, nonatomic, retain) NSNumber *security;
@property (nullable, nonatomic, retain) NSString *urlImage;
@property (nullable, nonatomic, retain) NSNumber *user_id;
@property (nullable, nonatomic, retain) NSNumber *rateCount;
@property (nullable, nonatomic, retain) NSNumber *wifi;
@property (nullable, nonatomic, retain) NSNumber *rateSum;

@end

NS_ASSUME_NONNULL_END
