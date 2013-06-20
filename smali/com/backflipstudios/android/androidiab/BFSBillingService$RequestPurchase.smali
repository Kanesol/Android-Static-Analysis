.class Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;
.super Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;
.source "BFSBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field final synthetic this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "itemId"

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "itemId"
    .parameter "developerPayload"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    .line 529
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I)V

    .line 531
    iput-object p2, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 532
    iput-object p3, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 533
    return-void
.end method


# virtual methods
.method protected responseCodeReceived(Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
    .locals 1
    .parameter "responseCode"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    invoke-static {v0, p0, p1}, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V

    .line 564
    return-void
.end method

.method protected run()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    const-string v4, "android_iab"

    const-string v5, "BFSBillingService: RequestPurchase BillingRequest"

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v4, "REQUEST_PURCHASE"

    invoke-virtual {p0, v4}, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 541
    .local v2, request:Landroid/os/Bundle;
    const-string v4, "ITEM_ID"

    iget-object v5, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v4, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 545
    const-string v4, "DEVELOPER_PAYLOAD"

    iget-object v5, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_0
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 549
    .local v3, response:Landroid/os/Bundle;
    const-string v4, "PURCHASE_INTENT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 550
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-nez v1, :cond_1

    .line 551
    const-string v4, "android_iab"

    const-string v5, "BFSBillingService$RequestPurchase.run(): Error with requestPurchase"

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-wide v4, Lcom/backflipstudios/android/androidiab/BFSIABConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 557
    :goto_0
    return-wide v4

    .line 555
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 556
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v1, v0}, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 557
    const-string v4, "REQUEST_ID"

    sget-wide v5, Lcom/backflipstudios/android/androidiab/BFSIABConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method
