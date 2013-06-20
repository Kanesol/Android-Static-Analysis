.class Lcom/backflipstudios/android/androidiab/BFSBillingService$CheckBillingSupported;
.super Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;
.source "BFSBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckBillingSupported"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$CheckBillingSupported;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    .line 494
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I)V

    .line 495
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    const-string v4, "android_iab"

    const-string v5, "BFSBillingService: Check Billing Supported BillingRequest"

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v4, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v4}, Lcom/backflipstudios/android/androidiab/BFSBillingService$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 503
    .local v1, request:Landroid/os/Bundle;
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->access$200()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 504
    .local v2, response:Landroid/os/Bundle;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 505
    .local v3, responseCode:I
    sget-object v4, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_OK:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    invoke-virtual {v4}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 506
    .local v0, billingSupported:Z
    :goto_0
    invoke-static {v0}, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->checkBillingSupportedResponse(Z)V

    .line 507
    sget-wide v4, Lcom/backflipstudios/android/androidiab/BFSIABConsts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v4

    .line 505
    .end local v0           #billingSupported:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
