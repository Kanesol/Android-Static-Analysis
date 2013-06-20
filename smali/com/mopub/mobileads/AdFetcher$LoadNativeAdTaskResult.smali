.class Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;
.super Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadNativeAdTaskResult"
.end annotation


# instance fields
.field protected mParamsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/AdView;Ljava/util/HashMap;)V
    .locals 0
    .parameter "adView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/AdView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p2, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;-><init>(Lcom/mopub/mobileads/AdView;)V

    .line 478
    iput-object p2, p0, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;->mParamsHash:Ljava/util/HashMap;

    .line 479
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/AdView;Ljava/util/HashMap;Lcom/mopub/mobileads/AdFetcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;->mParamsHash:Ljava/util/HashMap;

    .line 494
    return-void
.end method

.method public execute()V
    .locals 3

    .prologue
    .line 482
    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;->mWeakAdView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdView;

    .line 483
    .local v0, adView:Lcom/mopub/mobileads/AdView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/AdView;->setIsLoading(Z)V

    .line 488
    iget-object v1, v0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 489
    .local v1, mpv:Lcom/mopub/mobileads/MoPubView;
    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;->mParamsHash:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubView;->loadNativeSDK(Ljava/util/HashMap;)V

    goto :goto_0
.end method
