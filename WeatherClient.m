//
//  WeatherClient.m
//  
//
//  Created by burak firik on 11/2/13.
//
//

#import "WeatherAPIKey.h"
#import "WeatherClient.h"

static NSString *const kWeatherUndergroundAPIBaseURLString=@"http://api.wunderground.com/api/"


@implementation WeatherClient

@pragma mark -Singleton

+(instancetype)sharedClient{
    static WeatherClient *sharedClient=nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&amp;onceToken, ^{
        NSString *baseURLString = [kWeatherUndergroundAPIBaseURLString stringByAppendingString:kWeatherUndergroundAPIKey];
        sharedClient = [[self alloc] initWithBaseURL:[NSURL URLWithString:baseURLString]];
    });
    
    return sharedClient;
    
}


#pragma mark -Initialization

-(id)initWithBaseURL:](NSURL *)url{
    self=[super initWithBaseURL:url];
    if(self){
        [self registerHTTPOperationClass:[AFJSONRequest]]
        [self setDefaultHeader:@"Accept" value:@"application/json"];
    }
    return self;
    
}



@end
