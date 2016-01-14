//
//  TableViewCell.m
//  LightViewEFC
//
//  Created by eduardo fulgencio on 7/1/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TableViewCell

- (void)awakeFromNib {
    // inicialización
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];

}

- (void)setUpCell
{
    self.textField.text = @"";
}

- (NSString *)textoInputField
{
    return self.textField.text;
}

- (void)setTextoInputField:(NSString *)textoInputField
{
    self.textField.text = textoInputField;
}


@end
