static NSString* PBID = @"cPBID";
static NSString* MIXPANEL_TOKEN_KEY = @"cMixpanelToken";
static NSString* FACEBOOK_APP_ID_KEY = @"cFacebookAppId";
static NSString* MIXPANEL_IN_TEST_MODE = @"cMixPanelTestMode";

static NSString* ONLY_PROD_MIXPANEL = @"onlyTrackingProductionMixpanel";

@protocol ExternalTracking
- (void)initializeTracker : (NSDictionary*) params;
- (void)trackEvent: (NSDictionary*) eventParams;
@end

@interface TrackingImports : NSObject
- (instancetype)init;
- (instancetype)initWithUserData: (NSDictionary*) tokens NS_UNAVAILABLE;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;
//- (void) trackEvent:(NSString*)event;
- (void) trackEvent:(NSString*)event withProperties:(NSMutableDictionary*)props;

- (void) setMixpanelPersonFromUserInfo: (NSDictionary*) defaultUserInfo;
+ (void) flushMixpanel:(void (^)(id success))completionBlock;
+ (BOOL) isProductionEnvironment;
- (void) registerNewTracker: (NSObject*)tracker;
@property (nonatomic) NSMutableArray* externalTrackers;
@property (nonatomic) NSMutableDictionary* mixpanelInstances;
@property (nonatomic) NSMutableDictionary *trackingUserData;

// For having additional mixpanel projects
+(void) mixpanelAddToken:(NSString*)token;
+(void) mixpanelClearTokens;

@end
