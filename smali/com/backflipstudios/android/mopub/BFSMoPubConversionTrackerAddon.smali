.class public Lcom/backflipstudios/android/mopub/BFSMoPubConversionTrackerAddon;
.super Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.source "BFSMoPubConversionTrackerAddon.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "BFSMoPubConversionTrackerAddon"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "BFSMoPubConversionTrackerAddon"

    return-object v0
.end method

.method public getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->Other:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-direct {v0}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>()V

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubConversionTrackerAddon;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
