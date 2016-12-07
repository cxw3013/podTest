//
//  MCHttpHelper.m
//  Pods
//
//  Created by changxiaowei on 16/12/6.
//
//

#import "MCHttpHelper.h"
#import "AFNetworking.h"

@implementation MCHttpHelper

- (void)getWithUrl:(NSString *)url withCompletion:(void (^)(id responseObject))completion failed:(void (^)(NSError *error))failed {
    
    // 初始化请求的manager对象
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    /*
     * desc  : GET请求
     * param : URLString - 请求的地址
     *          parameters - 请求参数（GET请求，参数可以为nil 或者 可以提交一个时间戳）
     *          success - 请求成功回调的block
     *          failure - 请求失败回调的block
     */
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        // 处理请求成功，服务器返回的JSON数据
        if (responseObject) {
            completion(responseObject);
        }
    } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
        if (failed) {
            failed(error);
        }
    }];
}

@end
