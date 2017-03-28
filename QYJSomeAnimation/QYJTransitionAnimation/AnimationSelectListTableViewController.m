//
//  AnimationSelectListTableViewController.m
//  QYJSomeAnimation
//
//  Created by Avalanching on 2017/3/28.
//  Copyright © 2017年 Avalanching. All rights reserved.
//

#import "AnimationSelectListTableViewController.h"

@interface AnimationSelectListTableViewController () <UINavigationControllerDelegate, UIViewControllerTransitioningDelegate>

@end

@implementation AnimationSelectListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *const identifier = @"AnimationCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"spread Transition Animation";
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"rotate Transition Animation";
    } else if (indexPath.row == 2) {
        cell.textLabel.text = @" Transition Animation";
    } else if (indexPath.row == 3) {
        cell.textLabel.text = @"spread Transition Animation";
    } else if (indexPath.row == 4) {
        cell.textLabel.text = @"spread Transition Animation";
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
}


@end
