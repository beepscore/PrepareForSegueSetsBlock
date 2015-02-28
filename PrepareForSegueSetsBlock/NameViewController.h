//
//  NameViewController.h
//  PrepareForSegueSetsBlock
//
//  Created by Steve Baker on 2/27/15.
//  Copyright (c) 2015 Beepscore LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NameViewController : UIViewController

// typedef takes NSString* argument doesn't return anything
typedef void (^BSNameBlock)(NSString*);
// property is a block of executable code
@property (copy) BSNameBlock nameBlock;

@end
