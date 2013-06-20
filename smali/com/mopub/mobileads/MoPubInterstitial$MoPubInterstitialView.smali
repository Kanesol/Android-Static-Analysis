.class public Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
.super Lcom/mopub/mobileads/MoPubView;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoPubInterstitialView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubInterstitial;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 267
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setAutorefreshEnabled(Z)V

    .line 269
    return-void
.end method


# virtual methods
.method protected loadNativeSDK(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 276
    .local v1, interstitial:Lcom/mopub/mobileads/MoPubInterstitial;
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getInterstitialAdapterListener()Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    move-result-object v0

    .line 278
    .local v0, adapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;
    const-string v5, "X-Adtype"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 280
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v5, "interstitial"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "mraid"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    :cond_1
    const-string v5, "interstitial"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "X-Fulladtype"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    .line 284
    .local v2, interstitialType:Ljava/lang/String;
    :goto_1
    const-string v5, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading native adapter for interstitial type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v2}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->getAdapterForType(Ljava/lang/String;)Lcom/mopub/mobileads/BaseInterstitialAdapter;

    move-result-object v6

    #setter for: Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;
    invoke-static {v5, v6}, Lcom/mopub/mobileads/MoPubInterstitial;->access$302(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/BaseInterstitialAdapter;)Lcom/mopub/mobileads/BaseInterstitialAdapter;

    .line 288
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    #getter for: Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;
    invoke-static {v5}, Lcom/mopub/mobileads/MoPubInterstitial;->access$300(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/BaseInterstitialAdapter;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 289
    const-string v5, "X-Nativeparams"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 290
    .local v3, jsonParams:Ljava/lang/String;
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    #getter for: Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;
    invoke-static {v5}, Lcom/mopub/mobileads/MoPubInterstitial;->access$300(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/BaseInterstitialAdapter;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->init(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    #getter for: Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;
    invoke-static {v5}, Lcom/mopub/mobileads/MoPubInterstitial;->access$300(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/BaseInterstitialAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->setAdapterListener(Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;)V

    .line 292
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    #getter for: Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;
    invoke-static {v5}, Lcom/mopub/mobileads/MoPubInterstitial;->access$300(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/BaseInterstitialAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->loadInterstitial()V

    goto :goto_0

    .line 281
    .end local v2           #interstitialType:Ljava/lang/String;
    .end local v3           #jsonParams:Ljava/lang/String;
    :cond_2
    const-string v2, "mraid"

    goto :goto_1

    .line 297
    :cond_3
    const-string v5, "MoPub"

    const-string v6, "Couldn\'t load native adapter. Trying next ad..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;->onNativeInterstitialFailed(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V

    goto/16 :goto_0
.end method

.method protected trackImpression()V
    .locals 2

    .prologue
    .line 302
    const-string v0, "MoPub"

    const-string v1, "Tracking impression for interstitial."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->trackImpression()V

    .line 304
    :cond_0
    return-void
.end method
