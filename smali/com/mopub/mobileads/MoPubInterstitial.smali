.class public Lcom/mopub/mobileads/MoPubInterstitial;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;
.implements Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubInterstitial$3;,
        Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;,
        Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdUnitId:Ljava/lang/String;

.field private mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

.field private mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

.field private mDefaultAdapterListener:Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;

.field private mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

.field private mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

.field private mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "id"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setAdUnitId(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 74
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mDefaultAdapterListener:Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;

    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mDefaultAdapterListener:Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/BaseInterstitialAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/BaseInterstitialAdapter;)Lcom/mopub/mobileads/BaseInterstitialAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    return-object p1
.end method

.method private showHtmlInterstitial()V
    .locals 4

    .prologue
    .line 107
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getResponseString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, responseString:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/mopub/mobileads/MoPubActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.mopub.mobileads.AdUnitId"

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "com.mopub.mobileads.Keywords"

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v2, "com.mopub.mobileads.Source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v2, "com.mopub.mobileads.ClickthroughUrl"

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method private showNativeInterstitial()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->showInterstitial()V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public OnAdFailed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 121
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 122
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialFailed()V

    .line 123
    :cond_0
    return-void
.end method

.method public OnAdLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 126
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 128
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->invalidate()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialLoaded()V

    .line 134
    :cond_1
    return-void
.end method

.method public customEventActionWillBegin()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 146
    :cond_0
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl()V

    .line 142
    :cond_0
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 138
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    iput-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 201
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->invalidate()V

    .line 203
    iput-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setOnAdLoadedListener(Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;)V

    .line 207
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setOnAdFailedListener(Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;)V

    .line 208
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->destroy()V

    .line 209
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getInterstitialAdapterListener()Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocationAwareness()Lcom/mopub/mobileads/MoPubView$LocationAwareness;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocationAwareness()Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    move-result-object v0

    return-object v0
.end method

.method public getLocationPrecision()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocationPrecision()I

    move-result v0

    return v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getTesting()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->invalidate()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mDefaultAdapterListener:Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setOnAdLoadedListener(Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;)V

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setOnAdFailedListener(Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;)V

    .line 90
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    .line 91
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .parameter "keywords"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setKeywords(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    .line 188
    return-void
.end method

.method public setLocationAwareness(Lcom/mopub/mobileads/MoPubView$LocationAwareness;)V
    .locals 1
    .parameter "awareness"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setLocationAwareness(Lcom/mopub/mobileads/MoPubView$LocationAwareness;)V

    .line 213
    return-void
.end method

.method public setLocationPrecision(I)V
    .locals 1
    .parameter "precision"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setLocationPrecision(I)V

    .line 221
    return-void
.end method

.method public setTesting(Z)V
    .locals 1
    .parameter "testing"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setTesting(Z)V

    .line 233
    return-void
.end method

.method public show()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 99
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$3;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->showHtmlInterstitial()V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->showNativeInterstitial()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showAd()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$1;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 162
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    new-instance v1, Lcom/mopub/mobileads/MoPubInterstitial$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$2;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setOnAdLoadedListener(Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;)V

    .line 169
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadAd()V

    .line 170
    return-void
.end method
