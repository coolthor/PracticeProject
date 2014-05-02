//
//  JsonParseViewController.m
//  JsonParsePractice
//
//  Created by Thor Lin on 2014/4/15.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

#import "JsonParseViewController.h"

@interface JsonParseViewController ()

@end

@implementation JsonParseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [UIColor colorWithRed:0.156 green:1.000 blue:0.030 alpha:1.000];
    
    myTableView.dataSource = self;
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [NSURL URLWithString:@"http://odata.tn.edu.tw/ebookApi/api/content/?ResourceTypeID=2&AreaID=1&Keyword=X&&PageSize=40&PageIndex=0"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    array = [NSJSONSerialization JSONObjectWithData:data
                                 options:NSJSONReadingAllowFragments
                                 error:nil];
  
    NSError *error;
    dic = [NSJSONSerialization JSONObjectWithData:data
                               options:NSJSONReadingMutableLeaves
                               error:&error];

    //NSDictionary * subdic = dic[@"RECORDS"];
    
    //NSMutableArray *subarray = [NSJSONSerialization JSONObjectWithData:dic[@"RECORDS"] options:NSJSONReadingAllowFragments error:&error];

    if(error != nil){
        NSLog(@"%@",[error localizedDescription]);
    }
    else{
        cellTextarray = [[NSMutableArray alloc]init];
        for (NSDictionary * d in dic) {
            NSLog(@"%@",d[@"ResourceTypeName"]);
            //NSString *str = [[NSString alloc]initWithFormat:@"%@",d[@"資料集名稱"]];
//            NSLog(@"%@",str);
//            [cellTextarray addObject:str];
        }
//        cellTextarray = [[NSMutableArray alloc]init];
//        for (NSDictionary * sdic in subDic) {
//            NSString *str = [[NSString alloc]initWithFormat:@"%@",sdic[@"資料集名稱"]];
//            [cellTextarray addObject:str];
//            NSLog(@"%@",str);
//        }
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = indexPath.row;
    UITableViewCell * cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MY_CELL_ID"];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MY_CELL_ID"];
    }
    cell.textLabel.text = [cellTextarray objectAtIndex:row];
    //cell.textLabel.text = [dic indexOfAccessibilityElement:<#(id)#>];
    
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //cell.accessoryView = button;
    
    return cell;

}
//-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 1;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [dic[@"RECORDS"] count];// array.count;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
