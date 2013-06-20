.class public Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultInterstitialAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeInterstitialClicked(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    #getter for: Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$100(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 255
    return-void
.end method

.method public onNativeInterstitialExpired(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    #setter for: Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->access$002(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 259
    return-void
.end method

.method public onNativeInterstitialFailed(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    #setter for: Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->access$002(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 250
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    #getter for: Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$100(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl()V

    .line 251
    return-void
.end method

.method public onNativeInterstitialLoaded(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    #setter for: Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->access$002(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 244
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    #getter for: Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$100(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 245
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    #getter for: Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$200(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    #getter for: Lcom/mopub/mobileads/MoPubInterstitial;->mListener:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$200(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;->OnInterstitialLoaded()V

    .line 246
    :cond_0
    return-void
.end method
