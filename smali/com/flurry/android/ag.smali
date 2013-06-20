.class final Lcom/flurry/android/ag;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# instance fields
.field private e:Z


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
    const-string v1, "com.flurry.millennial.MYAPID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/flurry/android/ag;->sAdNetworkApiKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "FlurryAgent"

    const-string v1, "com.flurry.millennial.MYAPID not set in manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/ag;->setFocusable(Z)V

    .line 42
    return-void

    .line 31
    :catch_0
    move-exception v1

    const-string v1, "FlurryAgent"

    const-string v2, "Cannot find manifest for app"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/ag;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/flurry/android/ag;->e:Z

    return v0
.end method


# virtual methods
.method public final initLayout(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 233
    iget-object v0, p0, Lcom/flurry/android/ag;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lcom/flurry/android/ag;->sAdNetworkApiKey:Ljava/lang/String;

    const-string v3, "MMFullScreenAdTransition"

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;)V

    const v1, 0x711e41a2

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    new-instance v1, Lcom/flurry/android/as;

    invoke-direct {v1, p0}, Lcom/flurry/android/as;-><init>(Lcom/flurry/android/ag;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->fetch()V

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->display()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/ag;->e:Z

    iget-boolean v0, p0, Lcom/flurry/android/ag;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial ad displayed immediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/ag;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial ad did not display immediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/ag;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/ag;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v0}, Lcom/flurry/android/AdCreative;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/ag;->fAdCreative:Lcom/flurry/android/AdCreative;

    invoke-virtual {v1}, Lcom/flurry/android/AdCreative;->getWidth()I

    move-result v1

    const/16 v2, 0x140

    if-lt v1, v2, :cond_2

    const/16 v2, 0x32

    if-lt v0, v2, :cond_2

    const-string v0, "FlurryAgent"

    const-string v1, "Determined Millennial AdSize as MMBannerAdBottom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MMBannerAdBottom"

    :goto_1
    if-eqz v5, :cond_4

    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    check-cast p1, Landroid/app/Activity;

    sget-object v1, Lcom/flurry/android/ag;->sAdNetworkApiKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v5, v2}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    const v1, 0x711e41a1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    new-instance v1, Lcom/flurry/android/af;

    invoke-direct {v1, p0}, Lcom/flurry/android/af;-><init>(Lcom/flurry/android/ag;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/ag;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x12c

    if-lt v1, v2, :cond_3

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_3

    const-string v0, "FlurryAgent"

    const-string v1, "Determined Millennial AdSize as MMBannerAdRectangle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MMBannerAdRectangle"

    goto :goto_1

    :cond_3
    const-string v0, "FlurryAgent"

    const-string v1, "Could not find Millennial AdSize that matches size"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "FlurryAgent"

    const-string v1, "**********Could not load Millennial Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
