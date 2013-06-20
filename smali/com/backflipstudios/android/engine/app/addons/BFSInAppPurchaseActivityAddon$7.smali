.class Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$7;
.super Ljava/lang/Object;
.source "BFSInAppPurchaseActivityAddon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->purchaseUnavailableForProduct(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$7;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    iput-object p2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$7;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "3ad59fe3375207a7420b71086909b94735dabe91"

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$7;->val$productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    return-void
.end method
