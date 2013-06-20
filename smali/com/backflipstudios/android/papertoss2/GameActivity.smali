.class public Lcom/backflipstudios/android/papertoss2/GameActivity;
.super Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;
.source "GameActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public areAdsDisabled()Z
    .locals 2

    .prologue
    .line 188
    const-string v1, "BFSAdBuyoutActivityAddon"

    invoke-virtual {p0, v1}, Lcom/backflipstudios/android/papertoss2/GameActivity;->getAddonByName(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;

    .line 189
    .local v0, addon:Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->areAdsDisabled()Z

    move-result v1

    .line 192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getSplashScreenDelayInMillis()I
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0xbb8

    return v0
.end method

.method protected getSplashScreenResources()[I
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f02

    aput v2, v0, v1

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v4, "pt2"

    const-string v5, "GameActivity.onCreate()"

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/papertoss2/GameApplication;

    .line 52
    .local v0, app:Lcom/backflipstudios/android/papertoss2/GameApplication;
    new-instance v4, Lcom/backflipstudios/android/fmod/BFSFMODAddon;

    invoke-direct {v4, p0}, Lcom/backflipstudios/android/fmod/BFSFMODAddon;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v4}, Lcom/backflipstudios/android/papertoss2/GameActivity;->registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    .line 55
    new-instance v4, Lcom/backflipstudios/android/mopub/BFSMoPubConversionTrackerAddon;

    invoke-direct {v4, p0}, Lcom/backflipstudios/android/mopub/BFSMoPubConversionTrackerAddon;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v4}, Lcom/backflipstudios/android/papertoss2/GameActivity;->registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    .line 58
    const-string v2, ""

    .line 59
    .local v2, googleanalytics:Ljava/lang/String;
    const-string v4, "target-storefront"

    const-string v5, "amazon"

    invoke-virtual {v0, v4, v5}, Lcom/backflipstudios/android/papertoss2/GameApplication;->checkBuildConfigurationParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v4

    const-string v5, "analytics.value"

    const-string v6, "google"

    const-string v7, "amazon"

    invoke-virtual {v4, v5, v6, v7}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 65
    new-instance v4, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;

    invoke-direct {v4, p0, v2}, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/backflipstudios/android/papertoss2/GameActivity;->registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    .line 68
    :cond_0
    new-instance v4, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;

    invoke-direct {v4, p0}, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v4}, Lcom/backflipstudios/android/papertoss2/GameActivity;->registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    .line 70
    invoke-virtual {p0}, Lcom/backflipstudios/android/papertoss2/GameActivity;->areAdsDisabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    new-instance v3, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;-><init>(Landroid/app/Activity;Z)V

    .line 73
    .local v3, intAddon:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;
    invoke-virtual {p0, v3}, Lcom/backflipstudios/android/papertoss2/GameActivity;->registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    .line 75
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v4

    const-string v5, "advertisement.value"

    const-string v6, "ad-provider"

    invoke-virtual {v0, v6}, Lcom/backflipstudios/android/papertoss2/GameApplication;->getBuildConfigurationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "startup_interstitial"

    invoke-virtual {v4, v5, v6, v7}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, backgroundZoneId:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 77
    const-string v4, "startup_interstitial"

    sget-object v5, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->StartupInterstitial:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    invoke-virtual {v3, v4, v1, v5}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->registerAd(Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;)V

    .line 78
    const-string v4, "startup_interstitial"

    invoke-virtual {v3, v4}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->prepareAdWithTag(Ljava/lang/String;)V

    .line 81
    .end local v1           #backgroundZoneId:Ljava/lang/String;
    .end local v3           #intAddon:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;
    :cond_1
    return-void

    .line 62
    :cond_2
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v4

    const-string v5, "analytics.value"

    const-string v6, "google"

    const-string v7, "google"

    invoke-virtual {v4, v5, v6, v7}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onGameReady()V
    .locals 25

    .prologue
    .line 113
    invoke-super/range {p0 .. p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->onGameReady()V

    .line 115
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/papertoss2/GameApplication;

    .line 118
    .local v3, app:Lcom/backflipstudios/android/papertoss2/GameApplication;
    const-string v21, "BFSEmailApplicationAddon"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/papertoss2/GameActivity;->getAddonByName(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v21

    if-nez v21, :cond_0

    .line 119
    new-instance v21, Lcom/backflipstudios/android/email/BFSEmailActivityAddon;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/backflipstudios/android/email/BFSEmailActivityAddon;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/papertoss2/GameActivity;->registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    .line 122
    :cond_0
    const-string v21, "target-storefront"

    const-string v22, "amazon"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/backflipstudios/android/papertoss2/GameApplication;->checkBuildConfigurationParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 124
    const-string v21, "AmazonIAPActivityAddon"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/papertoss2/GameActivity;->getAddonByName(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v21

    if-nez v21, :cond_1

    .line 125
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v21

    const-string v22, "products.value"

    const-string v23, "standard"

    invoke-virtual/range {v21 .. v23}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->queryAll(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 126
    .local v19, productIds:[Ljava/lang/String;
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, gameid:Ljava/lang/String;
    new-instance v6, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 128
    .local v6, billingAddon:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->registerProductIds([Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/backflipstudios/android/papertoss2/GameActivity;->registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    .line 155
    .end local v6           #billingAddon:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;
    .end local v7           #gameid:Ljava/lang/String;
    .end local v19           #productIds:[Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/backflipstudios/android/papertoss2/GameActivity;->areAdsDisabled()Z

    move-result v21

    if-nez v21, :cond_4

    .line 156
    const-string v21, "BFSMoPubBannerAdAddon"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/papertoss2/GameActivity;->getAddonByName(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v21

    if-nez v21, :cond_3

    .line 157
    new-instance v5, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;

    invoke-virtual/range {p0 .. p0}, Lcom/backflipstudios/android/papertoss2/GameActivity;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Z)V

    .line 158
    .local v5, bannerAddon:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/backflipstudios/android/papertoss2/GameActivity;->registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    .line 161
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v21

    const-string v22, "advertisement.value"

    const-string v23, "ad-provider"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/backflipstudios/android/papertoss2/GameApplication;->getBuildConfigurationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "main_menu"

    invoke-virtual/range {v21 .. v24}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, menuZoneId:Ljava/lang/String;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2

    .line 163
    const-string v21, "main_menu"

    sget-object v22, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->BannerPositionTop:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v14, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->registerAd(Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;)V

    .line 164
    const-string v21, "main_menu"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->prepareAdWithTag(Ljava/lang/String;)V

    .line 165
    const-string v21, "main_menu"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->showAdWithTag(Ljava/lang/String;)V

    .line 169
    :cond_2
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v21

    const-string v22, "advertisement.value"

    const-string v23, "ad-provider"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/backflipstudios/android/papertoss2/GameApplication;->getBuildConfigurationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "gameplay"

    invoke-virtual/range {v21 .. v24}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, gameplayZoneId:Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_3

    .line 171
    const-string v21, "gameplay"

    sget-object v22, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->BannerPositionTop:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v9, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->registerAd(Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;)V

    .line 172
    const-string v21, "gameplay"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->prepareAdWithTag(Ljava/lang/String;)V

    .line 176
    .end local v5           #bannerAddon:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;
    .end local v9           #gameplayZoneId:Ljava/lang/String;
    .end local v14           #menuZoneId:Ljava/lang/String;
    :cond_3
    sget-object v21, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InterstitialAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/papertoss2/GameActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v12

    check-cast v12, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;

    .line 177
    .local v12, intAddon:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;
    if-eqz v12, :cond_4

    const-string v21, "gameplay_interstitial"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->isAdRegisteredWithTag(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 179
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v21

    const-string v22, "advertisement.value"

    const-string v23, "ad-provider"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/backflipstudios/android/papertoss2/GameApplication;->getBuildConfigurationParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "gameplay_interstitial"

    invoke-virtual/range {v21 .. v24}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, gameplayIntZoneId:Ljava/lang/String;
    const-string v21, "gameplay_interstitial"

    sget-object v22, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->GameplayInterstitial:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v8, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->registerAd(Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;)V

    .line 181
    const-string v21, "gameplay_interstitial"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->prepareAdWithTag(Ljava/lang/String;)V

    .line 184
    .end local v8           #gameplayIntZoneId:Ljava/lang/String;
    .end local v12           #intAddon:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;
    :cond_4
    return-void

    .line 133
    :cond_5
    const-string v21, "BFSAndroidIABActivityAddon"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/papertoss2/GameActivity;->getAddonByName(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v21

    if-nez v21, :cond_1

    .line 134
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v21

    const-string v22, "platform.value"

    const-string v23, "iab_public_key"

    invoke-virtual/range {v21 .. v23}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, iabPublicKey:Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    .line 136
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v21

    const-string v22, "products.value"

    const-string v23, "standard"

    invoke-virtual/range {v21 .. v23}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->queryAll(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 138
    .restart local v19       #productIds:[Ljava/lang/String;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v20, productPrices:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v21

    const-string v22, "products.name"

    const-string v23, "standard"

    invoke-virtual/range {v21 .. v23}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->queryAll(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 140
    .local v16, names:[Ljava/lang/String;
    move-object/from16 v4, v16

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v13, :cond_6

    aget-object v15, v4, v10

    .line 141
    .local v15, name:Ljava/lang/String;
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v21

    const-string v22, "products.value"

    const-string v23, "standard"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v15}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 142
    .local v17, pid:Ljava/lang/String;
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v21

    const-string v22, "product_prices.value"

    const-string v23, "standard"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v15}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, price:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 146
    .end local v15           #name:Ljava/lang/String;
    .end local v17           #pid:Ljava/lang/String;
    .end local v18           #price:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    .line 147
    .restart local v7       #gameid:Ljava/lang/String;
    new-instance v6, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;

    const-class v21, Lcom/backflipstudios/android/papertoss2/GameBillingService;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v7, v11, v1}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 148
    .local v6, billingAddon:Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->registerProductIds([Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->registerProductPrices(Ljava/util/HashMap;)V

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/backflipstudios/android/papertoss2/GameActivity;->registerAddon(Lcom/backflipstudios/android/engine/app/BFSActivityAddon;)V

    goto/16 :goto_0
.end method

.method protected useDepthBuffer()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected useOpenGLESv2()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method
