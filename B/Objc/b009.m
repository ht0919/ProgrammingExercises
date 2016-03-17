#import <Foundation/Foundation.h>
int main(void) {

  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  NSInteger offset = 0;
  int st0,st1,et0,et1,tmp1,tmp2;

  // All data read
  NSString *readdata = [[[NSString alloc] 
    initWithData:[[NSFileHandle fileHandleWithStandardInput]
    readDataToEndOfFile] encoding:NSUTF8StringEncoding] autorelease];
  // Separate line
  NSArray *lines = [readdata componentsSeparatedByString:@"\n"];

  NSInteger n = [[lines objectAtIndex:offset++] integerValue]; 
  NSMutableArray *st = [NSMutableArray arrayWithObjects:@10,@0,nil]; // 開始時刻(時,分)
  NSMutableArray *et = [NSMutableArray arrayWithObjects:@10,@0,nil]; // 終了時刻(時,分)
  BOOL lunch = NO;

  for (int i=0; i<n; i++) {
    // データ入力(名前 時間[分])
    NSArray *tmp = [[lines objectAtIndex:offset++] componentsSeparatedByString:@" "];
    NSString *name = [tmp objectAtIndex:0];
    NSInteger minutes = [[tmp objectAtIndex:1] integerValue]; 
    // 終了時刻の設定
    [et removeObjectAtIndex:0];
    [et insertObject: [st objectAtIndex:0] atIndex:0]; 
    int mm = [[st objectAtIndex:1] integerValue] + minutes;
    [et removeObjectAtIndex:1];
    [et insertObject:@(mm) atIndex:1]; 
    if (mm > 59) {
      et0 = [[et objectAtIndex:0] integerValue];
      et1 = [[et objectAtIndex:1] integerValue];
      tmp1 = et0 + et1 / 60;
      [et removeObjectAtIndex:0];
      [et insertObject:@(tmp1) atIndex:0]; 
      tmp2 = et1 % 60;
      [et removeObjectAtIndex:1];
      [et insertObject:@(tmp2) atIndex:1]; 
    }
    // 終了時刻が12:01以降なら昼休みを取る
    et0 = [[et objectAtIndex:0] integerValue];
    et1 = [[et objectAtIndex:1] integerValue];
    if (lunch == NO && et0 >= 12 && et1 >= 1) {
      // 開始時刻の更新
      st1 = [[st objectAtIndex:1] integerValue];
      st1 += 50; // すでに10分休憩しているので50分を足す
      [st removeObjectAtIndex:1];
      [st insertObject:@(st1) atIndex:1]; 
      if (st1 > 59) {
        st0 = [[st objectAtIndex:0] integerValue];
        st1 = [[st objectAtIndex:1] integerValue];
        tmp1 = st0 + st1 / 60;
        [st removeObjectAtIndex:0];
        [st insertObject:@(tmp1) atIndex:0]; 
        tmp2 = st1 % 60;
        [st removeObjectAtIndex:1];
        [st insertObject:@(tmp2) atIndex:1]; 
      }
      // 終了時刻の更新
      st0 = [[st objectAtIndex:0] integerValue];
      [et removeObjectAtIndex:0];
      [et insertObject:@(st0) atIndex:0]; 
      st1 = [[st objectAtIndex:1] integerValue];
      et1 = st1 + minutes;
      [et removeObjectAtIndex:1];
      [et insertObject:@(et1) atIndex:1]; 
      if (et1 > 59) {
        et0 = [[et objectAtIndex:0] integerValue];
        et1 = [[et objectAtIndex:1] integerValue];
        tmp1 = et0 + et1 / 60;
        [et removeObjectAtIndex:0];
        [et insertObject:@(tmp1) atIndex:0]; 
        tmp2 = et1 % 60;
        [et removeObjectAtIndex:1];
        [et insertObject:@(tmp2) atIndex:1]; 
      }
      lunch = YES; // 昼休みは1回だけなのでフラグをONにする
    }

    st0 = [[st objectAtIndex:0] integerValue];
    st1 = [[st objectAtIndex:1] integerValue];
    et0 = [[et objectAtIndex:0] integerValue];
    et1 = [[et objectAtIndex:1] integerValue];
    NSString *str = [NSString stringWithFormat:@"%02d:%02d - %02d:%02d %@\n",
    st0,st1,et0,et1,name];
    [[NSFileHandle fileHandleWithStandardOutput]
    writeData: [str dataUsingEncoding: NSUTF8StringEncoding]];

    // 休憩を10分取って次の開始時刻を更新
    et1 = [[et objectAtIndex:1] integerValue];
    et1 += 10;
    [et removeObjectAtIndex:1];
    [et insertObject:@(et1) atIndex:1]; 
    if (et1 > 59) {
      et0 = [[et objectAtIndex:0] integerValue];
      et1 = [[et objectAtIndex:1] integerValue];
      tmp1 = et0 + et1 / 60;
      [et removeObjectAtIndex:0];
      [et insertObject:@(tmp1) atIndex:0]; 
      tmp2 = et1 % 60;
      [et removeObjectAtIndex:1];
      [et insertObject:@(tmp2) atIndex:1]; 
    }
    et0 = [[et objectAtIndex:0] integerValue];
    [st removeObjectAtIndex:0];
    [st insertObject:@(et0) atIndex:0]; 
    et1 = [[et objectAtIndex:1] integerValue];
    [st removeObjectAtIndex:1];
    [st insertObject:@(et1) atIndex:1]; 
  }
}
