//
//  ViewController.h
//  LightViewEFC
//
//  Created by eduardo fulgencio on 6/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Handler;
@class Storage;

@interface ViewController : UIViewController 


- (id)initWithHandler:(Handler *)handler storage:(Storage *)storage;

@end

