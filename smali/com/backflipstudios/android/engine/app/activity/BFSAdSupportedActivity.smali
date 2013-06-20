.class public abstract Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;
.super Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
.source "BFSAdSupportedActivity.java"

# interfaces
.implements Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;


# static fields
.field private static final STARTUP_INTERSTITIAL_PAUSE_INTERVAL:J = 0x493e0L

.field private static final STARTUP_INTERSTITIAL_RUN_COUNT:J = 0x3L


# instance fields
.field private m_adDidShow:Z

.field private m_adWillShow:Z

.field private m_pauseTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adDidShow:Z

    .line 28
    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adWillShow:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_pauseTime:J

    return-void
.end method

.method private showStartupInterstitialAd()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->areAdsDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 118
    :goto_0
    return v2

    .line 103
    :cond_0
    invoke-static {}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->isConnectedToNetwork()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 104
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    invoke-virtual {v2}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getRunCount()I

    move-result v1

    .line 108
    .local v1, runCount:I
    int-to-long v4, v1

    const-wide/16 v6, 0x3

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    move v2, v3

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    sget-object v2, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InterstitialAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {p0, v2}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;

    .line 113
    .local v0, adAddon:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;
    if-nez v0, :cond_3

    move v2, v3

    .line 114
    goto :goto_0

    .line 117
    :cond_3
    const-string v2, "startup_interstitial"

    invoke-virtual {v0, v2}, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;->showAdWithTag(Ljava/lang/String;)Z

    .line 118
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract areAdsDisabled()Z
.end method

.method protected doResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 68
    iget-boolean v4, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adWillShow:Z

    iget-boolean v5, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adDidShow:Z

    or-int v3, v4, v5

    .line 69
    .local v3, resumingFromAd:Z
    iput-boolean v6, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adWillShow:Z

    .line 70
    iput-boolean v6, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adDidShow:Z

    .line 72
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->isGameStarted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 73
    if-nez v3, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->showStartupInterstitialAd()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->startGame()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->startGame()V

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    .local v0, adShown:Z
    if-nez v3, :cond_3

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_pauseTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 87
    .local v1, millisSince:J
    const-wide/32 v4, 0x493e0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->showStartupInterstitialAd()Z

    move-result v0

    .line 91
    .end local v1           #millisSince:J
    :cond_3
    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->resumeEngine()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v0, "bfsplatform"

    const-string v1, "BFSAdSupportedActivity.onCreate()"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-boolean v2, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adDidShow:Z

    .line 41
    iput-boolean v2, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adWillShow:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_pauseTime:J

    .line 44
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "a87700e11490082991a3205dcda97151d5e0d9fe"

    invoke-virtual {v0, v1, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 45
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "d6de37f920ccbf0ab8b5bfc459e3055ed93747e0"

    invoke-virtual {v0, v1, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 46
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "ec3ca73d41b1a05c47193ea0ff646fbb26d1761e"

    invoke-virtual {v0, v1, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->onDestroy()V

    .line 146
    const-string v0, "bfsplatform"

    const-string v1, "BFSAdSupportedActivity.onDestroy()"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 149
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "eventName"
    .parameter "obj0"
    .parameter "obj2"

    .prologue
    const/4 v2, 0x1

    .line 176
    const-string v0, "a87700e11490082991a3205dcda97151d5e0d9fe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "bfsplatform"

    const-string v1, "BFSAdSupportedActivity: Ad Will Show"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iput-boolean v2, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adWillShow:Z

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string v0, "d6de37f920ccbf0ab8b5bfc459e3055ed93747e0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    const-string v0, "bfsplatform"

    const-string v1, "BFSAdSupportedActivity: Ad Will Not Show"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->isGameStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->startGame()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->resumeEngine()V

    goto :goto_0

    .line 188
    :cond_3
    const-string v0, "ec3ca73d41b1a05c47193ea0ff646fbb26d1761e"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "bfsplatform"

    const-string v1, "BFSAdSupportedActivity: Ad Did Show"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput-boolean v2, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_adDidShow:Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->onPause()V

    .line 126
    const-string v0, "bfsplatform"

    const-string v1, "BFSAdSupportedActivity.onPause()"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->pauseEngine()V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/backflipstudios/android/engine/app/activity/BFSAdSupportedActivity;->m_pauseTime:J

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->onResume()V

    .line 62
    const-string v0, "bfsplatform"

    const-string v1, "BFSAdSupportedActivity.onResume()"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->onStart()V

    .line 54
    const-string v0, "bfsplatform"

    const-string v1, "BFSAdSupportedActivity.onStart()"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->onStop()V

    .line 138
    const-string v0, "bfsplatform"

    const-string v1, "BFSAdSupportedActivity.onStop()"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->onWindowFocusChanged(Z)V

    .line 168
    return-void
.end method

.method protected useDepthBuffer()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method
