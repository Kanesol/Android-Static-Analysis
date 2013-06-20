.class final Lcom/flurry/android/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdInterstitialListener;


# instance fields
.field private synthetic a:Lcom/flurry/android/aa;


# direct methods
.method constructor <init>(Lcom/flurry/android/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/flurry/android/l;->a:Lcom/flurry/android/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/flurry/android/l;->a:Lcom/flurry/android/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/aa;->onAdUnFilled(Ljava/util/Map;)V

    .line 174
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi imAdView ad request failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public final onAdRequestLoaded(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/flurry/android/l;->a:Lcom/flurry/android/aa;

    invoke-virtual {v0, v2}, Lcom/flurry/android/aa;->onAdFilled(Ljava/util/Map;)V

    .line 181
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi Interstitial ad request completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->getState()Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/flurry/android/l;->a:Lcom/flurry/android/aa;

    invoke-virtual {v0, v2}, Lcom/flurry/android/aa;->onAdShown(Ljava/util/Map;)V

    .line 184
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->show()V

    .line 186
    :cond_0
    return-void
.end method

.method public final onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/flurry/android/l;->a:Lcom/flurry/android/aa;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/aa;->onAdClosed(Ljava/util/Map;)V

    .line 192
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi Interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public final onLeaveApplication(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter

    .prologue
    .line 204
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi onLeaveApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public final onShowAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 2
    .parameter

    .prologue
    .line 198
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi Interstitial ad shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method
