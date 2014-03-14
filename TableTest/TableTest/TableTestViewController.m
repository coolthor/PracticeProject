//
//  TableTestViewController.m
//  TableTest
//
//  Created by Thor Lin on 13/7/23.
//  Copyright (c) 2013年 Thor Lin. All rights reserved.
//

#import "TableTestViewController.h"

@interface TableTestViewController ()

@end

@implementation TableTestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger row = indexPath.row;
    NSUInteger section = indexPath.section;
    
    
    //UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MY_CELL_ID"];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MY_CELL_ID"];
    
    if (section == 1 && row ==0){
        cell = [tableView dequeueReusableCellWithIdentifier:@"MY_TEXT_CELL_ID"];
    }else{
        cell = [tableView dequeueReusableCellWithIdentifier:@"MY_CELL_ID"];
    }
    
    if(cell == nil){
        if (section ==1 &&row==0) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MY_TEXT_CELL_ID"];
            //creat a text field
            UITextField * textField = [[UITextField alloc]initWithFrame:CGRectMake(70, 8, 150, 30)];
            textField.borderStyle = UITextBorderStyleRoundedRect;
            [cell addSubview:textField];
            [textField addTarget:self action:@selector(textFieldDone:) forControlEvents:UIControlEventEditingDidEndOnExit];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }else{
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MY_CELL_ID"];
            //        NSLog(@"create row %d cell %p",row,cell);
        }

    }
    
    switch (indexPath.section) {
        case 0:
            switch (row) {
                case 0:
                    cell.textLabel.text = @"Name:Pinpin";
                    break;
                case 1:
                    cell.imageView.image = [UIImage imageNamed:@"pinpin_sleep.png"];
                    break;
                case 2:
                    cell.textLabel.text = @"Age:4";
                    break;
            }
            break;
        case 1:
            switch (row) {
                case 0:
                    cell.textLabel.text = @"飼主：";
                    break;
                case 1:
                    cell.textLabel.text =@"職業：貓奴";
            }
            break;
        default:
            break;
    }
        return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString * title = [NSString stringWithFormat:@"你選的section為 %d row %d",indexPath.section,indexPath.row];
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:title message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

-(void)textFieldDone:(id)sender{
    [sender resignFirstResponder];
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    NSString *title =@"";
    switch (section) {
        case 0:
            title =@"平平簡介end";
            break;
        case 1:
            title =@"飼主簡介end";
            break;
        default:
            break;
    }
    return title;
}
- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *title =@"";
    switch (section) {
        case 0:
            title =@"平平簡介";
            break;
        case 1:
            title =@"飼主簡介";
            break;
        default:
            break;
    }
    return title;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger rowcount =0;
    switch (section) {
        case 0:
            rowcount =3;
            break;
        case 1:
            rowcount =2;
            break;
        default:
            break;
    }
    return rowcount;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
