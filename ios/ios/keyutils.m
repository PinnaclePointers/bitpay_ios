//
//  keyutils.m
//  ios
//
//  Created by Chris Kleeschulte on 4/3/15.
//  Copyright (c) 2015 bitpay. All rights reserved.
//
#import "keyutils.h"

@implementation KeyUtils

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
    //    key = OpenSSL::PKey::EC.new("secp256k1")
    //    key.generate_key
    //    key
}


+ (void)getPrivateKey:(NSString *)key {
//        key.private_key.to_int.to_s(16)
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

@end
