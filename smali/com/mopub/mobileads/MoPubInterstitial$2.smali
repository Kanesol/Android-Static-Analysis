.class Lcom/mopub/mobileads/MoPubInterstitial$2;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;


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
    .line 162
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial$2;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAdLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$2;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->OnAdLoaded(Lcom/mopub/mobileads/MoPubView;)V

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$2;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 166
    return-void
.end method
