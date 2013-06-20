.class Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;
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
    name = "RecordOperation"
.end annotation


# instance fields
.field private m_paramList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p2, paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->m_paramList:Ljava/util/ArrayList;

    .line 403
    iput-object p2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->m_paramList:Ljava/util/ArrayList;

    .line 404
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->m_paramList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 410
    .local v4, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;

    const-string v12, "/purchases/record"

    invoke-direct {v8, v12}, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;-><init>(Ljava/lang/String;)V

    .line 411
    .local v8, req:Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;
    invoke-virtual {v8, v4}, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->setParameters(Ljava/util/Map;)V

    .line 413
    :try_start_0
    const-string v12, "productid"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 414
    .local v7, productid:Ljava/lang/String;
    const-string v12, "productcount"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 416
    .local v6, productcount:I
    const-string v12, "bfsplatform"

    const-string v13, "BFSInAppPurchaseActivityAddon: Recording purchase: %s (%d)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v8}, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->synchronousRequest()Lorg/json/JSONObject;

    move-result-object v9

    .line 419
    .local v9, response:Lorg/json/JSONObject;
    if-eqz v9, :cond_0

    .line 420
    const-string v12, "bfsplatform"

    const-string v13, "BFSInAppPurchaseActivityAddon: Successfully recorded purchase (%s)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static {v12}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 424
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static {v12}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v12

    const-string v14, "__b06"

    invoke-virtual {v12, v14}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 425
    .local v10, to_report:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    if-eqz v10, :cond_3

    .line 426
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    .line 427
    .local v5, product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    iget-object v12, v5, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 428
    const/4 v12, 0x0

    iget v14, v5, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    sub-int/2addr v14, v6

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v5, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    .line 432
    .end local v5           #product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static {v12}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v12

    const-string v14, "__b06"

    invoke-virtual {v12, v14, v10}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v12, "userkey"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 436
    .local v11, userkey:Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 437
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static {v12}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v12

    const-string v14, "__k34"

    invoke-virtual {v12, v14, v11}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    #getter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    invoke-static {v12}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    move-result-object v12

    invoke-virtual {v12}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->flush()V

    .line 441
    monitor-exit v13

    goto/16 :goto_0

    .end local v10           #to_report:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    .end local v11           #userkey:Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v12
    :try_end_2
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindServerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 443
    .end local v6           #productcount:I
    .end local v7           #productid:Ljava/lang/String;
    .end local v9           #response:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 444
    .local v1, e:Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException;
    const-string v12, "bfsplatform"

    const-string v13, "BFSINAppBillingActivityAddon$RecordOperation.run()"

    invoke-static {v12, v13, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    const/4 v13, 0x1

    #setter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastReportFailed:Z
    invoke-static {v12, v13}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$1002(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Z)Z

    goto/16 :goto_0

    .line 446
    .end local v1           #e:Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException;
    :catch_1
    move-exception v1

    .line 447
    .local v1, e:Lcom/backflipstudios/android/overmind/BFSOvermindServerException;
    const-string v12, "bfsplatform"

    const-string v13, "BFSINAppBillingActivityAddon$RecordOperation.run()"

    invoke-static {v12, v13, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    const/4 v13, 0x1

    #setter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastReportFailed:Z
    invoke-static {v12, v13}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$1002(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Z)Z

    goto/16 :goto_0

    .line 449
    .end local v1           #e:Lcom/backflipstudios/android/overmind/BFSOvermindServerException;
    :catch_2
    move-exception v1

    .line 450
    .local v1, e:Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException;
    const-string v12, "bfsplatform"

    const-string v13, "BFSINAppBillingActivityAddon$RecordOperation.run()"

    invoke-static {v12, v13, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    const/4 v13, 0x1

    #setter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastReportFailed:Z
    invoke-static {v12, v13}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$1002(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Z)Z

    goto/16 :goto_0

    .line 452
    .end local v1           #e:Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException;
    :catch_3
    move-exception v1

    .line 453
    .local v1, e:Ljava/lang/Exception;
    const-string v12, "bfsplatform"

    const-string v13, "BFSINAppBillingActivityAddon$RecordOperation.run()"

    invoke-static {v12, v13, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;->this$0:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    const/4 v13, 0x1

    #setter for: Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastReportFailed:Z
    invoke-static {v12, v13}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->access$1002(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Z)Z

    goto/16 :goto_0

    .line 457
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #req:Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;
    :cond_5
    return-void
.end method
