.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$3;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->showMoreGames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

.field final synthetic val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/BFSEngineApplication;Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$3;->val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    iput-object p2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$3;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 129
    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$3;->val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    const-string v3, "target-storefront"

    const-string v4, "amazon"

    invoke-virtual {v2, v3, v4}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->checkBuildConfigurationParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const-string v1, "http://www.backflipstudios.com/device/amazon/"

    .line 134
    .local v1, page_url:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$3;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    const-class v3, Lcom/backflipstudios/android/web/BFSWebViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, i:Landroid/content/Intent;
    const-string v2, "__bfs_extra_web_view_page_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$3;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-virtual {v2, v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void

    .line 132
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #page_url:Ljava/lang/String;
    :cond_0
    const-string v1, "http://www.backflipstudios.com/device/android/"

    .restart local v1       #page_url:Ljava/lang/String;
    goto :goto_0
.end method
