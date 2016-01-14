//
//  Storage.m
//  LightViewEFC
//
//  Created by eduardo fulgencio on 7/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import "Storage.h"

@implementation Storage


static NSString * const PersistenciaKey = @"persistencia";

- (NSString *)getNombre
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    return [defaults objectForKey:PersistenciaKey];
}

- (void)setNombre:(NSString *)nombre
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:nombre forKey:PersistenciaKey];
    
    [defaults synchronize];
}


@end
