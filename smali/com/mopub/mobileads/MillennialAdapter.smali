.class public Lcom/mopub/mobileads/MillennialAdapter;
.super Lcom/mopub/mobileads/BaseAdapter;
.source "MillennialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# instance fields
.field private mActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasAlreadyRegisteredImpression:Z

.field private mMillennialAdView:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAdapter;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MillennialAdapter;)Lcom/millennialmedia/android/MMAdView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MillennialAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mHasAlreadyRegisteredImpression:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/MillennialAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mopub/mobileads/MillennialAdapter;->mHasAlreadyRegisteredImpression:Z

    return p1
.end method


# virtual methods
.method public MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 0
    .parameter "adview"
    .parameter "success"

    .prologue
    .line 214
    return-void
.end method

.method public MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "adview"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/MillennialAdapter$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MillennialAdapter$3;-><init>(Lcom/mopub/mobileads/MillennialAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method public MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "adview"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/MillennialAdapter$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MillennialAdapter$1;-><init>(Lcom/mopub/mobileads/MillennialAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter "adview"

    .prologue
    .line 204
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter "adview"

    .prologue
    .line 209
    return-void
.end method

.method public MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter "adview"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/MillennialAdapter$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MillennialAdapter$2;-><init>(Lcom/mopub/mobileads/MillennialAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public init(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "jsonParams"

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/mopub/mobileads/BaseAdapter;->init(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mopub/mobileads/MillennialAdapter;->mActivityReference:Ljava/lang/ref/WeakReference;

    .line 81
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->removeView(Landroid/view/View;)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter;->mActivityReference:Ljava/lang/ref/WeakReference;

    .line 140
    invoke-super {p0}, Lcom/mopub/mobileads/BaseAdapter;->invalidate()V

    .line 141
    return-void
.end method

.method public isInvalidated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 145
    iget-object v1, p0, Lcom/mopub/mobileads/MillennialAdapter;->mActivityReference:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/MillennialAdapter;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    invoke-super {p0}, Lcom/mopub/mobileads/BaseAdapter;->isInvalidated()Z

    move-result v0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 12

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/mopub/mobileads/MillennialAdapter;->isInvalidated()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 131
    :goto_0
    return-void

    .line 92
    :cond_0
    :try_start_0
    new-instance v10, Lorg/json/JSONTokener;

    iget-object v11, p0, Lcom/mopub/mobileads/MillennialAdapter;->mJsonParams:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 93
    .local v7, object:Lorg/json/JSONObject;
    const-string v10, "adUnitID"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, pubId:Ljava/lang/String;
    const-string v10, "adWidth"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 95
    .local v2, adWidth:I
    const-string v10, "adHeight"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    .local v1, adHeight:I
    const-string v6, "MMBannerAdTop"

    .line 102
    .local v6, mmAdType:Ljava/lang/String;
    const-string v9, "320"

    .line 103
    .local v9, widthString:Ljava/lang/String;
    const-string v4, "53"

    .line 105
    .local v4, heightString:Ljava/lang/String;
    const/16 v10, 0x12c

    if-ne v2, v10, :cond_3

    const/16 v10, 0xfa

    if-ne v1, v10, :cond_3

    .line 106
    const-string v6, "MMBannerAdRectangle"

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 116
    .local v0, activity:Landroid/app/Activity;
    new-instance v10, Lcom/millennialmedia/android/MMAdView;

    const/4 v11, -0x1

    invoke-direct {v10, v0, v8, v6, v11}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    .line 117
    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    const v11, 0x711e41a1

    invoke-virtual {v10, v11}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 118
    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v10, p0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 119
    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/millennialmedia/android/MMAdView;->setVisibility(I)V

    .line 121
    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v10, v9}, Lcom/millennialmedia/android/MMAdView;->setWidth(Ljava/lang/String;)V

    .line 122
    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v10, v4}, Lcom/millennialmedia/android/MMAdView;->setHeight(Ljava/lang/String;)V

    .line 124
    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v10}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v5

    .line 125
    .local v5, location:Landroid/location/Location;
    if-eqz v5, :cond_2

    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v10, v5}, Lcom/millennialmedia/android/MMAdView;->updateUserLocation(Landroid/location/Location;)V

    .line 127
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mHasAlreadyRegisteredImpression:Z

    .line 129
    const-string v10, "MoPub"

    const-string v11, "Loading Millennial ad..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMillennialAdView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v10}, Lcom/millennialmedia/android/MMAdView;->callForAd()V

    goto/16 :goto_0

    .line 96
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #adHeight:I
    .end local v2           #adWidth:I
    .end local v4           #heightString:Ljava/lang/String;
    .end local v5           #location:Landroid/location/Location;
    .end local v6           #mmAdType:Ljava/lang/String;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #pubId:Ljava/lang/String;
    .end local v9           #widthString:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 97
    .local v3, e:Lorg/json/JSONException;
    iget-object v10, p0, Lcom/mopub/mobileads/MillennialAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v10}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl()V

    goto/16 :goto_0

    .line 109
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v1       #adHeight:I
    .restart local v2       #adWidth:I
    .restart local v4       #heightString:Ljava/lang/String;
    .restart local v6       #mmAdType:Ljava/lang/String;
    .restart local v7       #object:Lorg/json/JSONObject;
    .restart local v8       #pubId:Ljava/lang/String;
    .restart local v9       #widthString:Ljava/lang/String;
    :cond_3
    const/16 v10, 0x2d8

    if-ne v2, v10, :cond_1

    const/16 v10, 0x5a

    if-ne v1, v10, :cond_1

    .line 110
    const-string v6, "MMBannerAdTop"

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
