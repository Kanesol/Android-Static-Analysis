.class abstract Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;
.super Ljava/lang/Object;
.source "BFSBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BillingRequest"
.end annotation


# instance fields
.field protected mRequestId:J

.field private final mStartId:I

.field final synthetic this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I)V
    .locals 0
    .parameter
    .parameter "startId"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput p2, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->mStartId:I

    .line 386
    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->mStartId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "method"
    .parameter "response"

    .prologue
    .line 479
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->valueOf(I)Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    move-result-object v0

    .line 480
    .local v0, responseCode:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;
    const-string v1, "android_iab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSBillingservice: Response: Method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "method"

    .prologue
    .line 470
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v0, request:Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    invoke-virtual {v2}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 449
    const-string v0, "android_iab"

    const-string v1, "BFSBillingservice$BillingRequest.onRemoteException()"

    invoke-static {v0, v1, p1}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 451
    return-void
.end method

.method protected responseCodeReceived(Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 466
    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 5

    .prologue
    .line 425
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->mRequestId:J

    .line 428
    iget-wide v1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->mRequestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 429
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$300()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->mRequestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    const/4 v1, 0x1

    .line 438
    :goto_0
    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 438
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 436
    :cond_1
    const-string v1, "android_iab"

    const-string v2, "BFSBillingservice.runIfConnected(): Not connected (service is null)"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public runRequest()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 400
    invoke-virtual {p0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const-string v1, "android_iab"

    const-string v2, "BFSBillingservice.runRequest(): Request sent"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return v0

    .line 405
    :cond_0
    const-string v1, "android_iab"

    const-string v2, "BFSBillingservice.runRequest(): Attempting to bind to the market billing service"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    #calls: Lcom/backflipstudios/android/androidiab/BFSBillingService;->bindToMarketBillingService()Z
    invoke-static {v1}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$000(Lcom/backflipstudios/android/androidiab/BFSBillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    const-string v1, "android_iab"

    const-string v2, "BFSBillingservice.runRequest(): Request queued"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$100()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_1
    const-string v0, "android_iab"

    const-string v1, "BFSBillingservice.runRequest(): Unable to run request"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x0

    goto :goto_0
.end method
