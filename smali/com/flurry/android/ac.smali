.class final Lcom/flurry/android/ac;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V

    .line 27
    const/4 v0, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 34
    const-string v1, "com.mobclix.APPLICATION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    sput-object v0, Lcom/flurry/android/ac;->sAdNetworkApiKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "MobclixTestApp"

    const-string v1, "com.mobclix.APPLICATION_ID not set in manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/ac;->setFocusable(Z)V

    .line 40
    return-void

    .line 31
    :catch_0
    move-exception v1

    const-string v1, "FlurryAgent"

    const-string v2, "Cannot find manifest for app"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final initLayout(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/flurry/android/ac;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/flurry/android/z;

    invoke-direct {v1, p0}, Lcom/flurry/android/z;-><init>(Lcom/flurry/android/ac;)V

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;)Z

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestAndDisplayAd()V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ac;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/ac;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v1

    const/16 v2, 0x140

    if-lt v1, v2, :cond_1

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1

    const-string v0, "FlurryAgent"

    const-string v1, "Determined Mobclix AdSize as BANNER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;-><init>(Landroid/content/Context;)V

    :goto_1
    new-instance v1, Lcom/flurry/android/ah;

    invoke-direct {v1, p0}, Lcom/flurry/android/ah;-><init>(Lcom/flurry/android/ac;)V

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixAdViewListener;)Z

    invoke-virtual {p0, v0}, Lcom/flurry/android/ac;->addView(Landroid/view/View;)V

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x12c

    if-lt v1, v2, :cond_2

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_2

    const-string v0, "FlurryAgent"

    const-string v1, "Determined Mobclix AdSize as IAB_RECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/mobclix/android/sdk/MobclixIABRectangleMAdView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/mobclix/android/sdk/MobclixIABRectangleMAdView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const-string v0, "FlurryAgent"

    const-string v1, "Could not find Mobclix AdSize that matches size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1
.end method
