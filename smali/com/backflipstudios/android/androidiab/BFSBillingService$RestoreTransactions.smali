.class Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;
.super Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;
.source "BFSBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    .line 642
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I)V

    .line 643
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 662
    invoke-super {p0, p1}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 663
    iget-wide v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->removeNonce(J)V

    .line 664
    return-void
.end method

.method protected responseCodeReceived(Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
    .locals 1
    .parameter "responseCode"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    invoke-static {v0, p0, p1}, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V

    .line 670
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
    .line 648
    const-string v2, "android_iab"

    const-string v3, "BFSBillingService: Restore Transactions BillingRequest"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;->mNonce:J

    .line 652
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 653
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 654
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 655
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 656
    const-string v2, "REQUEST_ID"

    sget-wide v3, Lcom/backflipstudios/android/androidiab/BFSIABConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
