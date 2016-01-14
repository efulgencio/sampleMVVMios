//
//  Handler.m
//  LightViewEFC
//
//  Created by eduardo fulgencio on 7/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import "Handler.h"

#import "Opcion.h"

@implementation Handler


- (void)obtenerDatos:(NSUInteger)tipo
      succeedCompletion:(SucceedCompletion)succeedCompletion
         failCompletion:(FailCompletion)failCompletion
{

    switch (tipo) {
        case NumCien:
            [self succeedWithCompletion:succeedCompletion cadena:@"100"];
            break;
        case NumDoscientos:
            [self succeedWithCompletion:succeedCompletion cadena:@"200"];
            break;
        case NumTrescientos:
            [self succeedWithCompletion:succeedCompletion cadena:@"300"];
            break;
        case NumCuatrocientos:
            [self succeedWithCompletion:succeedCompletion cadena:@"400"];
            break;
        default:
            [self failObteniendoDatosWithCompletion:failCompletion];
            break;
    }
}

- (void) succeedWithCompletion:(SucceedCompletion)succeedCompletion cadena:(NSString *)cadena
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        Opcion *opcion = [[Opcion alloc] initWithTexto:cadena];
        
        succeedCompletion(opcion);
    });
}

- (void) failWithCompletion:(FailCompletion)failCompletion
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        failCompletion(ErrorServerUnreachable);
    });
}

- (void) failObteniendoDatosWithCompletion:(FailCompletion)failCompletion
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        failCompletion(ErrorObteniendoDatos);
    });
}

@end
