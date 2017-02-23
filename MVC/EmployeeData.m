//
//  EmployeeData.m
//  MVC
//
//  Created by Nagam Pawan on 10/1/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "EmployeeData.h"

@implementation EmployeeData
-(instancetype)initWithName:(NSString *)eName Designation:(NSString *)edesignation{
    
   
        self = [super init];
        if (self) {
            self.eName = eName;
            self.eDesignation = edesignation;
        }
        return self;
    }



@end
