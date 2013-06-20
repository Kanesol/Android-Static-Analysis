.class final Lcom/flurry/android/af;
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
    .line 86
    iput-object p1, p0, Lcom/flurry/android/af;->a:Lcom/flurry/android/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    const-string v0, "FlurryAgent"

    const-string v1, "Millennial MMAdView banner caching completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public final MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/android/af;->a:Lcom/flurry/android/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdClicked(Ljava/util/Map;)V

    .line 106
    const-string v0, "FlurryAgent"

    const-string v1, "Millennial MMAdView clicked to new browser."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public final MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/android/af;->a:Lcom/flurry/android/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdClicked(Ljava/util/Map;)V

    .line 113
    const-string v0, "FlurryAgent"

    const-string v1, "Millennial MMAdView clicked to overlay."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public final MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/flurry/android/af;->a:Lcom/flurry/android/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdUnFilled(Ljava/util/Map;)V

    .line 91
    const-string v0, "FlurryAgent"

    const-string v1, "Millennial MMAdView failed to load ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public final MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    const-string v0, "FlurryAgent"

    const-string v1, "Millennial MMAdView banner overlay launched."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method public final MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    const-string v0, "FlurryAgent"

    const-string v1, "Millennial MMAdView banner request is caching."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public final MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/flurry/android/af;->a:Lcom/flurry/android/ag;

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdFilled(Ljava/util/Map;)V

    .line 98
    iget-object v0, p0, Lcom/flurry/android/af;->a:Lcom/flurry/android/ag;

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->onAdShown(Ljava/util/Map;)V

    .line 99
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView returned ad."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method
