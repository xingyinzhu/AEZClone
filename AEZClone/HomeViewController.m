//
//  FirstViewController.m
//  AEZClone
//
//  Created by Xingyin Zhu on 13-1-19.
//  Copyright (c) 2013年 Xingyin Zhu. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeBtnCell.h"
#import "WheelConfigureViewController.h"

@interface HomeViewController ()

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic, weak) IBOutlet UIPageControl *pageControl;

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (void)configureCell:(UITableViewCell *)cell  :(NSIndexPath *) indexPath
{
    HomeBtnCell *homeBtnCell = (HomeBtnCell *)cell;
    //Location *location = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    if (indexPath.row == 0)
    {
        homeBtnCell.firstLabel.text = @"WHEEL CONFIGURATOR";
        //homeBtnCell.secondLabel.text = @"CONFIGURATOR";
    }
    else if (indexPath.row == 1)
    {
        homeBtnCell.firstLabel.text = @"QR-CODE SCANNER";
        //homeBtnCell.secondLabel.text = @"SCANNER";
    }
    /*
    UIImage *image = nil;
    if ([location hasPhoto]) {
        image = [location photoImage];
        if (image != nil) {
            image = [image resizedImageWithBounds:CGSizeMake(66, 66)];
        }
    }
    locationCell.imageView.image = image;
    */
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"HomeBtn"];
    [self configureCell:cell :indexPath];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    //UINavigationController *navigationController = segue.destinationViewController;
    //WheelConfigureViewController *controller = (WheelConfigureViewController *)navigationController.topViewController;
    
    if (indexPath.row == 1)
    {
        
    }
    
}

#pragma mark - ios rotate 6.0 api
- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}



@end
