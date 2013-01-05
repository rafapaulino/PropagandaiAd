//
//  ViewController.m
//  PropagandaiAd
//
//  Created by Rafael Brigagão Paulino on 16/10/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize meuBanner;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMeuBanner:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

//emtodo acionado quando o aparelho sofre rotacao com a intencao de nos perguntar se desejamos que a view rotacione junto
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    //verificar para qual orientacao estamos indo
    if (UIInterfaceOrientationIsPortrait(interfaceOrientation))
    {
        meuBanner.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
    }
    else
    {
        meuBanner.currentContentSizeIdentifier = ADBannerContentSizeIdentifierLandscape;
    }
    
    return YES;
}


//metodo acionado quando a propaganda é carregada no banner
- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
   //aqui fazemos o banner aparecer
    NSLog(@"Carregou");
    meuBanner.hidden = NO;
}


//metodo acionado quando falha o carregamento da propaganda
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    NSLog(@"Falhou");
    meuBanner.hidden = YES;
}

@end
