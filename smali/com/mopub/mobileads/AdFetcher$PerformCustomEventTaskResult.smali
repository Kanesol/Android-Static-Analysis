.class Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;
.super Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerformCustomEventTaskResult"
.end annotation


# instance fields
.field protected mHeader:Lorg/apache/http/Header;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdView;Lorg/apache/http/Header;)V
    .locals 0
    .parameter "adView"
    .parameter "header"

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;-><init>(Lcom/mopub/mobileads/AdView;)V

    .line 430
    iput-object p2, p0, Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;->mHeader:Lorg/apache/http/Header;

    .line 431
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;->mHeader:Lorg/apache/http/Header;

    .line 470
    return-void
.end method

.method public execute()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 434
    iget-object v7, p0, Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;->mWeakAdView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdView;

    .line 435
    .local v0, adView:Lcom/mopub/mobileads/AdView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {v0, v8}, Lcom/mopub/mobileads/AdView;->setIsLoading(Z)V

    .line 440
    iget-object v5, v0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 442
    .local v5, mpv:Lcom/mopub/mobileads/MoPubView;
    iget-object v7, p0, Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;->mHeader:Lorg/apache/http/Header;

    if-nez v7, :cond_2

    .line 443
    const-string v7, "MoPub"

    const-string v8, "Couldn\'t call custom method because the server did not specify one."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubView;->adFailed()V

    goto :goto_0

    .line 448
    :cond_2
    iget-object v7, p0, Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;->mHeader:Lorg/apache/http/Header;

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, methodName:Ljava/lang/String;
    const-string v7, "MoPub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trying to call method named "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v5}, Lcom/mopub/mobileads/MoPubView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 455
    .local v6, userActivity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 456
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/mopub/mobileads/MoPubView;

    aput-object v9, v7, v8

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 457
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 458
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 459
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v7, "MoPub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t perform custom method named "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(MoPubView view) because your activity class has no such method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 463
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "MoPub"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t perform custom method named "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
