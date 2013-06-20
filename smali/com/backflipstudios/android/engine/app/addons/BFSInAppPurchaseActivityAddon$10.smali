.class Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$10;
.super Ljava/lang/Object;
.source "BFSInAppPurchaseActivityAddon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->productRestoreFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$10;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "d89d039c8abbd447b96dfa29b8cace8e77acc544"

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$10;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$700(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x895634

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 301
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$10;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$800(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x895637

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 302
    return-void
.end method
