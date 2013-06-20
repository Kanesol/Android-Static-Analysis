.class final Lcom/flurry/android/x;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static e:Z


# instance fields
.field private f:Lcom/google/ads/InterstitialAd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V

    .line 29
    const/4 v0, 0x0

    .line 31
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

    .line 35
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 36
    const-string v1, "com.flurry.admob.MY_AD_UNIT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/flurry/android/x;->sAdNetworkApiKey:Ljava/lang/String;

    .line 37
    const-string v1, "com.flurry.admob.test"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/flurry/android/x;->e:Z

    .line 38
    sget-object v0, Lcom/flurry/android/x;->sAdNetworkApiKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "FlurryAgent"

    const-string v1, "com.flurry.admob.MY_AD_UNIT_ID not set in manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/x;->setFocusable(Z)V

    .line 43
    return-void

    .line 33
    :catch_0
    move-exception v1

    const-string v1, "FlurryAgent"

    const-string v2, "Cannot find manifest for app"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/x;)Lcom/google/ads/InterstitialAd;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/android/x;->f:Lcom/google/ads/InterstitialAd;

    return-object v0
.end method


# virtual methods
.method public final initLayout(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/flurry/android/x;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Lcom/google/ads/InterstitialAd;

    check-cast p1, Landroid/app/Activity;

    sget-object v1, Lcom/flurry/android/x;->sAdNetworkApiKey:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/x;->f:Lcom/google/ads/InterstitialAd;

    new-instance v0, Lcom/flurry/android/i;

    invoke-direct {v0, p0}, Lcom/flurry/android/i;-><init>(Lcom/flurry/android/x;)V

    iget-object v1, p0, Lcom/flurry/android/x;->f:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    sget-boolean v1, Lcom/flurry/android/x;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "FlurryAgent"

    const-string v2, "Admob AdView set to Test Mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/flurry/android/x;->f:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/x;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/x;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v1

    sget-object v2, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_3

    sget-object v2, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_3

    const-string v0, "FlurryAgent"

    const-string v1, "Determined Admob AdSize as IAB_LEADERBOARD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    :goto_1
    if-eqz v0, :cond_7

    new-instance v1, Lcom/google/ads/AdView;

    check-cast p1, Landroid/app/Activity;

    sget-object v2, Lcom/flurry/android/x;->sAdNetworkApiKey:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/android/ay;

    invoke-direct {v0, p0}, Lcom/flurry/android/ay;-><init>(Lcom/flurry/android/x;)V

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    invoke-virtual {p0, v1}, Lcom/flurry/android/x;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    sget-boolean v2, Lcom/flurry/android/x;->e:Z

    if-eqz v2, :cond_2

    const-string v2, "FlurryAgent"

    const-string v3, "Admob AdView set to Test Mode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_4

    sget-object v2, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_4

    const-string v0, "FlurryAgent"

    const-string v1, "Determined Admob AdSize as IAB_BANNER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_5

    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_5

    const-string v0, "FlurryAgent"

    const-string v1, "Determined Admob AdSize as BANNER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_6

    sget-object v1, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v1}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_6

    const-string v0, "FlurryAgent"

    const-string v1, "Determined Admob AdSize as IAB_MRECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    goto :goto_1

    :cond_6
    const-string v0, "FlurryAgent"

    const-string v1, "Could not find Admob AdSize that matches size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    const-string v0, "FlurryAgent"

    const-string v1, "**********Could not load Admob Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
