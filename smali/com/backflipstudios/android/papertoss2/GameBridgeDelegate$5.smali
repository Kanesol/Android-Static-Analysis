.class final Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$5;
.super Ljava/lang/Object;
.source "GameBridgeDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate;->showPrivacyPolicy()V
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
    .line 168
    iput-object p1, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$5;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 171
    invoke-static {}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->getInstance()Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;

    move-result-object v2

    const-string v3, "platform.value"

    const-string v4, "privacy_policy_url"

    invoke-virtual {v2, v3, v4}, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, page_url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 174
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$5;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    const-class v3, Lcom/backflipstudios/android/web/BFSWebViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, i:Landroid/content/Intent;
    const-string v2, "__bfs_extra_web_view_page_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/backflipstudios/android/papertoss2/GameBridgeDelegate$5;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-virtual {v2, v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method
