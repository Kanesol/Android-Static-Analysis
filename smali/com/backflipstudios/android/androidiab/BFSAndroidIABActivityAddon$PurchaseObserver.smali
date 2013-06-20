.class Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;
.super Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;
.source "BFSAndroidIABActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;->this$0:Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;

    .line 136
    invoke-direct {p0, p2}, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;-><init>(Landroid/app/Activity;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 3
    .parameter "supported"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;->this$0:Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;

    #setter for: Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mBillingSupported:Z
    invoke-static {v0, p1}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->access$002(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Z)Z

    .line 142
    const-string v0, "android_iab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BFSAndroidIABActivityAddon: (SUPPORTED) supported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onPurchaseStateChange(Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .parameter "purchaseState"
    .parameter "itemId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 148
    const-string v0, "android_iab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BFSAndroidIABActivityAddon: (PURCHASE STATE CHANGE) itemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " purchaseState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->PURCHASED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    if-ne p1, v0, :cond_1

    .line 151
    const-string v0, "android_iab"

    const-string v1, "BFSAndroidIABActivityAddon: The item was purchased"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;->this$0:Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;

    #calls: Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->recordPurchase(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->access$100(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->CANCELED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    if-ne p1, v0, :cond_2

    .line 154
    const-string v0, "android_iab"

    const-string v1, "BFSAndroidIABActivityAddon: The item was cancelled."

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->REFUNDED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    if-ne p1, v0, :cond_0

    .line 156
    const-string v0, "android_iab"

    const-string v1, "BFSAndroidIABActivityAddon: The item was refunded."

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestPurchaseResponse(Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
    .locals 4
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 163
    const-string v1, "android_iab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSAndroidIABActivityAddon: (REQUEST PURCHASE RESPONSE) = request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " responseCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_OK:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    if-ne p2, v1, :cond_0

    .line 166
    const-string v1, "PURCHASE_SUCCESS"

    invoke-static {v1}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->newEvent(Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v1

    const-string v2, "PRODUCT_ID"

    iget-object v3, p1, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->send()V

    .line 167
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;->this$0:Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;

    iget-object v2, p1, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->purchaseSuccessfulForProduct(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->access$200(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v1, "PURCHASE_FAILURE"

    invoke-static {v1}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->newEvent(Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v0

    .line 170
    .local v0, event:Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;
    const-string v1, "PRODUCT_ID"

    iget-object v2, p1, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    .line 171
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_USER_CANCELED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    if-ne p2, v1, :cond_2

    .line 172
    const-string v1, "REASON"

    const-string v2, "RESULT_USER_CANCELED"

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    .line 184
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->send()V

    .line 186
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;->this$0:Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;

    iget-object v2, p1, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->purchaseFailedForProduct(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->access$300(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_2
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    if-ne p2, v1, :cond_3

    .line 174
    const-string v1, "REASON"

    const-string v2, "RESULT_SERVICE_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    goto :goto_1

    .line 175
    :cond_3
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    if-ne p2, v1, :cond_4

    .line 176
    const-string v1, "REASON"

    const-string v2, "RESULT_BILLING_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    goto :goto_1

    .line 177
    :cond_4
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    if-ne p2, v1, :cond_5

    .line 178
    const-string v1, "REASON"

    const-string v2, "RESULT_ITEM_UNAVAILABLE"

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    goto :goto_1

    .line 179
    :cond_5
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    if-ne p2, v1, :cond_6

    .line 180
    const-string v1, "REASON"

    const-string v2, "RESULT_DEVELOPER_ERROR"

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    goto :goto_1

    .line 181
    :cond_6
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_ERROR:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    if-ne p2, v1, :cond_1

    .line 182
    const-string v1, "REASON"

    const-string v2, "RESULT_ERROR"

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    goto :goto_1
.end method

.method public onRestoreTransactionsResponse(Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
    .locals 3
    .parameter "request"
    .parameter "responseCode"

    .prologue
    .line 193
    const-string v0, "android_iab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BFSAndroidIABActivityAddon: (RESTORE) responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_OK:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;->this$0:Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;

    const-string v1, "__cx42"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #calls: Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->setIntProperty(Ljava/lang/String;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v2}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->access$400(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    :cond_0
    return-void
.end method
