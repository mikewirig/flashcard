//
//  CategoriesViewController.h
//  flashcard
//
//  Created by Michael Wirig on 2/23/14.
//  Copyright (c) 2014 Michael Wirig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoriesViewController : UIViewController



-(IBAction)animalHeader:(id)sender;
-(IBAction)colorHeader:(id)sender;
-(IBAction)householdItemsHeader:(id)sender;
-(IBAction)mathHeader:(id)sender;

@property (strong, nonatomic) NSArray *animals;
@property (strong, nonatomic) NSArray *animalNames;
@property (strong, nonatomic) NSArray *colors;
@property (strong, nonatomic) NSArray *colorNames;
@property (strong, nonatomic) NSArray *items;
@property (strong, nonatomic) NSArray *itemNames;
@property (strong, nonatomic) NSArray *addition;
@property (strong, nonatomic) NSArray *sums;
@property (strong, nonatomic) NSDictionary *math;

@property (strong, nonatomic) NSArray *images;
@property (strong, nonatomic) NSArray *names;

@end
