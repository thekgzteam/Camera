//
//  ViewController.m
//  trial
//
//  Created by Edil Ashimov on 8/13/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *take;
@property (weak, nonatomic) IBOutlet UIButton *library;
@property UIImage *image;
@property UIImagePickerController *picker2;
@property UIImagePickerController *picker;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)TakePhoto {
    self.picker =[[UIImagePickerController alloc] init];
    self.picker.delegate = self;
    [self.picker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:self.
     picker animated:YES completion:NULL];

}

- (IBAction)ChooseExisting {
    _picker2 =[[UIImagePickerController alloc] init];
    self.picker2.delegate = self;
    [self.picker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:self.picker2 animated:YES completion:NULL];
}
-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:NULL];

}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    self.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self.imageView setImage:self.image];
    [self dismissViewControllerAnimated:YES completion:NULL];

}

@end
