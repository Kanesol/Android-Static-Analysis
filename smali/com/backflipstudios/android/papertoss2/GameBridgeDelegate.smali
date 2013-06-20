.class public Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->showNormalInterstitial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->purchaseProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->prv_restorePurchases(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->prv_doAdBuyout(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static areAdsDisabled()Z
    .locals 3

    .prologue
    .line 700
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 701
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_0

    .line 702
    const-string v1, "pt2"

    const-string v2, "BridgeDelegate.areAdsDisabled(): Activity is null!"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/4 v1, 0x0

    .line 706
    .end local v0           #activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    :goto_0
    return v1

    .restart local v0       #activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    :cond_0
    check-cast v0, Lcom/backflipstudios/android/papertoss2/GameActivity;

    .end local v0           #activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    invoke-virtual {v0}, Lcom/backflipstudios/android/papertoss2/GameActivity;->areAdsDisabled()Z

    move-result v1

    goto :goto_0
.end method

.method public static doAdBuyout(Ljava/lang/String;)V
    .locals 1
    .parameter "callbackId"

    .prologue
    .line 637
    new-instance v0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$18;

    invoke-direct {v0, p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$18;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 653
    return-void
.end method

.method public static getPriceForProduct(Ljava/lang/String;)[B
    .locals 8
    .parameter "productName"

    .prologue
    const/4 v3, 0x0

    .line 497
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v4

    const-string v5, "products.value"

    const-string v6, "standard"

    invoke-virtual {v4, v5, v6, p0}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, productId:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 499
    :cond_0
    const-string v4, "pt2"

    const-string v5, "BridgeDelegate.getPriceForProduct(): Product id not found for product name: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_1
    :goto_0
    return-object v3

    .line 503
    :cond_2
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 504
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_3

    .line 505
    const-string v4, "pt2"

    const-string v5, "BridgeDelegate.purchaseProduct(): Activity is null!"

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_3
    sget-object v4, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InAppPurchase:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v4}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    .line 510
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
    if-eqz v1, :cond_1

    .line 514
    invoke-virtual {v1, v2}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->getPriceForProduct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/backflipstudios/android/util/BFSStringUtilities;->getUTF32LEBytes(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_0
.end method

.method public static hideAdForTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 258
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 259
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 260
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate.hideAdForTag(): Activity is null!"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    sget-object v2, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;

    .line 265
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;
    if-eqz v1, :cond_0

    .line 269
    new-instance v2, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$8;

    invoke-direct {v2, v1, p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$8;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static hideBannerAds()V
    .locals 4

    .prologue
    .line 304
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 305
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 306
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate.hideBannerAds(): Activity is null!"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    sget-object v2, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;

    .line 311
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;
    if-eqz v1, :cond_0

    .line 315
    new-instance v2, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$10;

    invoke-direct {v2, v1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$10;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;)V

    invoke-static {v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static onGameReady()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 95
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$2;

    invoke-direct {v1, v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$2;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)V

    invoke-static {v1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 105
    :cond_0
    return-void
.end method

.method public static pauseAdWithTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 327
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 328
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 329
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate.pauseAdWithTag(): Activity is null!"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    sget-object v2, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;

    .line 334
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;
    if-eqz v1, :cond_0

    .line 338
    new-instance v2, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$11;

    invoke-direct {v2, v1, p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$11;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static postScoreToLeaderboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "leaderboardName"
    .parameter "score"

    .prologue
    .line 373
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 374
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_0

    .line 375
    const-string v1, "pt2"

    const-string v2, "BridgeDelegate.postScoreToLeaderboard(): Activity is null!"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method private static prv_doAdBuyout(Ljava/lang/String;)Z
    .locals 9
    .parameter "callbackId"

    .prologue
    const/4 v4, 0x0

    .line 657
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 658
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 659
    const-string v5, "pt2"

    const-string v6, "BridgeDelegate.prv_doAdBuyout(): Activity is null!"

    invoke-static {v5, v6}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    :goto_0
    return v4

    .line 663
    :cond_1
    const-string v5, "BFSAdBuyoutActivityAddon"

    invoke-virtual {v0, v5}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getAddonByName(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;

    .line 664
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;
    if-eqz v1, :cond_0

    .line 668
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v5

    const-string v6, "products.value"

    const-string v7, "standard"

    const-string v8, "ad_buyout"

    invoke-virtual {v5, v6, v7, v8}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, productId:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 670
    :cond_2
    const-string v5, "pt2"

    const-string v6, "BridgeDelegate.prv_doAdBuyout(): Unable to find ad buyout product id"

    invoke-static {v5, v6}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_3
    new-instance v3, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$19;

    invoke-direct {v3, p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$19;-><init>(Ljava/lang/String;)V

    .line 692
    .local v3, subscriber:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v4

    const-string v5, "0f5f96c6945cc7f7157e49e5ed25e4fe5a612011"

    invoke-virtual {v4, v5, v3}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 693
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v4

    const-string v5, "d0d76afedfafe86b6fe0edc435634ba567d4a44f"

    invoke-virtual {v4, v5, v3}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 695
    invoke-virtual {v1, v2}, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->doAdBuyout(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private static prv_restorePurchases(Ljava/lang/String;)Z
    .locals 6
    .parameter "callbackId"

    .prologue
    const/4 v3, 0x0

    .line 565
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 566
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 567
    const-string v4, "pt2"

    const-string v5, "BridgeDelegate.prv_restorePurchases(): Activity is null!"

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_0
    :goto_0
    return v3

    .line 571
    :cond_1
    sget-object v4, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InAppPurchase:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v4}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    .line 572
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
    if-eqz v1, :cond_0

    .line 576
    new-instance v2, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$17;

    invoke-direct {v2, v0, p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$17;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;Ljava/lang/String;)V

    .line 629
    .local v2, subscriber:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v3

    const-string v4, "46dbec4afc9d3c9ab902453866cfebed3f49e7fd"

    invoke-virtual {v3, v4, v2}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 630
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v3

    const-string v4, "d89d039c8abbd447b96dfa29b8cace8e77acc544"

    invoke-virtual {v3, v4, v2}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 632
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->restoreProducts()Z

    move-result v3

    goto :goto_0
.end method

.method public static purchaseProduct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "callbackId"
    .parameter "productName"

    .prologue
    .line 409
    new-instance v0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;

    invoke-direct {v0, p1, p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 435
    return-void
.end method

.method private static purchaseProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "callbackId"
    .parameter "productName"
    .parameter "productId"

    .prologue
    const/4 v4, 0x0

    .line 439
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 440
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 441
    const-string v5, "pt2"

    const-string v6, "BridgeDelegate.purchaseProduct(): Activity is null!"

    invoke-static {v5, v6}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    :goto_0
    return v4

    .line 445
    :cond_1
    sget-object v5, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InAppPurchase:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v5}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    .line 446
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->canPurchase()Z

    move-result v5

    if-nez v5, :cond_2

    .line 451
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->showPurchasingUnavailableErrorDialog()V

    goto :goto_0

    .line 455
    :cond_2
    const/4 v2, 0x0

    .line 457
    .local v2, isNonConsumable:Z
    const-string v4, "ad_buyout"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 458
    const/4 v2, 0x1

    .line 461
    :cond_3
    new-instance v3, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;

    invoke-direct {v3, v1, p2, p0, p1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .local v3, subscriber:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v4

    const-string v5, "3ad59fe3375207a7420b71086909b94735dabe91"

    invoke-virtual {v4, v5, v3}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 489
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v4

    const-string v5, "4ca44b0a78a84fb26c4543a81e7606dba6e5710b"

    invoke-virtual {v4, v5, v3}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 490
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v4

    const-string v5, "03e50f29ce5e6f2bcb931e96235b6d1e66691cee"

    invoke-virtual {v4, v5, v3}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 492
    invoke-virtual {v1, p2, v2}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->purchaseProductWithId(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0
.end method

.method public static reportAchievement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "achievementName"
    .parameter "percentageComplete"

    .prologue
    .line 400
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 401
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_0

    .line 402
    const-string v1, "pt2"

    const-string v2, "BridgeDelegate.reportAchievement(): Activity is null!"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method public static restorePurchases(Ljava/lang/String;)V
    .locals 1
    .parameter "callbackId"

    .prologue
    .line 542
    new-instance v0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$16;

    invoke-direct {v0, p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$16;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method

.method public static resumeAdWithTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 350
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 351
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 352
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate.resumneAdWithTag(): Activity is null!"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    sget-object v2, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;

    .line 357
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;
    if-eqz v1, :cond_0

    .line 361
    new-instance v2, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$12;

    invoke-direct {v2, v1, p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$12;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainThreadInstance()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "callbackId"
    .parameter "param0"
    .parameter "param1"

    .prologue
    .line 49
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getEngineInstance()Lcom/backflipstudios/android/engine/app/BFSEngine;

    move-result-object v0

    .line 50
    .local v0, engine:Lcom/backflipstudios/android/engine/app/BFSEngine;
    if-nez v0, :cond_0

    .line 51
    const-string v1, "pt2"

    const-string v2, "BridgeDelegate: Unable to send engine callback, engine is null!"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onAsyncCallbackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shouldExit()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 61
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$1;

    invoke-direct {v1, v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$1;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)V

    invoke-static {v1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static showAchievementUI()V
    .locals 3

    .prologue
    .line 391
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 392
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_0

    .line 393
    const-string v1, "pt2"

    const-string v2, "BridgeDelegate.showAchievementUI(): Activity is null!"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    return-void
.end method

.method public static showAdForTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 281
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 282
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 283
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate.showAdForTag(): Activity is null!"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    sget-object v2, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;

    .line 288
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;
    if-eqz v1, :cond_0

    .line 292
    new-instance v2, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$9;

    invoke-direct {v2, v1, p0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$9;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showInterstitialAdForTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "callbackId"
    .parameter "tag"

    .prologue
    .line 239
    new-instance v0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$7;

    invoke-direct {v0, p0, p1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public static showLeaderboardUI(Ljava/lang/String;)V
    .locals 3
    .parameter "leaderboardName"

    .prologue
    .line 382
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 383
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_0

    .line 384
    const-string v1, "pt2"

    const-string v2, "BridgeDelegate.showLeaderboardUI(): Activity is null!"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void
.end method

.method public static showLegalInformation()V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 144
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-eqz v0, :cond_0

    .line 145
    new-instance v1, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$4;

    invoke-direct {v1, v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$4;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)V

    invoke-static {v1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 161
    :cond_0
    return-void
.end method

.method public static showMoreGames()V
    .locals 4

    .prologue
    .line 109
    const-string v2, "pt2"

    const-string v3, "GameBridgeDelegate.showMoreGames"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    .line 112
    .local v1, app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
    if-nez v1, :cond_0

    .line 113
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate.showRatingsDialog(): Application is null!"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 118
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 119
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate.showRatingsDialog(): Activity is null!"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v2, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$3;

    invoke-direct {v2, v1, v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$3;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineApplication;Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)V

    invoke-static {v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static showNormalInterstitial(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "callbackId"
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, shown:Z
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 189
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 190
    const-string v5, "pt2"

    const-string v6, "BridgeDelegate.showNormalInterstitial(): Activity is null!"

    invoke-static {v5, v6}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    return v4

    .line 194
    :cond_1
    sget-object v5, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InterstitialAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v5}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;

    .line 195
    .local v1, intAddon:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;
    if-eqz v1, :cond_0

    .line 199
    new-instance v3, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$6;

    invoke-direct {v3, p0, p1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v3, subscriber:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v4

    const-string v5, "d6de37f920ccbf0ab8b5bfc459e3055ed93747e0"

    invoke-virtual {v4, v5, v3}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 227
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v4

    const-string v5, "ec3ca73d41b1a05c47193ea0ff646fbb26d1761e"

    invoke-virtual {v4, v5, v3}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 229
    invoke-virtual {v1, p1}, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;->isAdWithTagPrecached(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    invoke-virtual {v1, p1}, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;->showAdWithTag(Ljava/lang/String;)Z

    .line 231
    const/4 v2, 0x1

    :cond_2
    move v4, v2

    .line 234
    goto :goto_0
.end method

.method public static showPrivacyPolicy()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 167
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$5;

    invoke-direct {v1, v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$5;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)V

    invoke-static {v1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 181
    :cond_0
    return-void
.end method

.method public static showPurchaseUserId()V
    .locals 4

    .prologue
    .line 519
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 520
    .local v0, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v0, :cond_1

    .line 521
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate.showPurchaseUserId(): Activity is null!"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    sget-object v2, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InAppPurchase:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    .line 526
    .local v1, addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
    if-eqz v1, :cond_0

    .line 530
    new-instance v2, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$15;

    invoke-direct {v2, v1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$15;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)V

    invoke-static {v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static showRatingsDialog()V
    .locals 3

    .prologue
    .line 711
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    .line 712
    .local v0, app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
    if-nez v0, :cond_0

    .line 713
    const-string v1, "pt2"

    const-string v2, "BridgeDelegate.showRatingsDialog(): Application is null!"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :goto_0
    return-void

    .line 717
    :cond_0
    new-instance v1, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$20;

    invoke-direct {v1, v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$20;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineApplication;)V

    invoke-static {v1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
