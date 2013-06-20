.class final Lcom/flurry/android/aa;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static e:Z


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
    const-string v1, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/flurry/android/aa;->sAdNetworkApiKey:Ljava/lang/String;

    .line 35
    const-string v1, "com.flurry.inmobi.test"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/flurry/android/aa;->e:Z

    .line 36
    sget-object v0, Lcom/flurry/android/aa;->sAdNetworkApiKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "FlurryAgent"

    const-string v1, "com.flurry.inmobi.MY_APP_ID not set in manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/aa;->setFocusable(Z)V

    .line 41
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
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 228
    iget-object v0, p0, Lcom/flurry/android/aa;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "takeover"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial;

    check-cast p1, Landroid/app/Activity;

    sget-object v1, Lcom/flurry/android/aa;->sAdNetworkApiKey:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/android/l;

    invoke-direct {v1, p0}, Lcom/flurry/android/l;-><init>(Lcom/flurry/android/aa;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->setImAdInterstitialListener(Lcom/inmobi/androidsdk/IMAdInterstitialListener;)V

    new-instance v1, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    sget-boolean v2, Lcom/flurry/android/aa;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "FlurryAgent"

    const-string v3, "InMobi Interstitial set to Test Mode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/aa;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/flurry/android/aa;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v2}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v2

    const/16 v3, 0x2d8

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-lt v0, v3, :cond_3

    const-string v0, "FlurryAgent"

    const-string v2, "Determined InMobi AdSize as 728x90"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    :goto_1
    if-eq v0, v1, :cond_8

    new-instance v2, Lcom/inmobi/androidsdk/IMAdView;

    check-cast p1, Landroid/app/Activity;

    sget-object v3, Lcom/flurry/android/aa;->sAdNetworkApiKey:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v3}, Lcom/inmobi/androidsdk/IMAdView;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    new-instance v0, Lcom/flurry/android/ab;

    invoke-direct {v0, p0}, Lcom/flurry/android/ab;-><init>(Lcom/flurry/android/aa;)V

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdListener(Lcom/inmobi/androidsdk/IMAdListener;)V

    invoke-virtual {p0, v2}, Lcom/flurry/android/aa;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    sget-boolean v3, Lcom/flurry/android/aa;->e:Z

    if-eqz v3, :cond_2

    const-string v3, "FlurryAgent"

    const-string v4, "InMobi AdView set to Test Mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    :cond_2
    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    invoke-virtual {v2, v1}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    goto :goto_0

    :cond_3
    const/16 v3, 0x1d4

    if-lt v2, v3, :cond_4

    const/16 v3, 0x3c

    if-lt v0, v3, :cond_4

    const-string v0, "FlurryAgent"

    const-string v2, "Determined InMobi AdSize as 468x60"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    goto :goto_1

    :cond_4
    const/16 v3, 0x140

    if-lt v2, v3, :cond_5

    const/16 v3, 0x32

    if-lt v0, v3, :cond_5

    const-string v0, "FlurryAgent"

    const-string v2, "Determined InMobi AdSize as 320x50"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    goto :goto_1

    :cond_5
    const/16 v3, 0x12c

    if-lt v2, v3, :cond_6

    const/16 v3, 0xfa

    if-lt v0, v3, :cond_6

    const-string v0, "FlurryAgent"

    const-string v2, "Determined InMobi AdSize as 300x250"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    goto :goto_1

    :cond_6
    const/16 v3, 0x78

    if-lt v2, v3, :cond_7

    const/16 v2, 0x258

    if-lt v0, v2, :cond_7

    const-string v0, "FlurryAgent"

    const-string v2, "Determined InMobi AdSize as 120x600"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    goto :goto_1

    :cond_7
    const-string v0, "FlurryAgent"

    const-string v2, "Could not find InMobi AdSize that matches size"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto/16 :goto_1

    :cond_8
    const-string v0, "FlurryAgent"

    const-string v1, "**********Could not load InMobi Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
