//
//  keyutils.h
//  ios
//
//  Created by chrisk on 4/3/15.
//  Copyright (c) 2015 bitpay. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef ios_keyutils_h
#define ios_keyutils_h

@interface KeyUtils : NSObject

+ (void)nonce;
+ (void)generatePem;
+ (void)createKey;
+ (void)getPrivateKey;
+ (void)getPublicKey;
+ (void)getPrivateKeyForPem;
+ (void)generateSinFromPem;
+ (void)sign;
+ (void)encodeBase58;

@end

#endif
