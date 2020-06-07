#import "WeatherLockManager.h"

@implementation WeatherLockManager
@synthesize lockView, homeView;
@synthesize lockWeather, homeWeather;

+(instancetype)sharedInstance {
    static WeatherLockManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[WeatherLockManager alloc] init];
    });
    return sharedInstance;
}

@end