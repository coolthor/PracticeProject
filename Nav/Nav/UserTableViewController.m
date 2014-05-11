//
//  UserTableViewController.m
//  Nav
//
//  Created by Thor Lin on 2014/5/9.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "UserTableViewController.h"

@interface UserTableViewController ()

@end

@implementation UserTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor colorWithRed:0.058 green:0.037 blue:0.024 alpha:1.000];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;//UITableViewCellSeparatorStyleSingleLineEtched;
    [self.tableView registerNib:[UINib nibWithNibName:@"myTableViewCell" bundle:nil]
         forCellReuseIdentifier:@"MY_CELL"];
//    self.tableView.sectionHeaderHeight = 100.0;
    //self.tableView.sectionIndexBackgroundColor = [UIColor colorWithRed:0.176 green:0.601 blue:0.906 alpha:1.00];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 170;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MY_CELL"];
    myTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MY_CELL"];
    // Configure the cell...
    if(cell ==nil){
        cell = [[myTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MY_CELL"];
    }
    //cell.backgroundColor  = [UIColor colorWithRed:0.970 green:0.731 blue:0.042 alpha:1.000];
    return cell;
}

//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
////    NSString * sectionName;
//    return @"人物屬性";
//}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * sectionHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 50)];
    sectionHeaderView.backgroundColor = [UIColor blackColor];
    
    UILabel * mySectionTitle = [[UILabel alloc]initWithFrame:CGRectMake(10, -3, tableView.bounds.size.width, 30)];
    mySectionTitle.text = @"人物屬性";
    mySectionTitle.font = [UIFont fontWithName:@"Helvetica-Bold" size:13];
    mySectionTitle.textColor = [UIColor whiteColor];
    
    [sectionHeaderView addSubview:mySectionTitle];
    return sectionHeaderView;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
