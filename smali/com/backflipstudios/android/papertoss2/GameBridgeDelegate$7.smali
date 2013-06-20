.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$7;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->showInterstitialAdForTag(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 239
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$7;->val$callbackId:Ljava/lang/String;

    iput-object p2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$7;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, shown:Z
    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$7;->val$callbackId:Ljava/lang/String;

    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$7;->val$tag:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->showNormalInterstitial(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$000(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 249
    :cond_0
    if-nez v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$7;->val$callbackId:Ljava/lang/String;

    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$7;->val$tag:Ljava/lang/String;

    const-string v3, ""

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_1
    return-void
.end method
