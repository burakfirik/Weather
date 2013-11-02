//
//  WeatherClient.h
//  
//
//  Created by burak firik on 11/2/13.
//
//

#import <AFNetworking/AFNetworking.h>
#import "AFHTTPClient.h"

@interface WeatherClient : AFHTTPClient

+(instancetype)sharedClient;

@end
