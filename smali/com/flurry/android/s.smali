.class final Lcom/flurry/android/s;
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
    .line 62
    iput-object p1, p0, Lcom/flurry/android/s;->a:Lcom/flurry/android/g;

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
    .line 94
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap AdView error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public final onFocusChange(Lcom/jumptap/adtag/JtAdView;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap AdView focus changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/android/s;->a:Lcom/flurry/android/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/g;->onAdClosed(Ljava/util/Map;)V

    .line 82
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap AdView dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public final onNewAd(Lcom/jumptap/adtag/JtAdView;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/flurry/android/s;->a:Lcom/flurry/android/g;

    invoke-virtual {v0, v1}, Lcom/flurry/android/g;->onAdFilled(Ljava/util/Map;)V

    .line 74
    iget-object v0, p0, Lcom/flurry/android/s;->a:Lcom/flurry/android/g;

    invoke-virtual {v0, v1}, Lcom/flurry/android/g;->onAdShown(Ljava/util/Map;)V

    .line 75
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap AdView new ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public final onNoAdFound(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/android/s;->a:Lcom/flurry/android/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/g;->onAdUnFilled(Ljava/util/Map;)V

    .line 67
    const-string v0, "FlurryAgent"

    const-string v1, "Jumptap AdView no ad found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
