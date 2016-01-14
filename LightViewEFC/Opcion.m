//
//  Opcion.m
//  LightViewEFC
//
//  Created by eduardo fulgencio on 7/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import "Opcion.h"

@implementation Opcion

- (instancetype)initWithTexto:(NSString *)texto
{
    if (self = [super init])
    {
        _texto = texto;
    }
    
    return self;
}

@end
