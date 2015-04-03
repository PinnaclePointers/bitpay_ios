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
+ (NSString *)nonce;
+ (void)generatePem;
+ (void)createKeyWith:(NSString *)pem;
+ (void)createNewKey;
+ (void)getPrivateKey:(NSString *)key;
+ (void)getPublicKey:(NSString *)key;
+ (void)getPrivateKeyFromPem:(NSString *)pem;
+ (void)getPublicKeyFromPem:(NSString *)pem;
+ (void)generateSinFromPem:(NSString *)pem;
+ (void)sign:(NSString *)message withKey:(NSString *)key;
+ (void)encodeBase58:(NSString *)data;
@end

#endif
