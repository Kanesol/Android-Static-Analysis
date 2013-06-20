.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$11;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->pauseAdWithTag(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$11;->val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;

    iput-object p2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$11;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$11;->val$addon:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;

    iget-object v1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$11;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;->pauseAdWithTag(Ljava/lang/String;)V

    .line 344
    return-void
.end method
