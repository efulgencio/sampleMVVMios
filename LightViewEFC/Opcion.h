//
//  Opcion.h
//  LightViewEFC
//
//  Created by eduardo fulgencio on 7/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Opcion : NSObject

- (id)initWithTexto:(NSString *)texto;

@property (strong, nonatomic, readonly) NSString *texto;

@end
