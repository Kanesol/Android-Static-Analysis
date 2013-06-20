.class public Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;
.super Lcom/mopub/mobileads/BaseInterstitialAdapter;
.source "GoogleAdMobInterstitialAdapter.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private mHasAlreadyRegisteredClick:Z

.field private mHasPrefetchedInterstitial:Z

.field private mInterstitialAd:Lcom/google/ads/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseInterstitialAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;)V
    .locals 5
    .parameter "interstitial"
    .parameter "jsonParams"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->init(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;)V

    .line 67
    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    iget-object v4, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mJsonParams:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 68
    .local v1, object:Lorg/json/JSONObject;
    const-string v3, "adUnitID"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    .local v2, pubId:Ljava/lang/String;
    new-instance v3, Lcom/google/ads/InterstitialAd;

    iget-object v4, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    .line 75
    iget-object v3, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v3, p0}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 76
    .end local v1           #object:Lorg/json/JSONObject;
    .end local v2           #pubId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Lorg/json/JSONException;
    iget-object v3, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    invoke-interface {v3, p0}, Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialFailed(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V

    goto :goto_0
.end method

.method public loadInterstitial()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->isInvalidated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 86
    .local v0, adRequest:Lcom/google/ads/AdRequest;
    iget-object v2, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 87
    .local v1, location:Landroid/location/Location;
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setLocation(Landroid/location/Location;)Lcom/google/ads/AdRequest;

    .line 89
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mHasPrefetchedInterstitial:Z

    .line 90
    iget-object v2, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v2, v0}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V

    goto :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 102
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v0, "MoPub"

    const-string v1, "Google AdMob interstitial failed. Trying another"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mHasPrefetchedInterstitial:Z

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialFailed(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v0, "MoPub"

    const-string v1, "Google AdMob interstitial was clicked, leaving application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mHasAlreadyRegisteredClick:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mHasAlreadyRegisteredClick:Z

    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialClicked(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V

    goto :goto_0
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 128
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "MoPub"

    const-string v1, "Google AdMob interstitial received an ad successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mHasPrefetchedInterstitial:Z

    .line 136
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialLoaded(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mHasPrefetchedInterstitial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobInterstitialAdapter;->mInterstitialAd:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V

    goto :goto_0
.end method
