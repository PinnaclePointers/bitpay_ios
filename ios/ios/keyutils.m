//
//  keyutils.m
//  ios
//
//  Created by Chris Kleeschulte on 4/3/15.
//  Copyright (c) 2015 bitpay. All rights reserved.
//
#import "keyutils.h"
#import <Security/Security.h>

@implementation KeyUtils

static const UInt8 publicKeyIdentifier[] = "com.bitpay.ios.publickey\0";
static const UInt8 privateKeyIdentifier[] = "com.bitpay.ios.privatekey\0";


+ (NSString *)nonce {
    NSDate *currentTime = [[NSDate alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyyMMddHHmmssSSS"];
    return [dateFormatter stringFromDate:currentTime];
};

+ (void)generatePem {
//    key = OpenSSL::PKey::EC.new("secp256k1")
//    key.generate_key
//    key.to_pem
  
};

+ (void)createKeyWith:(NSString *)pem {

//            OpenSSL::PKey::EC.new(pem)
};

+ (void)createNewKey {
    SecKeyRef publicKey = NULL;
    SecKeyRef privateKey = NULL;
    OSStatus status = noErr;
    
    NSMutableDictionary *privateKeyAttr = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *publicKeyAttr = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *keyPairAttr = [[NSMutableDictionary alloc] init];
    
    NSData *publicTag = [NSData dataWithBytes:publicKeyIdentifier
                                        length:strlen((const char *)publicKeyIdentifier)];

    NSData *privateTag = [NSData dataWithBytes:privateKeyIdentifier
                                         length:strlen((const char *)privateKeyIdentifier)];

    [keyPairAttr setObject:(__bridge id)kSecAttrKeyTypeEC
                    forKey:(__bridge id)kSecAttrKeyType];
    [keyPairAttr setObject:[NSNumber numberWithInt:256]
                    forKey:(__bridge id)kSecAttrKeySizeInBits];

    [privateKeyAttr setObject:[NSNumber numberWithBool:YES]
                       forKey:(__bridge id)kSecAttrIsPermanent];
    [privateKeyAttr setObject:privateTag
                       forKey:(__bridge id)kSecAttrApplicationTag];
    
    [publicKeyAttr setObject:[NSNumber numberWithBool:YES]
                      forKey:(__bridge id)kSecAttrIsPermanent];
    [publicKeyAttr setObject:publicTag
                      forKey:(__bridge id)kSecAttrApplicationTag];
    
    [keyPairAttr setObject:privateKeyAttr
                    forKey:(__bridge id)kSecPrivateKeyAttrs];
    [keyPairAttr setObject:publicKeyAttr
                    forKey:(__bridge id)kSecPublicKeyAttrs];
    
    status = SecKeyGeneratePair((__bridge CFDictionaryRef)keyPairAttr,
                                &publicKey, &privateKey);
    
    if(status != noErr) {
        //read status and react, maybe throw an error here
    }
    
    if(publicKey) CFRelease(publicKey);
    if(privateKey) CFRelease(privateKey);
}


+ (NSString *)getPrivateKey {
    //key.private_key.to_int.to_s(16)
    SecKeyRef privateKey = NULL;
    NSData *privateTag = [NSData dataWithBytes:privateKeyIdentifier
                                       length:strlen((const char *)privateKeyIdentifier)];
    NSMutableDictionary *queryPrivateKey = [[NSMutableDictionary alloc] init];
    
    [queryPrivateKey setObject:(__bridge id)kSecClassKey forKey:(__bridge id)kSecClass];
    [queryPrivateKey setObject:privateTag forKey:(__bridge id)kSecAttrApplicationTag];
    [queryPrivateKey setObject:(__bridge id)kSecAttrKeyTypeEC forKey:(__bridge id)kSecAttrKeyType];
    [queryPrivateKey setObject:[NSNumber numberWithBool:YES] forKey:(__bridge id)kSecReturnRef];
    
    SecItemCopyMatching((__bridge CFDictionaryRef)queryPrivateKey, (CFTypeRef *)&privateKey);
    NSLog(@"this is the private key: %@", privateKey);
    return @"";
    
};

+ (void)getPublicKey:(NSString *)key {
//    key.public_key.group.point_conversion_form = :compressed
//    key.public_key.to_bn.to_s(16).downcase

};

+ (void)getPrivateKeyFromPem:(NSString *)pem {
//    raise BitPayError, MISSING_PEM unless pem
//    key = OpenSSL::PKey::EC.new(pem)
//    get_private_key key

    
};

+ (void)getPublicKeyFromPem:(NSString *)pem {
//    raise BitPayError, MISSING_PEM unless pem
//    key = OpenSSL::PKey::EC.new(pem)
//    get_public_key key

}

+ (void)generateSinFromPem:(NSString *)pem {
//    key = OpenSSL::PKey::EC.new pem
//    key.public_key.group.point_conversion_form = :compressed
//    public_key = key.public_key.to_bn.to_s(2)
//    step_one = Digest::SHA256.hexdigest(public_key)
//    step_two = Digest::RMD160.hexdigest([step_one].pack("H*"))
//    step_three = "0F02" + step_two
//    step_four_a = Digest::SHA256.hexdigest([step_three].pack("H*"))
//    step_four = Digest::SHA256.hexdigest([step_four_a].pack("H*"))
//    step_five = step_four[0..7]
//    step_six = step_three + step_five
//    encode_base58(step_six)
};

+ (void)sign:(NSString *)message withKey: (NSString *)key {
//    group = ECDSA::Group::Secp256k1
//    digest = Digest::SHA256.digest(message)
//    signature = nil
//    while signature.nil?
//        temp_key = 1 + SecureRandom.random_number(group.order - 1)
//        signature = ECDSA.sign(group, privkey.to_i(16), digest, temp_key)
//        return ECDSA::Format::SignatureDerString.encode(signature).unpack("H*").first
//        end
    
};

+ (void)encodeBase58:(NSString *) data {
//    code_string = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"
//    base = 58
//    x = data.hex
//    output_string = ""
//    
//    while x > 0 do
//        remainder = x % base
//        x = x / base
//        output_string << code_string[remainder]
//        end
//        
//        pos = 0
//        while data[pos,2] == "00" do
//            output_string << code_string[0]
//            pos += 2
//            end
//            
//            output_string.reverse()
//            end
//    
};

+ (int) generateRandomNumber {
    
    uint8_t randomBytes[32];
    int result = SecRandomCopyBytes(kSecRandomDefault, 32, randomBytes);
    return result;
    
}


@end
