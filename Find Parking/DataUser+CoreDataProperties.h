//
//  DataUser+CoreDataProperties.h
//  
//
//  Created by TuanAnh on 5/16/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "DataUser.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataUser (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *fb_id;
@property (nullable, nonatomic, retain) NSNumber *role;
@property (nullable, nonatomic, retain) NSNumber *user_id;
@property (nullable, nonatomic, retain) NSString *userName;

@end

NS_ASSUME_NONNULL_END
