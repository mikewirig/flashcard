//
//  CategoriesViewController.m
//  flashcard
//
//  Created by Michael Wirig on 2/23/14.
//  Copyright (c) 2014 Michael Wirig. All rights reserved.
//

#import "CategoriesViewController.h"
#import "ViewController.h"

@interface CategoriesViewController ()

@end

@implementation CategoriesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.animals = [[NSArray alloc] initWithObjects:
                    [UIImage imageNamed:@"bird.png"],
                    [UIImage imageNamed:@"cat.png"],
                    [UIImage imageNamed:@"chicken.png"],
                    [UIImage imageNamed:@"cow.png"],
                    [UIImage imageNamed:@"dog.png"],
                    [UIImage imageNamed:@"Graf.png"],
                    [UIImage imageNamed:@"horse.png"],
                    [UIImage imageNamed:@"lion.png"],
                    [UIImage imageNamed:@"pig.png"],
                    [UIImage imageNamed:@"snake.png"],
                    [UIImage imageNamed:@"zebra.png"],
                    nil];
    self.animalNames = [[NSArray alloc] initWithObjects:
                        [NSString stringWithFormat:@"Bird"],
                        [NSString stringWithFormat:@"Cat"],
                        [NSString stringWithFormat:@"Chicken"],
                        [NSString stringWithFormat:@"Cow"],
                        [NSString stringWithFormat:@"Dog"],
                        [NSString stringWithFormat:@"Giraffe"],
                        [NSString stringWithFormat:@"Horse"],
                        [NSString stringWithFormat:@"Lion"],
                        [NSString stringWithFormat:@"Pig"],
                        [NSString stringWithFormat:@"Snake"],
                        [NSString stringWithFormat:@"Zebra"],
                        nil];
    
    
    self.items = [[NSArray alloc] initWithObjects:
                  [UIImage imageNamed:@"bed.jpg"],
                  [UIImage imageNamed:@"broom.jpg"],
                  [UIImage imageNamed:@"chair.jpg"],
                  [UIImage imageNamed:@"couch.jpg"],
                  [UIImage imageNamed:@"fork.jpg"],
                  [UIImage imageNamed:@"toaster.jpg"],
                  [UIImage imageNamed:@"tv.jpg"],
                  nil];
    
    self.itemNames = [[NSArray alloc] initWithObjects:
                      [NSString stringWithFormat:@"Bed"],
                      [NSString stringWithFormat:@"Broom"],
                      [NSString stringWithFormat:@"Chair"],
                      [NSString stringWithFormat:@"Couch"],
                      [NSString stringWithFormat:@"Fork"],
                      [NSString stringWithFormat:@"Toaster"],
                      [NSString stringWithFormat:@"T.V."],
                      nil];
    
    self.colors = [[NSArray alloc] initWithObjects:
                   [UIImage imageNamed:@"blue.jpg"],
                   [UIImage imageNamed:@"brown.jpg"],
                   [UIImage imageNamed:@"green.jpg"],
                   [UIImage imageNamed:@"orange.jpg"],
                   [UIImage imageNamed:@"pink.jpg"],
                   [UIImage imageNamed:@"purple.jpg"],
                   [UIImage imageNamed:@"red.jpg"],
                   [UIImage imageNamed:@"yellow.jpg"],
                   nil];
    
    self.colorNames = [[NSArray alloc] initWithObjects:
                       [NSString stringWithFormat:@"Blue"],
                       [NSString stringWithFormat:@"Brown"],
                       [NSString stringWithFormat:@"Green"],
                       [NSString stringWithFormat:@"Orange"],
                       [NSString stringWithFormat:@"Pink"],
                       [NSString stringWithFormat:@"Purple"],
                       [NSString stringWithFormat:@"Red"],
                       [NSString stringWithFormat:@"Yellow"],
                       nil];
    
    self.addition = [[NSArray alloc] initWithObjects:
                   [UIImage imageNamed:@"2+4.png"],
                   [UIImage imageNamed:@"2+6.png"],
                   [UIImage imageNamed:@"3+4.png"],
                   [UIImage imageNamed:@"3+5.png"],
                   nil];

    self.sums = [[NSArray alloc] initWithObjects:
                       [NSString stringWithFormat:@"6"],
                       [NSString stringWithFormat:@"8"],
                       [NSString stringWithFormat:@"7"],
                       [NSString stringWithFormat:@"8"],
                       nil];
    
    
//    self.math = [[NSDictionary alloc] initWithObjectsAndKeys:
//                          @"2+4.png", @"6", @"2+6.png", @"8", @"3+4.png", @"7", @"3+5.png", @"8", nil];
}


-(void)animalHeader:(id)sender{
    
    ViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"FlashCardView"];
    vc.images = self.animals;
    vc.names = self.animalNames;
 
    
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)colorHeader:(id)sender{
    
    ViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"FlashCardView"];
    vc.images = self.colors;
    vc.names = self.colorNames;
    
    
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)householdItemsHeader:(id)sender{
    
    ViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"FlashCardView"];
    vc.images = self.items;
    vc.names = self.itemNames;
    
        [self.navigationController pushViewController:vc animated:YES];
 
}

-(void)mathHeader:(id)sender{
    
    ViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"FlashCardView"];
    vc.images = self.addition;
    vc.names = self.sums;
    
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
