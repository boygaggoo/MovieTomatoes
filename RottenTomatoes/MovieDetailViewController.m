//
//  MovieDetailViewController.m
//  RottenTomatoes
//
//  Created by Sagar Patil on 6/9/14.
//  Copyright (c) 2014 Sagar Patil. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *largePosterView;
@property (weak, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UILabel *castLabel;
@property (weak, nonatomic) IBOutlet UITextView *synopsisText;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation MovieDetailViewController

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
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title = self.movie.title;

    [self.largePosterView setImageWithURL:[NSURL URLWithString:self.movie.imageOriginalLink]];
    self.movieTitleLabel.text = self.movie.title;
  //  self.synopsisLabel.text = self.movie.synopsis;
    self.synopsisText.text =self.movie.synopsis;
    self.castLabel.text = self.movie.cast;
    self.scrollView.contentSize =CGSizeMake(320, 600);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
