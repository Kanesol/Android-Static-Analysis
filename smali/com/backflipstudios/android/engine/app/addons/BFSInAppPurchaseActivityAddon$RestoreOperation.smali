.class Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;
.super Ljava/lang/Object;
.source "BFSInAppPurchaseActivityAddon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreOperation"
.end annotation


# instance fields
.field private m_params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->m_params:Ljava/util/Map;

    .line 466
    iput-object p2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->m_params:Ljava/util/Map;

    .line 467
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 472
    new-instance v17, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;

    const-string v21, "/purchases/restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;-><init>(Ljava/lang/String;)V

    .line 473
    .local v17, req:Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->m_params:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->setParameters(Ljava/util/Map;)V

    .line 475
    :try_start_0
    const-string v21, "bfsplatform"

    const-string v22, "BFSInAppPurchaseActivityAddon: Restoring purchases"

    invoke-static/range {v21 .. v22}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {v17 .. v17}, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->synchronousRequest()Lorg/json/JSONObject;

    move-result-object v18

    .line 478
    .local v18, response:Lorg/json/JSONObject;
    if-eqz v18, :cond_8

    .line 479
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v19, restored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static/range {v21 .. v21}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v22

    monitor-enter v22
    :try_end_0
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 483
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static/range {v21 .. v21}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v21

    const-string v23, "__d12"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 484
    .local v16, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    if-nez v16, :cond_0

    .line 485
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .restart local v16       #purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    :cond_0
    const-string v21, "products"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 489
    .local v3, array:Lorg/json/JSONArray;
    if-eqz v3, :cond_6

    .line 490
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 491
    .local v12, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v12, :cond_6

    .line 492
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 493
    .local v13, object:Lorg/json/JSONObject;
    if-eqz v13, :cond_5

    .line 494
    const/4 v6, 0x0

    .line 495
    .local v6, difference:I
    const-string v21, "product"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 496
    .local v15, productid:Ljava/lang/String;
    const-string v21, "count"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, countStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 498
    .local v4, count:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    .line 499
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 501
    :cond_1
    const/4 v8, 0x0

    .line 502
    .local v8, found:Z
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    .line 503
    .local v14, product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    iget-object v0, v14, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 504
    const/16 v21, 0x0

    iget v0, v14, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    move/from16 v23, v0

    sub-int v23, v4, v23

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 505
    iput v4, v14, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    .line 506
    const/4 v8, 0x1

    .line 510
    .end local v14           #product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    :cond_3
    if-nez v8, :cond_4

    .line 511
    new-instance v21, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    move-object/from16 v0, v21

    invoke-direct {v0, v15, v4}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    move v6, v4

    .line 514
    :cond_4
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    if-ge v11, v6, :cond_5

    .line 515
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 491
    .end local v4           #count:I
    .end local v5           #countStr:Ljava/lang/String;
    .end local v6           #difference:I
    .end local v8           #found:Z
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #j:I
    .end local v15           #productid:Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 521
    .end local v9           #i:I
    .end local v12           #length:I
    .end local v13           #object:Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static/range {v21 .. v21}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v21

    const-string v23, "__d12"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    const-string v21, "userkey"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 524
    .local v20, userkey:Ljava/lang/String;
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_7

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static/range {v21 .. v21}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v21

    const-string v23, "__k34"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static/range {v21 .. v21}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->flush()V

    .line 529
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->productsRestored(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindServerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 546
    .end local v3           #array:Lorg/json/JSONArray;
    .end local v16           #purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    .end local v18           #response:Lorg/json/JSONObject;
    .end local v19           #restored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20           #userkey:Ljava/lang/String;
    :cond_8
    :goto_2
    return-void

    .line 529
    .restart local v18       #response:Lorg/json/JSONObject;
    .restart local v19       #restored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v21

    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v21
    :try_end_4
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindServerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 533
    .end local v18           #response:Lorg/json/JSONObject;
    .end local v19           #restored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 534
    .local v7, e:Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException;
    const-string v21, "bfsplatform"

    const-string v22, "BFSInAppBillingActivityAddon$RestoreOperation.run()"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->productRestoreFailed()V

    goto :goto_2

    .line 536
    .end local v7           #e:Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException;
    :catch_1
    move-exception v7

    .line 537
    .local v7, e:Lcom/backflipstudios/android/overmind/BFSOvermindServerException;
    const-string v21, "bfsplatform"

    const-string v22, "BFSInAppBillingActivityAddon$RestoreOperation.run()"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->productRestoreFailed()V

    goto :goto_2

    .line 539
    .end local v7           #e:Lcom/backflipstudios/android/overmind/BFSOvermindServerException;
    :catch_2
    move-exception v7

    .line 540
    .local v7, e:Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException;
    const-string v21, "bfsplatform"

    const-string v22, "BFSInAppBillingActivityAddon$RestoreOperation.run()"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->productRestoreFailed()V

    goto :goto_2

    .line 542
    .end local v7           #e:Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException;
    :catch_3
    move-exception v7

    .line 543
    .local v7, e:Ljava/lang/Exception;
    const-string v21, "bfsplatform"

    const-string v22, "BFSInAppBillingActivityAddon$RestoreOperation.run()"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->productRestoreFailed()V

    goto :goto_2
.end method
