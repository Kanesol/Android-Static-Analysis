.class public Lcom/mopub/mobileads/MoPubActivity;
.super Lcom/mopub/mobileads/BaseActivity;
.source "MoPubActivity.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;


# static fields
.field public static final MOPUB_ACTIVITY_NO_AD:I = 0x4d2


# instance fields
.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseActivity;-><init>()V

    return-void
.end method

.method private sourceWithImpressionTrackingDisabled(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 79
    const-string v0, "http://ads.mopub.com/m/imp"

    const-string v1, "mopub://null"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OnAdLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->adAppeared()V

    .line 84
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 8

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.mopub.mobileads.AdUnitId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, adUnitId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.mopub.mobileads.Keywords"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, keywords:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.mopub.mobileads.ClickthroughUrl"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, clickthroughUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.mopub.mobileads.Timeout"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 51
    .local v4, timeout:I
    if-nez v0, :cond_0

    .line 52
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "AdUnitId isn\'t set in com.mopub.mobileads.MoPubActivity"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 55
    :cond_0
    new-instance v5, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v5, p0}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 56
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v5, v0}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 57
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v5, v2}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    .line 58
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v5, v1}, Lcom/mopub/mobileads/MoPubView;->setClickthroughUrl(Ljava/lang/String;)V

    .line 59
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v5, v4}, Lcom/mopub/mobileads/MoPubView;->setTimeout(I)V

    .line 60
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v5, p0}, Lcom/mopub/mobileads/MoPubView;->setOnAdLoadedListener(Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.mopub.mobileads.Source"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, source:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 64
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/MoPubActivity;->sourceWithImpressionTrackingDisabled(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v5, v3}, Lcom/mopub/mobileads/MoPubView;->loadHtmlString(Ljava/lang/String;)V

    .line 68
    :cond_1
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubActivity;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object v5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 74
    invoke-super {p0}, Lcom/mopub/mobileads/BaseActivity;->onDestroy()V

    .line 75
    return-void
.end method
