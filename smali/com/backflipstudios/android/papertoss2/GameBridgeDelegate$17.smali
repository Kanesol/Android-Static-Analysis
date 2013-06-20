.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$17;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->prv_restorePurchases(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$17;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    iput-object p2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$17;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .parameter "eventName"
    .parameter "obj0"
    .parameter "obj2"

    .prologue
    .line 580
    const-string v7, "46dbec4afc9d3c9ab902453866cfebed3f49e7fd"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 581
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 583
    const-string v7, "pt2"

    const-string v8, "BridgeDelegate: product restore successful"

    invoke-static {v7, v8}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x0

    .line 586
    .local v3, productIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    instance-of v7, p2, Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    move-object v3, p2

    .line 587
    check-cast v3, Ljava/util/ArrayList;

    .line 590
    :cond_0
    const/4 v1, 0x0

    .line 591
    .local v1, count:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 593
    .local v5, productid:Ljava/lang/String;
    const-string v7, "pt2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BridgeDelegate: restored product id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v7

    const-string v8, "products.name"

    const-string v9, "standard"

    invoke-virtual {v7, v8, v9, v5}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, productName:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 597
    :cond_1
    const-string v7, "pt2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BridgeDelegate: Unknown product id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_2
    const-string v7, "ad_buyout"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 602
    const-string v7, "pt2"

    const-string v8, "BridgeDelegate: Attempting to restore ad buyout"

    invoke-static {v7, v8}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v7, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$17;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    const-string v8, "BFSAdBuyoutActivityAddon"

    invoke-virtual {v7, v8}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getAddonByName(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;

    .line 605
    .local v0, addon:Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;
    if-eqz v0, :cond_3

    .line 606
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->restoreAdBuyout()V

    .line 611
    .end local v0           #addon:Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;
    :cond_3
    if-lez v1, :cond_4

    .line 612
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v1, v1, 0x1

    .line 617
    goto :goto_0

    .line 619
    .end local v4           #productName:Ljava/lang/String;
    .end local v5           #productid:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$17;->val$callbackId:Ljava/lang/String;

    const-string v8, "success"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .end local v1           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #productIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_6
    :goto_1
    return-void

    .line 620
    :cond_7
    const-string v7, "d89d039c8abbd447b96dfa29b8cace8e77acc544"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 621
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 623
    const-string v7, "pt2"

    const-string v8, "BridgeDelegate: product restore failed"

    invoke-static {v7, v8}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v7, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$17;->val$callbackId:Ljava/lang/String;

    const-string v8, "failed"

    const-string v9, ""

    #calls: Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->sendEngineCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
