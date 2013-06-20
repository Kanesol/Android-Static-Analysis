.class Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;
.super Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadHtmlAdTaskResult"
.end annotation


# instance fields
.field protected mData:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter "adView"
    .parameter "data"

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;-><init>(Lcom/mopub/mobileads/AdView;)V

    .line 502
    iput-object p2, p0, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;->mData:Ljava/lang/String;

    .line 503
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/AdView;Ljava/lang/String;Lcom/mopub/mobileads/AdFetcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 497
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;->mData:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public execute()V
    .locals 6

    .prologue
    .line 506
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;->mWeakAdView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdView;

    .line 507
    .local v0, adView:Lcom/mopub/mobileads/AdView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;->mData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdView;->setResponseString(Ljava/lang/String;)V

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getServerHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;->mData:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/AdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
