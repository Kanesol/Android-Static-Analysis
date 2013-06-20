.class Lcom/mopub/mobileads/MoPubInterstitial$1;
.super Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubInterstitial;->showAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial$1;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void
.end method


# virtual methods
.method public onNativeInterstitialLoaded(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$DefaultInterstitialAdapterListener;->onNativeInterstitialLoaded(Lcom/mopub/mobileads/BaseInterstitialAdapter;)V

    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$1;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 159
    return-void
.end method
