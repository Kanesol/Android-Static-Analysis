.class final Lcom/flurry/android/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixAdViewListener;


# instance fields
.field private synthetic a:Lcom/flurry/android/ac;


# direct methods
.method constructor <init>(Lcom/flurry/android/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/flurry/android/ah;->a:Lcom/flurry/android/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final keywords()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix keyword callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/android/ah;->a:Lcom/flurry/android/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->onAdClicked(Ljava/util/Map;)V

    .line 99
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix AdView ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public final onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/android/ah;->a:Lcom/flurry/android/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->onAdClicked(Ljava/util/Map;)V

    .line 106
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix AdView custom ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public final onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flurry/android/ah;->a:Lcom/flurry/android/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->onAdUnFilled(Ljava/util/Map;)V

    .line 85
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix AdView ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public final onOpenAllocationLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix AdView loaded an open allocation ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public final onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/flurry/android/ah;->a:Lcom/flurry/android/ac;

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->onAdFilled(Ljava/util/Map;)V

    .line 77
    iget-object v0, p0, Lcom/flurry/android/ah;->a:Lcom/flurry/android/ac;

    invoke-virtual {v0, v1}, Lcom/flurry/android/ac;->onAdShown(Ljava/util/Map;)V

    .line 78
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix AdView ad successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public final query()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    const-string v0, "FlurryAgent"

    const-string v1, "Mobclix query callback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method
