.class final Lcom/flurry/android/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private synthetic a:Lcom/flurry/android/x;


# direct methods
.method constructor <init>(Lcom/flurry/android/x;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/flurry/android/i;->a:Lcom/flurry/android/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/flurry/android/i;->a:Lcom/flurry/android/x;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/x;->onAdClosed(Ljava/util/Map;)V

    .line 183
    const-string v0, "FlurryAgent"

    const-string v1, "Admob Interstitial dismissed from screen."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/flurry/android/i;->a:Lcom/flurry/android/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/x;->onAdUnFilled(Ljava/util/Map;)V

    .line 170
    const-string v0, "FlurryAgent"

    const-string v1, "Admob Interstitial failed to receive takeover."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/flurry/android/i;->a:Lcom/flurry/android/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/x;->onAdClicked(Ljava/util/Map;)V

    .line 190
    const-string v0, "FlurryAgent"

    const-string v1, "Admob Interstitial leave application."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    const-string v0, "FlurryAgent"

    const-string v1, "Admob Interstitial present on screen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method public final onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/flurry/android/i;->a:Lcom/flurry/android/x;

    invoke-virtual {v0, v2}, Lcom/flurry/android/x;->onAdFilled(Ljava/util/Map;)V

    .line 161
    const-string v0, "FlurryAgent"

    const-string v1, "Admob Interstitial received takeover."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/flurry/android/i;->a:Lcom/flurry/android/x;

    invoke-virtual {v0, v2}, Lcom/flurry/android/x;->onAdShown(Ljava/util/Map;)V

    .line 163
    iget-object v0, p0, Lcom/flurry/android/i;->a:Lcom/flurry/android/x;

    invoke-static {v0}, Lcom/flurry/android/x;->a(Lcom/flurry/android/x;)Lcom/google/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V

    .line 164
    return-void
.end method
