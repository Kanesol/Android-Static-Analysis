.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->purchaseProduct(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$productName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;->val$productName:Ljava/lang/String;

    iput-object p2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 414
    const/4 v1, 0x0

    .line 416
    .local v1, purchasing:Z
    const-string v2, "pt2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BridgeDelegate: Attempting to purchase product: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;->val$productName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v2

    const-string v3, "products.value"

    const-string v4, "standard"

    iget-object v5, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;->val$productName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, productId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 420
    :cond_0
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate.purchaseProduct(): Product id not found for product name: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;->val$productName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 428
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate: purchasing product..."

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :goto_1
    return-void

    .line 422
    :cond_2
    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;->val$callbackId:Ljava/lang/String;

    iget-object v3, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;->val$productName:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->purchaseProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3, v0}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    const/4 v1, 0x1

    goto :goto_0

    .line 430
    :cond_3
    const-string v2, "pt2"

    const-string v3, "BridgeDelegate: Not purchasing product, sending callback"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;->val$callbackId:Ljava/lang/String;

    iget-object v3, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$13;->val$productName:Ljava/lang/String;

    const-string v4, "unavailable"

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
