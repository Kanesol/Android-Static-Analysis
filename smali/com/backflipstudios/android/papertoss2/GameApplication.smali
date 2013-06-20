.class public Lcom/backflipstudios/android/papertoss2/GameApplication;
.super Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
.source "GameApplication.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "pt2"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "fmodex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 32
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->onCreate()V

    .line 34
    invoke-static {}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const-string v1, "thirdparty.json"

    const-string v2, "android-tablet"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    const-string v0, ""

    .line 42
    .local v0, flurryAPIKey:Ljava/lang/String;
    const-string v1, "target-storefront"

    const-string v2, "amazon"

    invoke-virtual {p0, v1, v2}, Lcom/backflipstudios/android/papertoss2/GameApplication;->checkBuildConfigurationParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v1

    const-string v2, "analytics.value"

    const-string v3, "flurry"

    const-string v4, "amazon"

    invoke-virtual {v1, v2, v3, v4}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    new-instance v1, Lcom/backflipstudios/android/flurry/BFSFlurryAnalyticsProvider;

    invoke-direct {v1, v0}, Lcom/backflipstudios/android/flurry/BFSFlurryAnalyticsProvider;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->setProvider(Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;)V

    .line 50
    :cond_0
    return-void

    .line 37
    .end local v0           #flurryAPIKey:Ljava/lang/String;
    :cond_1
    const-string v1, "thirdparty.json"

    const-string v2, "android-phone"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .restart local v0       #flurryAPIKey:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v1

    const-string v2, "analytics.value"

    const-string v3, "flurry"

    const-string v4, "google"

    invoke-virtual {v1, v2, v3, v4}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
