.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$19;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->prv_doAdBuyout(Ljava/lang/String;)Z
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
    .line 674
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$19;->val$callbackId:Ljava/lang/String;

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
    .line 678
    const-string v0, "0f5f96c6945cc7f7157e49e5ed25e4fe5a612011"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 681
    const-string v0, "pt2"

    const-string v1, "BridgeDelegate: ad buyout successful"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$19;->val$callbackId:Ljava/lang/String;

    const-string v1, "success"

    const-string v2, ""

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    const-string v0, "0f5f96c6945cc7f7157e49e5ed25e4fe5a612011"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 686
    const-string v0, "pt2"

    const-string v1, "BridgeDelegate: ad buyout failed"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$19;->val$callbackId:Ljava/lang/String;

    const-string v1, "failed"

    const-string v2, ""

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
