//
//  MoviesViewController.h
//  RottenTomatoes
//
//  Created by Sagar Patil on 6/9/14.
//  Copyright (c) 2014 Sagar Patil. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum movieTypes {
    DVD,
    BOX_OFFICE
} MovieType;

@interface MoviesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *movies;
@property (nonatomic, assign) MovieType movieType;

- (id)initWithMovieType:(MovieType)movieType;

@end
