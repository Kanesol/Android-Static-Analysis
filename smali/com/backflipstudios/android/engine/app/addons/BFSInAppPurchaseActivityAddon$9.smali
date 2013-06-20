.class Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$9;
.super Ljava/lang/Object;
.source "BFSInAppPurchaseActivityAddon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->productsRestored(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

.field final synthetic val$productIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$9;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    iput-object p2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$9;->val$productIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "46dbec4afc9d3c9ab902453866cfebed3f49e7fd"

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$9;->val$productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$9;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$500(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x895634

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 287
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$9;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$600(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x895636

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 288
    return-void
.end method
