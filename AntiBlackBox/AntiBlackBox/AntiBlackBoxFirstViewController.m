//
//  AntiBlackBoxFirstViewController.m
//  AntiBlackBox
//
//  Created by Thor Lin on 2014/3/23.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "AntiBlackBoxFirstViewController.h"

@interface AntiBlackBoxFirstViewController ()

@end

@implementation AntiBlackBoxFirstViewController
@synthesize myTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myTableView.dataSource = self;
    streamTitleArray = [NSMutableArray arrayWithObjects:@"台灣-[退回服貿*捍衛民主]佔領立法院實況",@"立院場內 + 文字轉播",@"議場內 樓下(五六)",@"反黑箱服貿之夜-濟南路",@"g0v 機動直播組 前往行政院",@"蘋果直播",@"反服貿黑箱 進攻行政院", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated{
    [self.myTableView deselectRowAtIndexPath:[self.myTableView indexPathForSelectedRow] animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return streamTitleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = indexPath.row;
    UITableViewCell * cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MY_CELL_ID"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MY_CELL_ID"];
    }
    
    cell.textLabel.text = [streamTitleArray objectAtIndex:row];

    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //cell.accessoryView = button;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailViewController *detailViewController = [[DetailViewController alloc]init];
    detailViewController.arrayIndex = indexPath.row;
    //Aindex = indexPath.row;
    [self.navigationController pushViewController:detailViewController animated:NO];
}

-(void)performExpand:(id)sender{
    
    [self performSegueWithIdentifier:@"mySegue" sender:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UIViewController *viewController = segue.destinationViewController;
    DetailViewController *detailViewController = (DetailViewController *)viewController;
    detailViewController.arrayIndex = Aindex;
    if([[segue identifier] isEqualToString:@"mySegue"]){
        [segue destinationViewController];
    }
        
}

-(void) tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    
}
//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    NSString * title=@"現場直播";
//
//    return title;
//}
@end
