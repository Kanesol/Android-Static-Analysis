.class Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;
.super Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;
.source "BFSBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPurchaseInformation"
.end annotation


# instance fields
.field mNonce:J

.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I)V

    .line 604
    iput-object p3, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    .line 605
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 625
    invoke-super {p0, p1}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 626
    iget-wide v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;->mNonce:J

    invoke-static {v0, v1}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->removeNonce(J)V

    .line 627
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    const-string v2, "android_iab"

    const-string v3, "BFSBillingService: Get Purchase Information BillingRequest"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;->mNonce:J

    .line 614
    const-string v2, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v2}, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 615
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 616
    const-string v2, "NOTIFY_IDS"

    iget-object v3, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 618
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "getPurchaseInformation"

    invoke-virtual {p0, v2, v1}, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 619
    const-string v2, "REQUEST_ID"

    sget-wide v3, Lcom/backflipstudios/android/androidiab/BFSIABConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
