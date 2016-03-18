#import <Foundation/Foundation.h>
int main(void) {

  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  NSInteger offset = 0;

  // All data read
  NSString *readdata = [[[NSString alloc] 
    initWithData:[[NSFileHandle fileHandleWithStandardInput]
    readDataToEndOfFile] encoding:NSUTF8StringEncoding] autorelease];
  // Separate line
  NSArray *lines = [readdata componentsSeparatedByString:@"\n"];

  NSArray *tmp = [[lines objectAtIndex:offset++] componentsSeparatedByString:@" "];
  NSString *T = [tmp objectAtIndex:0];
  NSInteger U = [[tmp objectAtIndex:1] integerValue]; 

  NSArray *tmpXA = [[lines objectAtIndex:offset++] componentsSeparatedByString:@" "];
  NSMutableArray *XA = [NSMutableArray array];
  for (int i=0; i<11; i++) {
    int n = [[tmpXA objectAtIndex:i] integerValue]; 
    [XA addObject:@(n)]; 
  }

  NSArray *tmpXB = [[lines objectAtIndex:offset++] componentsSeparatedByString:@" "];
  NSMutableArray *XB = [NSMutableArray array];
  for (int i=0; i<11; i++) {
    int n = [[tmpXB objectAtIndex:i] integerValue]; 
    [XB addObject:@(n)]; 
  }
  
  if ([T isEqualToString:@"A"]) {
    int passer = [[XA objectAtIndex:U-1] integerValue];
    XB = (NSMutableArray*)[XB sortedArrayUsingSelector:@selector(compare:)];
    int b = [[XB objectAtIndex:9] integerValue];
    BOOL flg = NO;
    int num = 1;

    for (int i=0; i<11; i++) {
      int a = [[XA objectAtIndex:i] integerValue];
      if (a>=55 && a>b && a>passer) {
        NSString *str = [NSString stringWithFormat:@"%d\n",num];
        [(NSFileHandle*)[NSFileHandle fileHandleWithStandardOutput]
          writeData: [str dataUsingEncoding: NSUTF8StringEncoding]];
        flg = YES;
      }
      num += 1;
    }

    if (flg == NO) {
      NSString *str = @"None\n";
      [(NSFileHandle*)[NSFileHandle fileHandleWithStandardOutput]
        writeData: [str dataUsingEncoding: NSUTF8StringEncoding]];
    }
  } else {
    int passer = [[XB objectAtIndex:U-1] integerValue];
    XA = (NSMutableArray*)[XA sortedArrayUsingSelector:@selector(compare:)];
    int a = [[XA objectAtIndex:1] integerValue];
    BOOL flg = NO;
    int num = 1;

    for (int i=0; i<11; i++) {
      int b = [[XB objectAtIndex:i] integerValue];
      if (b<=55 && b<a && b<passer) {
        NSString *str = [NSString stringWithFormat:@"%d\n",num];
        [(NSFileHandle*)[NSFileHandle fileHandleWithStandardOutput]
          writeData: [str dataUsingEncoding: NSUTF8StringEncoding]];
        flg = YES;
      }
      num += 1;
    }

    if (flg == NO) {
      NSString *str = @"None\n";
      [(NSFileHandle*)[NSFileHandle fileHandleWithStandardOutput]
        writeData: [str dataUsingEncoding: NSUTF8StringEncoding]];
    }
  }

  [pool release];
  return 0;
}
