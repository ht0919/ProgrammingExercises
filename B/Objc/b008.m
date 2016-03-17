#import <Foundation/Foundation.h>
int main(void) {

  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  NSInteger offset = 0;
  NSInteger max = 0;
  NSMutableArray *incom = [NSMutableArray array];
  NSString *tmp_s; 

  // All data read
  NSString *readdata = [[[NSString alloc] 
    initWithData:[[NSFileHandle fileHandleWithStandardInput]
    readDataToEndOfFile] encoding:NSUTF8StringEncoding] autorelease];
  // Separate line
  NSArray *lines = [readdata componentsSeparatedByString:@"\n"];

  NSArray *tmp = [[lines objectAtIndex:offset++] componentsSeparatedByString:@" "];
  NSInteger N = [[tmp objectAtIndex:0] integerValue]; 
  NSInteger M = [[tmp objectAtIndex:1] integerValue]; 

  if (M>0 && N>0) {
    for (NSInteger i=0; i<M; i++) {
      NSInteger sum = 0;
      NSArray *temp = [[lines objectAtIndex:offset++] componentsSeparatedByString:@" "];
      for (NSInteger j=0; j<N; j++) {
        sum += [[temp objectAtIndex:j] integerValue];
      }
      [incom addObject:@(sum)];
    }
    for (NSInteger i=0; i<M; i++) {
      NSInteger n = [[incom objectAtIndex:i] integerValue];
      if (n>0) {
        max += n;
      }
    }
  }

  tmp_s = [NSString stringWithFormat:@"%d\n", max];
  [[NSFileHandle fileHandleWithStandardOutput]
    writeData: [tmp_s dataUsingEncoding: NSUTF8StringEncoding]];

  [pool release];
  return 0;
}
