.class public Lcom/mopub/mobileads/MraidInterstitialAdapter;
.super Lcom/mopub/mobileads/BaseInterstitialAdapter;
.source "MraidInterstitialAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseInterstitialAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public loadInterstitial()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mopub/mobileads/MraidInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MraidInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialLoaded(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V

    .line 11
    :cond_0
    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .prologue
    .line 15
    iget-object v2, p0, Lcom/mopub/mobileads/MraidInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 16
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.mopub.mobileads.Source"

    iget-object v3, p0, Lcom/mopub/mobileads/MraidInterstitialAdapter;->mJsonParams:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 19
    return-void
.end method
