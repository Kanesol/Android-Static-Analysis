.class Lcom/mopub/mobileads/MillennialInterstitialAdapter$3;
.super Ljava/lang/Object;
.source "MillennialInterstitialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MillennialInterstitialAdapter;->MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MillennialInterstitialAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$3;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$3;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MillennialInterstitialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Millennial interstitial clicked to overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialInterstitialAdapter$3;->this$0:Lcom/mopub/mobileads/MillennialInterstitialAdapter;

    #calls: Lcom/mopub/mobileads/MillennialInterstitialAdapter;->recordClickIfNecessary()V
    invoke-static {v0}, Lcom/mopub/mobileads/MillennialInterstitialAdapter;->access$000(Lcom/mopub/mobileads/MillennialInterstitialAdapter;)V

    goto :goto_0
.end method
