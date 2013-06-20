.class public Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;
.super Ljava/lang/Object;
.source "BFSAnalyticsEvent.java"


# instance fields
.field private m_name:Ljava/lang/String;

.field private m_params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_name:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_params:Ljava/util/HashMap;

    .line 9
    iput-object v1, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    .line 13
    iput-object p1, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_name:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_params:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_params:Ljava/util/HashMap;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object p0
.end method

.method public send()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    iget-object v1, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_params:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    .line 24
    return-void
.end method

.method protected setProvider(Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->m_provider:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    .line 19
    return-void
.end method
