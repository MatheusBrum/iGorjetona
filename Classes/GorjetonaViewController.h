//
//  GorjetonaViewController.h
//  Gorjetona
//
//  Created by Matheus Brum on 16/10/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GorjetonaViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate> {
	IBOutlet UITextField * contaTotal;
	IBOutlet UILabel * labelGorjeta;
	IBOutlet UIPickerView * pickerPorcentagem;
	NSMutableArray * pickerViewArray;
	float porcentagemSelecionada;
}
- (IBAction)voltar;
-(IBAction)sobre;
@end
