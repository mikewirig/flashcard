//
//  ViewController.m
//  flashcard
//
//  Created by Michael Wirig on 2/23/14.
//  Copyright (c) 2014 Michael Wirig. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


-(void)next:(id)sender{
    
    answer.text = nil;

    if(self.currentIndex == self.images.count - 1){
        self.currentIndex = 0;
    }
    else {
        self.currentIndex = (self.currentIndex + 1);

    }
    
    [cardView setImage:[self.images objectAtIndex:self.currentIndex]];
    
}


-(void)previous:(id)sender{
    
    answer.text = nil;

    if(self.currentIndex == 0){
        self.currentIndex = self.images.count - 1;
    }
    else {
       self.currentIndex = (self.currentIndex - 1);
       
    }
    
    [cardView setImage:[self.images objectAtIndex:self.currentIndex]];
}

-(void)answer:(id)sender{
    if(answer.text == nil)
    {  answer.text = self.names[self.currentIndex];
    }else{
        answer.text = nil;}
    }

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.currentIndex = 0;
    [cardView setImage:[self.images objectAtIndex:self.currentIndex]];
    
    self.touch = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(answer:)];
    [self.view addGestureRecognizer:self.touch];
    self.swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next:)];
    self.swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:self.swipeLeft];
    self.swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(previous:)];
    self.swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:self.swipeRight];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
