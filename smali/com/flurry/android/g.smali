.class final Lcom/flurry/android/g;
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
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V

    .line 23
    const/4 v0, 0x0

    .line 25
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

    .line 29
    :goto_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 30
    const-string v1, "com.flurry.jumptap.PUBLISHER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/flurry/android/g;->sAdNetworkApiKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 33
    const-string v0, "FlurryAgent"

    const-string v1, "com.flurry.jumptap.PUBLISHER_ID not set in manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/g;->setFocusable(Z)V

    .line 36
    return-void

    .line 27
    :catch_0
    move-exception v1

    const-string v1, "FlurryAgent"

    const-string v2, "Cannot find manifest for app"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final initLayout(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 168
    iget-object v0, p0, Lcom/flurry/android/g;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "takeover"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-result-object v2

    sget-object v0, Lcom/flurry/android/g;->sAdNetworkApiKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPublisherId(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setRefreshPeriod(I)V

    invoke-virtual {v2, v3}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setShouldSendLocation(Z)V

    :try_start_0
    new-instance v0, Lcom/jumptap/adtag/JtAdInterstitial;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, v2}, Lcom/jumptap/adtag/JtAdInterstitial;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V
    :try_end_0
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/flurry/android/ap;

    invoke-direct {v1, p0}, Lcom/flurry/android/ap;-><init>(Lcom/flurry/android/g;)V

    invoke-virtual {v0, v1}, Lcom/jumptap/adtag/JtAdInterstitial;->setAdViewListener(Lcom/jumptap/adtag/JtAdViewListener;)V

    invoke-virtual {v0}, Lcom/jumptap/adtag/JtAdInterstitial;->showAsPopup()V

    .line 176
    :goto_1
    return-void

    .line 170
    :catch_0
    move-exception v0

    const-string v0, "FlurryAgent"

    const-string v2, "Jumptap JtException when creating ad object."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-result-object v2

    sget-object v0, Lcom/flurry/android/g;->sAdNetworkApiKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPublisherId(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setRefreshPeriod(I)V

    invoke-virtual {v2, v3}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setShouldSendLocation(Z)V

    :try_start_1
    new-instance v0, Lcom/jumptap/adtag/JtAdView;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, v2}, Lcom/jumptap/adtag/JtAdView;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V
    :try_end_1
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    :goto_2
    new-instance v0, Lcom/flurry/android/s;

    invoke-direct {v0, p0}, Lcom/flurry/android/s;-><init>(Lcom/flurry/android/g;)V

    invoke-virtual {v1, v0}, Lcom/jumptap/adtag/JtAdView;->setAdViewListener(Lcom/jumptap/adtag/JtAdViewListener;)V

    invoke-virtual {p0, v1}, Lcom/flurry/android/g;->addView(Landroid/view/View;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "FlurryAgent"

    const-string v2, "Jumptap JtException when creating ad object."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
