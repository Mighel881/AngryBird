%hook GADDevice
- (bool)jailbroken {
    return 0;
} 
%end

%hook USRVDevice
+ (bool)isRooted {
    return 0;
} 
%end

%hook DUOSessionManager
- (bool)isPlusEnabled {
    return 1;
} 
%end

%hook DUOSkillTreeViewController
- (bool)isPlusEnabled {
    return 1;
} 
%end

%hook DuolingoMobilePlusStreakDiscountCoordinator
- (bool)isDropdownAvailable {
    return 0;
} 
- (bool)shouldPresentModally {
    return %orig;
} 
%end

%hook DuolingoMobilePlusScheduleAdCoordinator
- (bool)shouldShowAt:(long long)arg1 {
    return 0;
} 
%end

%hook GADDynamicHeightSearchRequest
- (bool)plusOnesExtensionEnabled {
    return 1;
} 
%end

%hook DuolingoMobileDUOUserClient
- (bool)isInLivePlusPlus {
    return 1;
} 

- (bool)isLivePlusPlusTreated {
    return 1;
} 
%end

%hook UMONPromoMetaData
- (bool)isPremium {
    return 1;
} 
%end

%hook FBVideoAdController
- (bool)showAdFromRootViewController:(id)arg1 {
    return 0;
} 
%end

%hook FBRewardedVideoAd
- (bool)showAdFromRootViewController:(id)arg1 {
    return 0;
} 
- (bool)showAdFromRootViewController:(id)arg1 animated:(bool)arg2 {
    return 0;
} 
%end

%hook FBInterstitialAd
- (bool)showAdFromRootViewController:(id)arg1 {
    return 0;
} 
%end

%hook DUOAdsMediator
- (bool)couldShowAdWithPlacement:(long long)arg1 {
    return 0;
} 
%end

%hook FBInterstitialAdInternal
- (bool)showAdFromRootViewController:(id)arg1 {
    return %orig;
} 
- (bool)showAdFromRootViewController:(id)arg1 animated:(bool)arg2 {
    return 0;
} 
%end

%hook FBInterstitialDisplayAdInternal
- (bool)showAdFromRootViewController:(id)arg1 {
    return 0;
} 
- (bool)showAdFromRootViewController:(id)arg1 animated:(bool)arg2 {
    return 0;
} 
%end

%hook FBInterstitialVideoAdInternal
- (bool)showAdFromRootViewController:(id)arg1 {
    return 0;
} 
- (bool)showAdFromRootViewController:(id)arg1 animated:(bool)arg2 {
    return 0;
} 
%end

%hook FBInterstitialNativeAdInternal
- (bool)showAdFromRootViewController:(id)arg1 {
    return 0;
} 
%end

%hook FBRewardedVideoAdVideoInternal
- (bool)showAdFromRootViewController:(id)arg1 {
    return 0;
} 
- (bool)showAdFromRootViewController:(id)arg1 animated:(bool)arg2 {
    return 0;
} 
%end

%hook FBRewardedVideoAdEndCardInternal
- (bool)showAdFromRootViewController:(id)arg1 {
    return 0;
} 
- (bool)showAdFromRootViewController:(id)arg1 animated:(bool)arg2 {
    return 0;
} 
%end

%hook FBInstreamAdView
- (bool)showAdFromRootViewController:(id)arg1 {
    return 0;
} 
%end

%hook DUOPlusPromotionCoordinator
- (bool)shouldShowPlusPromotionSessionEndVC {
    return 0;
} 
- (bool)isModelForPromotionPlusPurchasePageNewYearsLights {
    return 0;
} 
- (bool)shouldShowPlusPromotionShopCell {
    return 0;
} 
- (bool)isModelForPromotionPlusPurchasePageNewYearsFireworks {
    return 0;
} 
- (bool)shouldShowSkillTreePromotion {
    return 0;
} 
%end

%ctor {
    %init(DuolingoMobilePlusStreakDiscountCoordinator = objc_getClass("DuolingoMobile.PlusStreakDiscountCoordinator"),
        DuolingoMobilePlusScheduleAdCoordinator = objc_getClass("DuolingoMobile.PlusScheduleAdCoordinator"),
        DuolingoMobileDUOUserClient = objc_getClass("DuolingoMobile.DUOUserClient"));

}

