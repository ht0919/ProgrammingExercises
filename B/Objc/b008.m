#import <Foundation/Foundation.h>

static void print(NSString*str) {
  [(NSFileHandle*)[NSFileHandle fileHandleWithStandardOutput]
    writeData: [str dataUsingEncoding: NSUTF8StringEncoding]];
}

static int getArr(NSMutableArray*arr,int pos) {
  return [[arr objectAtIndex:pos] integerValue];
}

int main(void) {

  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  int offset = 0;
  int max = 0;
  NSMutableArray *incom = [NSMutableArray array];
  NSString *tmpStr;

  // All data read
  NSString *readdata = [[[NSString alloc]
    initWithData:[[NSFileHandle fileHandleWithStandardInput]
    readDataToEndOfFile] encoding:NSUTF8StringEncoding] autorelease];
  // Separate line
  NSArray *lines = [readdata componentsSeparatedByString:@"\n"];

  NSMutableArray *tmpArr = (NSMutableArray*)[[lines objectAtIndex:offset++] componentsSeparatedByString:@" "];
  int N = getArr(tmpArr,0);
  int M = getArr(tmpArr,1);

  if (M>0 && N>0) {
    for (int i=0; i<M; i++) {
      int sum = 0;
      tmpArr = (NSMutableArray*)[[lines objectAtIndex:offset++] componentsSeparatedByString:@" "];
      for (NSInteger j=0; j<N; j++) {
        sum += getArr(tmpArr,j);
      }
      [incom addObject:@(sum)];
    }
    for (int i=0; i<M; i++) {
      int n = getArr(incom,i);
      if (n>0) {
        max += n;
      }
    }
  }

  tmpStr = [NSString stringWithFormat:@"%d\n", max];
  print(tmpStr);

  [pool release];
  return 0;
}
