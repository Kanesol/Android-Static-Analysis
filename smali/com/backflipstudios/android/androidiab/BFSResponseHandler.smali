.class Lcom/backflipstudios/android/androidiab/BFSResponseHandler;
.super Ljava/lang/Object;
.source "BFSResponseHandler.java"


# static fields
.field private static sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"

    .prologue
    .line 79
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .parameter "supported"

    .prologue
    .line 62
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->onBillingSupported(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "purchaseState"
    .parameter "productId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 105
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->postPurchaseStateChange(Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public static declared-synchronized register(Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 42
    const-class v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 125
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->onRequestPurchaseResponse(Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V

    .line 128
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
    .locals 1
    .parameter "context"
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 141
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->onRestoreTransactionsResponse(Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V

    .line 144
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 51
    const-class v0, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->sPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
