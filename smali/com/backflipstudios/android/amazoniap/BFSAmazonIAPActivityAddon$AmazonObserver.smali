.class Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;
.super Lcom/amazon/inapp/purchasing/BasePurchasingObserver;
.source "BFSAmazonIAPActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmazonObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;->this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    .line 116
    invoke-direct {p0, p2}, Lcom/amazon/inapp/purchasing/BasePurchasingObserver;-><init>(Landroid/content/Context;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 7
    .parameter "itemDataResponse"

    .prologue
    .line 122
    const-string v4, "bfamazoniap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BFSAmazonIAPActivityAddon: Item data response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v4

    sget-object v5, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v4

    sget-object v5, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    if-ne v4, v5, :cond_2

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemData()Ljava/util/Map;

    move-result-object v0

    .line 127
    .local v0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    iget-object v4, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;->this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #setter for: Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_products:Ljava/util/HashMap;
    invoke-static {v4, v5}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->access$002(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 129
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v3

    .line 130
    .local v3, unavailable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, sku:Ljava/lang/String;
    const-string v4, "bfamazoniap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BFSAmazonIAPActivityAddon: Unable to fetch item data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v2           #sku:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;->this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    const/4 v5, 0x0

    #setter for: Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_productInfoRequest:Ljava/util/Set;
    invoke-static {v4, v5}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->access$102(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/util/Set;)Ljava/util/Set;

    .line 138
    .end local v0           #data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/amazon/inapp/purchasing/Item;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #unavailable:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 136
    :cond_2
    const-string v4, "bfamazoniap"

    const-string v5, "BFSAmazonIAPActivityAddon: Unable to fetch item data"

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 4
    .parameter "purchaseResponse"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;->this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    #getter for: Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_requestMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->access$200(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, productId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    const-string v1, "bfamazoniap"

    const-string v2, "BFSAmazonIAPActivityAddon: Failed to look up product id for purchase response."

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;->this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    #getter for: Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_requestMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->access$200(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v1, v2, :cond_2

    .line 152
    const-string v1, "bfamazoniap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSAmazonIAPActivityAddon: Successfully purchased product: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;->this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    #calls: Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->purchaseSuccessfulForProduct(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->access$300(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;->this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    #calls: Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->recordPurchase(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->access$400(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ALREADY_ENTITLED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v1, v2, :cond_3

    .line 158
    const-string v1, "bfamazoniap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSAmazonIAPActivityAddon: Already purchased product: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;->this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    #calls: Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->purchaseSuccessfulForProduct(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->access$500(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v1, v2, :cond_5

    .line 162
    const-string v1, "bfamazoniap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSAmazonIAPActivityAddon: Failed to purchase product: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;->this$0:Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;

    #calls: Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->purchaseFailedForProduct(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->access$600(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v1, v2, :cond_4

    .line 164
    const-string v1, "bfamazoniap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSAmazonIAPActivityAddon: Purchase failed. Invalid product id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
