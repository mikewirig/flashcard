//
//  ViewController.h
//  flashcard
//
//  Created by Michael Wirig on 2/23/14.
//  Copyright (c) 2014 Michael Wirig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UIImageView *cardView;
    IBOutlet UILabel *answer;
    
}
@property NSUInteger currentIndex;
@property (strong, nonatomic) NSArray *animals;
@property (strong, nonatomic) NSArray *animalNames;
@property (strong, nonatomic) NSArray *colors;
@property (strong, nonatomic) NSArray *colorNames;
@property (strong, nonatomic) NSArray *items;
@property (strong, nonatomic) NSArray *itemNames;
@property (nonatomic) UISwipeGestureRecognizer *swipeRight;
@property (nonatomic) UISwipeGestureRecognizer *swipeLeft;
@property (nonatomic) UITapGestureRecognizer *touch;


@property (strong, nonatomic) NSArray *images;
@property (strong, nonatomic) NSArray *names;


-(IBAction)next:(id)sender;
-(IBAction)previous:(id)sender;
-(IBAction)answer:(id)sender;



@end

