.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$18;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->doAdBuyout(Ljava/lang/String;)V
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
    .line 637
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$18;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 644
    .local v0, doing:Z
    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$18;->val$callbackId:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->prv_doAdBuyout(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$400(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    const/4 v0, 0x1

    .line 648
    :cond_0
    if-nez v0, :cond_1

    .line 649
    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$18;->val$callbackId:Ljava/lang/String;

    const-string v2, "failed"

    const-string v3, ""

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_1
    return-void
.end method
