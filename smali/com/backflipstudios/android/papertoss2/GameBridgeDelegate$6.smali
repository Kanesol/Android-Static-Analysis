.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$6;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->showNormalInterstitial(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$6;->val$callbackId:Ljava/lang/String;

    iput-object p2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$6;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "eventName"
    .parameter "obj0"
    .parameter "obj2"

    .prologue
    .line 204
    const-string v1, "a87700e11490082991a3205dcda97151d5e0d9fe"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v1, "d6de37f920ccbf0ab8b5bfc459e3055ed93747e0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 209
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getEngineInstance()Lcom/backflipstudios/android/engine/app/BFSEngine;

    move-result-object v0

    .line 210
    .local v0, engine:Lcom/backflipstudios/android/engine/app/BFSEngine;
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$6;->val$callbackId:Ljava/lang/String;

    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$6;->val$tag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onAsyncCallbackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v0           #engine:Lcom/backflipstudios/android/engine/app/BFSEngine;
    :cond_2
    const-string v1, "ec3ca73d41b1a05c47193ea0ff646fbb26d1761e"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 216
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getEngineInstance()Lcom/backflipstudios/android/engine/app/BFSEngine;

    move-result-object v0

    .line 217
    .restart local v0       #engine:Lcom/backflipstudios/android/engine/app/BFSEngine;
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$6;->val$callbackId:Ljava/lang/String;

    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$6;->val$tag:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onAsyncCallbackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
