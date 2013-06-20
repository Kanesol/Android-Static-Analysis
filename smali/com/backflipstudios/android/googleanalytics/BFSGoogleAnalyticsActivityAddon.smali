.class public Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;
.super Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.source "BFSGoogleAnalyticsActivityAddon.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "BFSMoPubConversionTrackerAddon"


# instance fields
.field private m_account:Ljava/lang/String;

.field private m_tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "account"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_account:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_account:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "BFSMoPubConversionTrackerAddon"

    return-object v0
.end method

.method public getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->Other:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 43
    iget-object v0, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    iget-object v1, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_account:Ljava/lang/String;

    iget-object v2, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->startNewSession(Ljava/lang/String;Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "/mainactivity"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 48
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/backflipstudios/android/googleanalytics/BFSGoogleAnalyticsActivityAddon;->m_tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stopSession()V

    .line 54
    return-void
.end method
