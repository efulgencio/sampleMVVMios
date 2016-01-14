//
//  ViewController.m
//  LightViewEFC
//
//  Created by eduardo fulgencio on 6/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import "ViewController.h"
#import "ViewMain.h"
#import "Handler.h"
#import "Storage.h"
#import "Opcion.h"


@interface ViewController () <ViewDelegate>

@property (readonly) ViewMain *viewMain;
@property (strong, readonly, nonatomic) Storage *storage;
@property (strong, readonly, nonatomic) Handler *handler;

@end

@implementation ViewController


- (id)initWithHandler:(Handler *)handler storage:(Storage *)storage
{
    self = [self initWithNibName:@"ViewMain" bundle:nil];
    if (self) {
        _handler = handler;
        _storage = storage;
    }
    
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Valor inicial
    ViewModel *viewModel = [[ViewModel alloc] init];
    viewModel.numCadena = @"100"; // valor inicial
    
    self.viewMain.viewModel = viewModel;
    self.viewMain.viewDelegate = self;
    
}

// Cuando solicite viewMain retorno el view del viewController
// que de tipo ViewMain
- (ViewMain *)viewMain
{
    return (ViewMain *)self.view;
}

- (void)didSelectedOptionAtView:(ViewMain *)mainView
{
    [self doProcesar];
}

- (void) doProcesar
{
    
    __weak typeof(self) wSelf = self;
    
    [self.handler obtenerDatos:self.viewMain.viewModel.opcionSegmento
                     succeedCompletion:^(Opcion *opcion) {
                         typeof(self) sSelf = wSelf;
                         [sSelf didSucceedLoginWithUser:opcion];
                     }
                        failCompletion:^(DatosError error) {
                            typeof(self) sSelf = wSelf;
                            [sSelf didFailLoginWithError:error];
                        }];
    
}

- (void)didSucceedLoginWithUser:(Opcion *)opcion
{
    ViewModel *viewModel = [[ViewModel alloc] init];
    viewModel.numCadena = opcion.texto;
    self.viewMain.viewModel = viewModel;
}

- (void)didFailLoginWithError:(DatosError) error
{
  // gestionar
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
