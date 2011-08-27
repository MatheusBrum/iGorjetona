//
//  GorjetonaViewController.m
//  Gorjetona
//
//  Created by Matheus Brum on 16/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "GorjetonaViewController.h"

@implementation GorjetonaViewController
- (void)viewDidLoad { 
	[super viewDidLoad]; 
	[labelGorjeta setText:@"Digite o valor e escolha a porcentagem abaixo"];
	contaTotal.delegate = self;
	//cria as 20 linhas no UIPickerView
	pickerViewArray = [[NSMutableArray alloc] init];
	for(int i = 1; i <= 20; i ++) { 
		NSString *stringLinha = [NSString stringWithFormat:@"%d%%", i]; // string que mostrará o texto no UIPickerView
		[pickerViewArray addObject:stringLinha]; // coloca as strings no array
	}
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {//numero de "rodas" no picker
	return 1; 
}
- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component { //numero de linhas no picker
	return [pickerViewArray count];
}
- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component { //textos a serem mostrados em cada linha
	return [pickerViewArray objectAtIndex:row]; 
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component { // quando a linha é selecionada
	porcentagemSelecionada = row + 1; 
	porcentagemSelecionada = porcentagemSelecionada / 100;
	float gorjetaTotal = [contaTotal.text floatValue] * porcentagemSelecionada;
	labelGorjeta.text = [NSString stringWithFormat:@"Gorjeta: $%.2f", gorjetaTotal]; // Set the tipAmount labels text to the tipTotal amount.
}
- (IBAction)voltar{
	[contaTotal resignFirstResponder];
}
-(IBAction)sobre {
	UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Apple Maníacos" message:@"Programa feito por Matheus Brum (applemaniacos.com)" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alerta show];
	[alerta release];
}
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
