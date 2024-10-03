//
//  ViewController.m
//  mixed_tech
//
//  Created by Arthur Nsereko Kahwa on 10/3/24.
//

#import "ViewController.h"
#import "mixed_tech-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // The SwiftUI view wrapper
    SwiftUIWrapper *swiftUIWrapper = [[SwiftUIWrapper alloc] init];
    
    // UIHostingController with view controller
    UIViewController *swiftUIViewController = [swiftUIWrapper createSwiftUIView];
    
    // Swift UI view inside view controller
    [self addChildViewController:swiftUIViewController];
    swiftUIViewController.view.frame = self.view.bounds;
    
    [self.view addSubview:swiftUIViewController.view];
    
    [swiftUIViewController didMoveToParentViewController:self];
}


@end
