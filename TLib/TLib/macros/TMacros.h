//
//  TMacros.h
//  Twork
//
//  Created by t on 12-11-15.
//  Copyright (c) 2012年 t. All rights reserved.
//

#ifndef Twork_TMacros_h

////////////////////////
//
// MARK: -
// TODO: todo
// FIXME: fixme
// !!!: -
// ???: -


/////////////////////////////////////////////////////////////////////////////
// switch

#define Twork_TMacros_h

#define TLog_On // TLog_Off


///////////////////////////////////////////////////////////////////////////////
// device type

#define IsPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)


///////////////////////////////////////////////////////////////////////////////
// path

#define DIR_Temp [NSHomeDirectory() stringByAppendingPathComponent:@"tmp"]

#define DIR_Document [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]

#define DIR_Library [NSHomeDirectory() stringByAppendingPathComponent:@"Library"]

#define DIR_Caches [NSHomeDirectory() stringByAppendingPathComponent:@"Library/Caches"]





///////////////////////////////////////////////////////////////////////////////
// color

#define RGBColor(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBAColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

#define HSVColor(h,s,v) [UIColor colorWithHue:(h) saturation:(s) value:(v) alpha:1]
#define HSVAColor(h,s,v,a) [UIColor colorWithHue:(h) saturation:(s) value:(v) alpha:(a)]





///////////////////////////////////////////////////////////////////////////////
//


#define MarkHere {printf("\n\
╭︿︿︿╮\n\
{/ ·· /}\n\
( (00) )\n\
 ︶︶︶\n\
  pig \n\
%s\n\n", __TIME__);}

#define ShowCallstack {NSLog(@"%@", [NSThread callStackSymbols]);}

#define ShowRect(_rect) {NSLog(@"%@", NSStringFromCGRect(_rect));}

#define ShowSelector {NSLog(@"%@", NSStringFromSelector(_cmd));}

///////////////////////////////////////////////////////////////////////////////
// non arc | arc

#if __has_feature(objc_arc)

#define TSafeRelease(_pt) {_pt = nil;}

#else

#define TSafeRelease(_pt) {[_pt release]; _pt = nil;}

#endif

#define TInvalidate_Timer(_timer) { [_timer invalidate]; _timer = nil; }


#ifdef TLog_On

#define TLog(s, ...) {NSLog([NSString stringWithFormat:(s), ##__VA_ARGS__]);}

#define TTLog( s, ... ) {NSLog( @"<address %p %@:(line %d)> %@", self, [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] );}

#else

#define TLog(s, ...)

#define TTLog( s, ... )

#endif

#endif
