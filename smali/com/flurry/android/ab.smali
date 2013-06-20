.class final Lcom/flurry/android/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdListener;


# instance fields
.field private synthetic a:Lcom/flurry/android/aa;


# direct methods
.method constructor <init>(Lcom/flurry/android/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/flurry/android/ab;->a:Lcom/flurry/android/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdRequestCompleted(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/flurry/android/ab;->a:Lcom/flurry/android/aa;

    invoke-virtual {v0, v1}, Lcom/flurry/android/aa;->onAdFilled(Ljava/util/Map;)V

    .line 125
    iget-object v0, p0, Lcom/flurry/android/ab;->a:Lcom/flurry/android/aa;

    invoke-virtual {v0, v1}, Lcom/flurry/android/aa;->onAdShown(Ljava/util/Map;)V

    .line 126
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi imAdView ad request completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public final onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/flurry/android/ab;->a:Lcom/flurry/android/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/aa;->onAdUnFilled(Ljava/util/Map;)V

    .line 118
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi imAdView ad request failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public final onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flurry/android/ab;->a:Lcom/flurry/android/aa;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/aa;->onAdClosed(Ljava/util/Map;)V

    .line 111
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi imAdView dismiss ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public final onLeaveApplication(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi onLeaveApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public final onShowAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/flurry/android/ab;->a:Lcom/flurry/android/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/aa;->onAdClicked(Ljava/util/Map;)V

    .line 104
    const-string v0, "FlurryAgent"

    const-string v1, "InMobi imAdView ad shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
