//
//  ViewMain.m
//  LightViewEFC
//
//  Created by eduardo fulgencio on 6/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import "ViewMain.h"
#import "TableViewDatasource.h"

static NSString * const NavigationBarTitle = @"Titulo Navigation";

@interface ViewMain() <UINavigationBarDelegate, UIAlertViewDelegate>

@property (strong, nonatomic) UINavigationBar *navigationBar;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (strong, nonatomic) TableViewDatasource *fieldsDataSource;

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewMain 


- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setUp];
}

- (void)setUp
{
    [self setUpNavigationBar];
    [self setUpTableView];
}

- (void)setUpNavigationBar
{
    self.navigationBar = [[UINavigationBar alloc] init];
    [self.navigationBar setFrame:CGRectMake(0, 20, self.frame.size.width, 44)];
    [self.navigationBar setBarTintColor:[UIColor cyanColor]];
    [self.navigationBar setDelegate:self];
    
    UINavigationItem *titleItem = [[UINavigationItem alloc] init];
    titleItem.title = NavigationBarTitle;
    self.navigationBar.items = @[titleItem];
    
    [self addSubview:self.navigationBar];
    
}


- (void)setUpTableView
{
    self.fieldsDataSource = [[TableViewDatasource alloc] init];
    [self.fieldsDataSource setUpTableView:self.tableView];
    
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.delegate = self.fieldsDataSource;
    self.tableView.dataSource = self.fieldsDataSource;
}


-(void) setViewModel:(ViewModel *)viewModel
{

     _viewModel = viewModel;
     self.fieldsDataSource.viewModel = viewModel;
     [self.tableView reloadData];
    
}

- (IBAction)changedSegmented:(id)sender {
    self.viewModel.opcionSegmento = self.segmentedControl.selectedSegmentIndex;
    [self.viewDelegate didSelectedOptionAtView:self];
}


@end

// en el fichero de .h define la clase y aquí la implementa
@implementation ViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _numCadena = @"";
    }
    return self;
}

@end


