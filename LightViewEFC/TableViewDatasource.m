//
//  TableViewDatasource.m
//  LightViewEFC
//
//  Created by eduardo fulgencio on 7/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import "TableViewDatasource.h"
#import "TableViewCell.h"
#import "ViewMain.h"


static NSString * const CellIdentifier = @"CellIdentifier";

@implementation TableViewDatasource

@synthesize viewModel;

- (void)setUpTableView:(UITableView *)tableView
{
    [tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:CellIdentifier];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // En el caso de que el viewModel contenga un array
    // aquí se indicaría return self.viewModel.arrayDatosTable.count
    // para mostrar una colección
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textoInputField = self.viewModel.numCadena;
    
    return cell;
}

@end
