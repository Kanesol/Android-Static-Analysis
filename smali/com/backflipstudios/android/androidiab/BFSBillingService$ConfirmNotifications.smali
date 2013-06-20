.class Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;
.super Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;
.source "BFSBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmNotifications"
.end annotation


# instance fields
.field final mNotifyIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    .line 576
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I)V

    .line 578
    iput-object p3, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    .line 579
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 584
    const-string v2, "android_iab"

    const-string v3, "BFSBillingService: Confirm Notifications BillingRequest"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v2, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v2}, Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 587
    .local v0, request:Landroid/os/Bundle;
    const-string v2, "NOTIFY_IDS"

    iget-object v3, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;->mNotifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 589
    .local v1, response:Landroid/os/Bundle;
    const-string v2, "confirmNotifications"

    invoke-virtual {p0, v2, v1}, Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 590
    const-string v2, "REQUEST_ID"

    sget-wide v3, Lcom/backflipstudios/android/androidiab/BFSIABConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
