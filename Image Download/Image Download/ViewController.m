//
//  ViewController.m
//  Image Download
//
//  Created by Maksym Savisko on 1/31/16.
//  Copyright © 2016 Maksym Savisko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray * imageData = @[@"http://www.etoday.ru/assets/2015/10/16/don-gutoski-wpoty.jpg",
                       @"http://www.etoday.ru/assets/2015/10/16/jonathan-jagot.jpg",
                       @"http://www.etoday.ru/assets/2015/10/16/04WildlifePhotographer2015.ngsversion.1444917604294.adapt.885.1.jpg",
                       @"http://www.etoday.ru/assets/2015/10/16/ondrej-pelanek-young-wildlife-poy.jpg",
                       @"http://www.etoday.ru/assets/2015/10/16/edwin-giesbers-amphibians-and-reptiles.jpg",
                       @"http://www.etoday.ru/assets/2015/10/16/michael-aw-underwater.jpg",
                       @"http://www.etoday.ru/assets/2015/10/16/amir-ben-dov-birds.jpg",
                       @"http://www.etoday.ru/assets/2015/10/16/juan-tapia-impressions.jpg",
                       @"http://www.etoday.ru/assets/2015/10/16/pere-soler-from-the-skies.jpg",
                       @"http://www.etoday.ru/assets/2015/10/16/richard-peters-urban.jpg"];
    
    
    UIImage * tempImage = [self getImageFromURL:[imageData objectAtIndex:0]];
    UIImageView *imageview = [[UIImageView alloc]
                              initWithFrame:CGRectMake(10, 10, 300, 400)];
    [imageview setImage:tempImage];
    [imageview setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imageview];
    
  
}

-(UIImage *) getImageFromURL:(NSString *)fileURL {
    UIImage * result;
    
    NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:fileURL]];
    result = [UIImage imageWithData:data];
    
    return result;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
