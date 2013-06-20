.class public Lcom/mopub/mobileads/GoogleAdMobAdapter;
.super Lcom/mopub/mobileads/BaseAdapter;
.source "GoogleAdMobAdapter.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private mAdMobView:Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->removeView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/BaseAdapter;->invalidate()V

    .line 112
    return-void
.end method

.method public loadAd()V
    .locals 11

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobAdapter;->isInvalidated()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 103
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    .line 68
    .local v1, adType:Lcom/google/ads/AdSize;
    :try_start_0
    new-instance v8, Lorg/json/JSONTokener;

    iget-object v9, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mJsonParams:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 69
    .local v6, object:Lorg/json/JSONObject;
    const-string v8, "adUnitID"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, adUnitId:Ljava/lang/String;
    const-string v8, "adWidth"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 71
    .local v3, adWidth:I
    const-string v8, "adHeight"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 78
    .local v0, adHeight:I
    sget-object v8, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v8

    if-gt v3, v8, :cond_2

    sget-object v8, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v8

    if-gt v0, v8, :cond_2

    .line 79
    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    .line 92
    :goto_1
    new-instance v8, Lcom/google/ads/AdView;

    iget-object v9, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v9}, Lcom/mopub/mobileads/MoPubView;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v1, v2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    .line 93
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v8, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 95
    new-instance v7, Lcom/google/ads/AdRequest;

    invoke-direct {v7}, Lcom/google/ads/AdRequest;-><init>()V

    .line 99
    .local v7, request:Lcom/google/ads/AdRequest;
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v8}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v5

    .line 100
    .local v5, location:Landroid/location/Location;
    if-eqz v5, :cond_1

    invoke-virtual {v7, v5}, Lcom/google/ads/AdRequest;->setLocation(Landroid/location/Location;)Lcom/google/ads/AdRequest;

    .line 102
    :cond_1
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v8, v7}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto :goto_0

    .line 72
    .end local v0           #adHeight:I
    .end local v2           #adUnitId:Ljava/lang/String;
    .end local v3           #adWidth:I
    .end local v5           #location:Landroid/location/Location;
    .end local v6           #object:Lorg/json/JSONObject;
    .end local v7           #request:Lcom/google/ads/AdRequest;
    :catch_0
    move-exception v4

    .line 73
    .local v4, e:Lorg/json/JSONException;
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v8}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl()V

    goto :goto_0

    .line 80
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v0       #adHeight:I
    .restart local v2       #adUnitId:Ljava/lang/String;
    .restart local v3       #adWidth:I
    .restart local v6       #object:Lorg/json/JSONObject;
    :cond_2
    sget-object v8, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v8

    if-gt v3, v8, :cond_3

    sget-object v8, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v8

    if-gt v0, v8, :cond_3

    .line 81
    sget-object v1, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    goto :goto_1

    .line 82
    :cond_3
    sget-object v8, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v8

    if-gt v3, v8, :cond_4

    sget-object v8, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v8

    if-gt v0, v8, :cond_4

    .line 83
    sget-object v1, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    goto :goto_1

    .line 84
    :cond_4
    sget-object v8, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v8

    if-gt v3, v8, :cond_5

    sget-object v8, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v8

    if-gt v0, v8, :cond_5

    .line 85
    sget-object v1, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    goto :goto_1

    .line 87
    :cond_5
    const-string v8, "MoPub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to retrieve ad from AdMob native. Unsupported ad size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v8}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl()V

    goto/16 :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 118
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .parameter "ad"
    .parameter "error"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Google AdMob failed. Trying another"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl()V

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 130
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Google AdMob clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->registerClick()V

    goto :goto_0
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 4
    .parameter "ad"

    .prologue
    const/4 v3, -0x1

    .line 142
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobAdapter;->isInvalidated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v1, "MoPub"

    const-string v2, "Google AdMob load succeeded. Showing ad..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->removeAllViews()V

    .line 146
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v2, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->nativeAdLoaded()V

    .line 153
    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->trackNativeImpression()V

    goto :goto_0
.end method
