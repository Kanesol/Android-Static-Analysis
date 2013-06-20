.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$4;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->showLegalInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$4;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 148
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v4

    const-string v5, "platform.name"

    const-string v6, "license_attribution"

    invoke-virtual {v4, v5, v6}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->queryAll(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, values:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 150
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$4;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    const-class v5, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 153
    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const-string v4, "__bfs_extra_legal_product_list"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 156
    iget-object v4, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$4;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-virtual {v4, v1}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #j:I
    :cond_1
    return-void
.end method
