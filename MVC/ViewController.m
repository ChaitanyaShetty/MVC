//
//  ViewController.m
//  MVC
//
//  Created by Nagam Pawan on 10/1/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"
#import "EmployeeData.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray *empDetails;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = false;
    // Do any additional setup after loading the view, typically from a nib.
    EmployeeData *pavan = [[EmployeeData alloc]initWithName:@"Pawan" Designation:@"ios"];
    EmployeeData *chai = [[EmployeeData alloc]initWithName:@"Chaitanya" Designation:@"ios"];
    EmployeeData *ram = [[EmployeeData alloc]initWithName:@"Ramu" Designation:@"java"];
    EmployeeData *vamsi = [[EmployeeData alloc]initWithName:@"Vamsi" Designation:@"java"];
    self.empDetails =[[NSMutableArray alloc]init];
    [self.empDetails addObjectsFromArray:@[pavan, chai, ram, vamsi]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.empDetails count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    EmployeeData *data = [self.empDetails objectAtIndex:indexPath.row];
    cell.textLabel.text = data.eName;
    cell.detailTextLabel.text = data.eDesignation;
    return cell;
}
@end
