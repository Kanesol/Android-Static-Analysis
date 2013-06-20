.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$20;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->showRatingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/BFSEngineApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$20;->val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 722
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$20;->val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    const-string v1, "target-storefront"

    const-string v2, "amazon"

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->checkBuildConfigurationParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    sget-object v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->Amazon:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog;->showRateDialog(Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;)Z

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_0
    sget-object v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->Google:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog;->showRateDialog(Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;)Z

    goto :goto_0
.end method
