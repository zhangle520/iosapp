#import<substrate.h>
#import<UIKit/UIKit.h>
@interface SpringBoard
- (void)applicationDidFinishLaunching:(id)application;
@end

static IMP originalFinishLaunching;
void newFinishLaunching (SpringBoard* self, SEL _cmd, id application) {  
 
  originalFinishLaunching(self, _cmd, application);    
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello, Tweak" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
  [alert show];
}

/*MSHook(double, sqrt, double arg1){  
   printf("This funcation was hooked by zhangle %f ", arg1);          
  
  return _sqrt(arg1);                              

}
*/
%ctor{
%init;
	MSHookMessageEx(objc_getClass("SpringBoard"),@selector(applicationDidFinishLaunching:),(IMP)newFinishLaunching,(IMP *)&originalFinishLaunching);
	//MSHookFunction(sqrt, MSHake(sqrt));
}
