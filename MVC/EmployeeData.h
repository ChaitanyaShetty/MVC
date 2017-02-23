//
//  EmployeeData.h
//  MVC
//
//  Created by Nagam Pawan on 10/1/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EmployeeData : NSObject
@property (strong, nonatomic) NSString *eName, *eDesignation;
-(instancetype)initWithName:(NSString *)eName Designation:(NSString *)edesignation;

@end
