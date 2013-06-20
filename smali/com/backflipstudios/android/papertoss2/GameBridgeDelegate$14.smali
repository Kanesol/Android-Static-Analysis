.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->purchaseProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$productName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    iput-object p2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$productId:Ljava/lang/String;

    iput-object p3, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$callbackId:Ljava/lang/String;

    iput-object p4, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$productName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "eventName"
    .parameter "obj0"
    .parameter "obj2"

    .prologue
    .line 465
    const-string v0, "3ad59fe3375207a7420b71086909b94735dabe91"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 468
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->showPurchaseFailedErrorDialog()V

    .line 470
    const-string v0, "pt2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BridgeDelegate: Product unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$callbackId:Ljava/lang/String;

    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$productName:Ljava/lang/String;

    const-string v2, "unavailable"

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const-string v0, "4ca44b0a78a84fb26c4543a81e7606dba6e5710b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 475
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->showPurchaseFailedErrorDialog()V

    .line 477
    const-string v0, "pt2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BridgeDelegate: Purchase failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$callbackId:Ljava/lang/String;

    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$productName:Ljava/lang/String;

    const-string v2, "failed"

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_2
    const-string v0, "03e50f29ce5e6f2bcb931e96235b6d1e66691cee"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 482
    const-string v0, "pt2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BridgeDelegate: Purchase successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$callbackId:Ljava/lang/String;

    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$14;->val$productName:Ljava/lang/String;

    const-string v2, "success"

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
