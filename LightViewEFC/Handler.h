//
//  Handler.h
//  LightViewEFC
//
//  Created by eduardo fulgencio on 7/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Opcion;

typedef enum : NSUInteger {
    ErrorObteniendoDatos,
    ErrorServerUnreachable,
} DatosError;


typedef enum : NSUInteger {
    NumCien,
    NumDoscientos,
    NumTrescientos,
    NumCuatrocientos
} NumeroSeleccionado;

typedef void(^SucceedCompletion)(Opcion *logedUser);
typedef void(^FailCompletion)(DatosError error);

@interface Handler : NSObject

- (void)obtenerDatos:(NSUInteger)tipo
      succeedCompletion:(SucceedCompletion)succeedCompletion
         failCompletion:(FailCompletion)failCompletion;

@end
