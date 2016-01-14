//
//  ViewMain.h
//  LightViewEFC
//
//  Created by eduardo fulgencio on 6/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewModel;
@protocol ViewDelegate;

@interface ViewMain : UIView

@property (strong, nonatomic) ViewModel *viewModel;
@property (weak, nonatomic) id<ViewDelegate> viewDelegate;


@end

@protocol ViewDelegate <NSObject>

- (void)didSelectedOptionAtView:(ViewMain *)viewMain;

@end


@interface ViewModel : NSObject

@property (strong, nonatomic) NSString *numCadena;
@property (readwrite) NSUInteger opcionSegmento;


@end