//
//  TableViewDatasource.h
//  LightViewEFC
//
//  Created by eduardo fulgencio on 7/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ViewModel;

@interface TableViewDatasource : NSObject<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) ViewModel *viewModel;


- (void)setUpTableView:(UITableView *)tableView;


@end
