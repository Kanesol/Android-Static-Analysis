.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$16;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->restorePurchases(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$16;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 549
    .local v0, restoring:Z
    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$16;->val$callbackId:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->prv_restorePurchases(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$300(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    const/4 v0, 0x1

    .line 553
    :cond_0
    if-eqz v0, :cond_1

    .line 554
    const-string v1, "pt2"

    const-string v2, "BridgeDelegate: restoring products..."

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_0
    return-void

    .line 556
    :cond_1
    const-string v1, "pt2"

    const-string v2, "BridgeDelegate: restore failed, sending callback"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$16;->val$callbackId:Ljava/lang/String;

    const-string v2, "unavailable"

    const-string v3, ""

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
