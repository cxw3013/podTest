//
//  MCHttpHelper.h
//  Pods
//
//  Created by changxiaowei on 16/12/6.
//
//

#import <Foundation/Foundation.h>

@interface MCHttpHelper : NSObject

- (void)getWithUrl:(NSString *)url withCompletion:(void (^)(id responseObject))completion failed:(void (^)(NSError *error))failed;

@end
