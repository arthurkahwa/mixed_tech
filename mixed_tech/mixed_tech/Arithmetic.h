//
//  Arithmetic.h
//  mixed_tech
//
//  Created by Arthur Nsereko Kahwa on 10/3/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Arithmetic : NSObject
// Public methods for arithmetic operations
- (int)add:(int)a with:(int)b;
- (int)subtract:(int)a with:(int)b;
- (int)multiply:(int)a with:(int)b;
- (float)divide:(int)a with:(int)b;
@end

NS_ASSUME_NONNULL_END
