.class public Lcom/backflipstudios/android/analytics/BFSAnalytics;
.super Ljava/lang/Object;
.source "BFSAnalytics.java"


# static fields
.field private static m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/backflipstudios/android/analytics/BFSAnalytics;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newEvent(Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;
    .locals 2
    .parameter "name"

    .prologue
    .line 31
    new-instance v0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    invoke-direct {v0, p0}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, event:Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;
    sget-object v1, Lcom/backflipstudios/android/analytics/BFSAnalytics;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->setProvider(Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;)V

    .line 33
    return-object v0
.end method

.method public static onSessionEnded(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lcom/backflipstudios/android/analytics/BFSAnalytics;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/backflipstudios/android/analytics/BFSAnalytics;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->endSession(Landroid/content/Context;)V

    .line 27
    :cond_0
    return-void
.end method

.method public static onSessionStart(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    sget-object v0, Lcom/backflipstudios/android/analytics/BFSAnalytics;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/backflipstudios/android/analytics/BFSAnalytics;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->startSession(Landroid/content/Context;)V

    .line 20
    :cond_0
    return-void
.end method

.method public static setProvider(Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 12
    sput-object p0, Lcom/backflipstudios/android/analytics/BFSAnalytics;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    .line 13
    return-void
.end method
