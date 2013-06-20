.class public Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;
.super Ljava/lang/Object;
.source "BFSThirdPartyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    }
.end annotation


# static fields
.field private static m_instance:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;


# instance fields
.field private m_categories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_instance:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .parameter "manifestName"
    .parameter "target"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_target:Ljava/lang/String;

    .line 22
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_categories:Ljava/util/HashMap;

    .line 26
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_target:Ljava/lang/String;

    .line 28
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_categories:Ljava/util/HashMap;

    .line 31
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->readContentsOfFile(Ljava/lang/String;)[B

    move-result-object v5

    .line 32
    .local v5, data:[B
    if-eqz v5, :cond_1

    .line 33
    new-instance v21, Lorg/json/JSONTokener;

    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct/range {v21 .. v22}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 34
    .local v21, tokener:Lorg/json/JSONTokener;
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/json/JSONObject;

    .line 37
    .local v16, root:Lorg/json/JSONObject;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v18

    .line 38
    .local v18, rootKeys:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 39
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 41
    .local v17, rootKey:Ljava/lang/String;
    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 43
    .local v19, rootObject:Lorg/json/JSONArray;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v20, serviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 46
    .local v10, length:I
    const/4 v7, 0x0

    .local v7, index_h:I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 48
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 50
    .local v12, level1Item:Lorg/json/JSONObject;
    new-instance v9, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;

    invoke-direct {v9}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;-><init>()V

    .line 53
    .local v9, item:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 54
    .local v14, level1ItemKeys:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 55
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 56
    .local v13, level1ItemKey:Ljava/lang/String;
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 57
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 83
    .end local v5           #data:[B
    .end local v7           #index_h:I
    .end local v9           #item:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .end local v10           #length:I
    .end local v12           #level1Item:Lorg/json/JSONObject;
    .end local v13           #level1ItemKey:Ljava/lang/String;
    .end local v14           #level1ItemKeys:Ljava/util/Iterator;
    .end local v16           #root:Lorg/json/JSONObject;
    .end local v17           #rootKey:Ljava/lang/String;
    .end local v18           #rootKeys:Ljava/util/Iterator;
    .end local v19           #rootObject:Lorg/json/JSONArray;
    .end local v20           #serviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    .end local v21           #tokener:Lorg/json/JSONTokener;
    :catch_0
    move-exception v6

    .line 84
    .local v6, e:Ljava/lang/Exception;
    const-string v22, "bfsplatform"

    const-string v23, "BFSThirdPartyRegistry.BFSThirdPartyRegistry"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 58
    .restart local v5       #data:[B
    .restart local v7       #index_h:I
    .restart local v9       #item:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .restart local v10       #length:I
    .restart local v12       #level1Item:Lorg/json/JSONObject;
    .restart local v13       #level1ItemKey:Ljava/lang/String;
    .restart local v14       #level1ItemKeys:Ljava/util/Iterator;
    .restart local v16       #root:Lorg/json/JSONObject;
    .restart local v17       #rootKey:Ljava/lang/String;
    .restart local v18       #rootKeys:Ljava/util/Iterator;
    .restart local v19       #rootObject:Lorg/json/JSONArray;
    .restart local v20       #serviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    .restart local v21       #tokener:Lorg/json/JSONTokener;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_target:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_target:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 62
    :cond_3
    :try_start_2
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 63
    .local v11, level1Array:Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 64
    .local v3, arraySize:I
    const/4 v8, 0x0

    .local v8, index_i:I
    :goto_3
    if-ge v8, v3, :cond_0

    .line 65
    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 66
    .local v15, level2Item:Lorg/json/JSONObject;
    new-instance v4, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;

    invoke-direct {v4}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;-><init>()V

    .line 67
    .local v4, childitem:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->setName(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_target:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->setValue(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v9, v4}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->addChild(Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 77
    .end local v3           #arraySize:I
    .end local v4           #childitem:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .end local v8           #index_i:I
    .end local v11           #level1Array:Lorg/json/JSONArray;
    .end local v13           #level1ItemKey:Ljava/lang/String;
    .end local v15           #level2Item:Lorg/json/JSONObject;
    :cond_4
    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 80
    .end local v9           #item:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .end local v12           #level1Item:Lorg/json/JSONObject;
    .end local v14           #level1ItemKeys:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_categories:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 71
    .restart local v9       #item:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .restart local v12       #level1Item:Lorg/json/JSONObject;
    .restart local v13       #level1ItemKey:Ljava/lang/String;
    .restart local v14       #level1ItemKeys:Ljava/util/Iterator;
    :catch_1
    move-exception v22

    goto/16 :goto_2
.end method

.method private getCategoryAndField(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "query"

    .prologue
    const/4 v3, 0x0

    .line 102
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 103
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 104
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 109
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_instance:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "manifestName"
    .parameter "target"

    .prologue
    .line 90
    sget-object v0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_instance:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    invoke-direct {v0, p0, p1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_instance:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public query(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "query"

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, qp:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getCategoryAndField(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 130
    const-string v4, ""

    .line 143
    :goto_0
    return-object v4

    .line 133
    :cond_0
    iget-object v4, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_categories:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 134
    .local v0, cats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;

    .line 138
    .local v1, entry:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 143
    .end local v1           #entry:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "query"
    .parameter "parameter"

    .prologue
    const/4 v6, 0x1

    .line 167
    const/4 v3, 0x0

    .line 168
    .local v3, qp:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getCategoryAndField(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 169
    const-string v4, ""

    .line 185
    :goto_0
    return-object v4

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_categories:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 173
    .local v0, cats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 175
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;

    .line 177
    .local v1, entry:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    const-string v4, "value"

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 179
    :cond_2
    const-string v4, "name"

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 185
    .end local v1           #entry:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_3
    const-string v4, ""

    goto :goto_0
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "query"
    .parameter "parameter0"
    .parameter "parameter1"

    .prologue
    const/4 v9, 0x1

    .line 211
    const/4 v6, 0x0

    .line 212
    .local v6, qp:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getCategoryAndField(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 213
    const-string v7, ""

    .line 239
    :goto_0
    return-object v7

    .line 216
    :cond_0
    iget-object v7, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_categories:Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 217
    .local v0, cats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 219
    .local v5, parentIT:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 220
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;

    .line 221
    .local v4, parent:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    invoke-virtual {v4}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 222
    invoke-virtual {v4}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    .line 223
    .local v3, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    if-eqz v3, :cond_1

    .line 224
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 225
    .local v2, childIT:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;

    .line 227
    .local v1, child:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    const-string v7, "value"

    aget-object v8, v6, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 228
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 229
    :cond_3
    const-string v7, "name"

    aget-object v8, v6, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 230
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 239
    .end local v1           #child:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .end local v2           #childIT:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    .end local v3           #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    .end local v4           #parent:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .end local v5           #parentIT:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_4
    const-string v7, ""

    goto :goto_0
.end method

.method public queryAll(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "query"
    .parameter "parameter0"

    .prologue
    const/4 v12, 0x1

    .line 263
    const/4 v6, 0x0

    .line 264
    .local v6, qp:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getCategoryAndField(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 265
    const/4 v7, 0x0

    .line 298
    :cond_0
    :goto_0
    return-object v7

    .line 268
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v9, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->m_categories:Ljava/util/HashMap;

    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 271
    .local v0, cats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 273
    .local v5, parentIT:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 274
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;

    .line 275
    .local v4, parent:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    invoke-virtual {v4}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 276
    invoke-virtual {v4}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    .line 277
    .local v3, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 278
    .local v2, childIT:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 279
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;

    .line 280
    .local v1, child:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    const-string v10, "value"

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 281
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_4
    const-string v10, "name"

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 283
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    .end local v1           #child:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .end local v2           #childIT:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    .end local v3           #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    .end local v4           #parent:Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
    .end local v5           #parentIT:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;>;"
    :cond_5
    const/4 v7, 0x0

    .line 292
    .local v7, retVal:[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 293
    .local v8, size:I
    if-lez v8, :cond_0

    .line 294
    new-array v7, v8, [Ljava/lang/String;

    .line 295
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method
