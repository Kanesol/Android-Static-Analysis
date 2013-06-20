.class final Lcom/flurry/android/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;


# instance fields
.field private synthetic a:Lcom/flurry/android/ac;


# direct methods
.method constructor <init>(Lcom/flurry/android/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/flurry/android/z;->a:Lcom/flurry/android/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final keywords()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix keyword callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onDismissAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flurry/android/z;->a:Lcom/flurry/android/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->onAdClosed(Ljava/util/Map;)V

    .line 145
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix Interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public final onFailedLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/flurry/android/z;->a:Lcom/flurry/android/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->onAdUnFilled(Ljava/util/Map;)V

    .line 152
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix Interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public final onFinishLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/android/z;->a:Lcom/flurry/android/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->onAdFilled(Ljava/util/Map;)V

    .line 159
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix Interstitial ad successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public final onPresentAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/android/z;->a:Lcom/flurry/android/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->onAdShown(Ljava/util/Map;)V

    .line 166
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix Interstitial ad successfully shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public final query()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix query callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method
