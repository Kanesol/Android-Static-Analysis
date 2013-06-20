.class final Lcom/flurry/android/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jumptap/adtag/JtAdViewListener;


# instance fields
.field private synthetic a:Lcom/flurry/android/g;


# direct methods
.method constructor <init>(Lcom/flurry/android/g;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/flurry/android/ap;->a:Lcom/flurry/android/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdError(Lcom/jumptap/adtag/JtAdView;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap Interstitial error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public final onFocusChange(Lcom/jumptap/adtag/JtAdView;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap Interstitial focus changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flurry/android/ap;->a:Lcom/flurry/android/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/g;->onAdClosed(Ljava/util/Map;)V

    .line 143
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap Interstitial dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public final onNewAd(Lcom/jumptap/adtag/JtAdView;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/flurry/android/ap;->a:Lcom/flurry/android/g;

    invoke-virtual {v0, v1}, Lcom/flurry/android/g;->onAdFilled(Ljava/util/Map;)V

    .line 135
    iget-object v0, p0, Lcom/flurry/android/ap;->a:Lcom/flurry/android/g;

    invoke-virtual {v0, v1}, Lcom/flurry/android/g;->onAdShown(Ljava/util/Map;)V

    .line 136
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap Interstitial new ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public final onNoAdFound(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/flurry/android/ap;->a:Lcom/flurry/android/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/g;->onAdUnFilled(Ljava/util/Map;)V

    .line 128
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap Interstitial no ad found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method
