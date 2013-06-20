.class public Lcom/backflipstudios/android/mopub/BFSMoPubConstants;
.super Ljava/lang/Object;
.source "BFSMoPubConstants.java"


# static fields
.field public static final INSTALL_SOURCE_AMAZON:I = 0x1

.field public static final INSTALL_SOURCE_GOOGLE:I = 0x0

.field public static final INSTALL_SOURCE_UNKNOWN:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "bfs_mopub"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    .line 17
    .local v0, app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    .line 20
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getApplicationVersionCode()I
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    .line 26
    .local v0, app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getApplicationVersionCode()I

    move-result v1

    .line 29
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getInstallerSource()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 43
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    .line 44
    .local v0, app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
    if-eqz v0, :cond_0

    .line 45
    const-string v2, "target-storefront"

    const-string v3, "amazon"

    invoke-virtual {v0, v2, v3}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->checkBuildConfigurationParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const/4 v1, 0x1

    .line 53
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    const-string v2, "target-storefront"

    const-string v3, "google"

    invoke-virtual {v0, v2, v3}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->checkBuildConfigurationParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDebugBuild()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    .line 35
    .local v0, app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getBuildConfiguration()Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    move-result-object v2

    sget-object v3, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Debug:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 38
    :cond_0
    return v1
.end method
