.class final Lcom/flurry/android/ay;
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
    .line 90
    iput-object p1, p0, Lcom/flurry/android/ay;->a:Lcom/flurry/android/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/flurry/android/ay;->a:Lcom/flurry/android/x;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/x;->onAdClosed(Ljava/util/Map;)V

    .line 116
    const-string v0, "FlurryAgent"

    const-string v1, "Admob AdView dismissed from screen."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/android/ay;->a:Lcom/flurry/android/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/x;->onAdUnFilled(Ljava/util/Map;)V

    .line 103
    const-string v0, "FlurryAgent"

    const-string v1, "Admob AdView failed to receive ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/android/ay;->a:Lcom/flurry/android/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/x;->onAdClicked(Ljava/util/Map;)V

    .line 123
    const-string v0, "FlurryAgent"

    const-string v1, "Admob AdView leave application."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    const-string v0, "FlurryAgent"

    const-string v1, "Admob AdView present on screen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public final onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/flurry/android/ay;->a:Lcom/flurry/android/x;

    invoke-virtual {v0, v1}, Lcom/flurry/android/x;->onAdFilled(Ljava/util/Map;)V

    .line 95
    iget-object v0, p0, Lcom/flurry/android/ay;->a:Lcom/flurry/android/x;

    invoke-virtual {v0, v1}, Lcom/flurry/android/x;->onAdShown(Ljava/util/Map;)V

    .line 96
    const-string v0, "FlurryAgent"

    const-string v1, "Admob AdView received ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
