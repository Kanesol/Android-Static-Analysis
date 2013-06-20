.class final Lcom/flurry/android/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# instance fields
.field private synthetic a:Lcom/flurry/android/ag;


# direct methods
.method constructor <init>(Lcom/flurry/android/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/flurry/android/as;->a:Lcom/flurry/android/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 202
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial caching completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fInter_success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/as;->a:Lcom/flurry/android/ag;

    invoke-static {v2}, Lcom/flurry/android/ag;->a(Lcom/flurry/android/ag;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/flurry/android/as;->a:Lcom/flurry/android/ag;

    invoke-static {v0}, Lcom/flurry/android/ag;->a(Lcom/flurry/android/ag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->display()Z

    .line 210
    :cond_0
    return-void
.end method

.method public final MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/flurry/android/as;->a:Lcom/flurry/android/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdClicked(Ljava/util/Map;)V

    .line 174
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial clicked to new browser."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public final MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/flurry/android/as;->a:Lcom/flurry/android/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdClicked(Ljava/util/Map;)V

    .line 181
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial clicked to overlay."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public final MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flurry/android/as;->a:Lcom/flurry/android/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdUnFilled(Ljava/util/Map;)V

    .line 161
    const-string v0, "FlurryAgent"

    const-string v1, "Millennial MMAdView Interstitial failed to load ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public final MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/flurry/android/as;->a:Lcom/flurry/android/ag;

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdFilled(Ljava/util/Map;)V

    .line 188
    iget-object v0, p0, Lcom/flurry/android/as;->a:Lcom/flurry/android/ag;

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdShown(Ljava/util/Map;)V

    .line 189
    iget-object v0, p0, Lcom/flurry/android/as;->a:Lcom/flurry/android/ag;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdClosed(Ljava/util/Map;)V

    .line 190
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial overlay launched."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public final MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    const-string v0, "FlurryAgent"

    const-string v1, "Millennial MMAdView Interstitial request is caching."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public final MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 167
    const-string v0, "FlurryAgent"

    const-string v1, "Millennial MMAdView In returned interstitial ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method
