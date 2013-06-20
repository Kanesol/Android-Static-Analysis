.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$15;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->showPurchaseUserId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$15;->val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$15;->val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->showUserIdentifier()V

    .line 536
    return-void
.end method
