.class public abstract Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;
.super Ljava/lang/Object;
.source "BFSAnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;
    }
.end annotation


# instance fields
.field private m_cachedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;",
            ">;"
        }
    .end annotation
.end field

.field private m_sessionOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_sessionOpen:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_cachedEvents:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method protected abstract doEndSession(Landroid/content/Context;)V
.end method

.method protected abstract doSendEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract doStartSession(Landroid/content/Context;)V
.end method

.method public endSession(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_sessionOpen:Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->doEndSession(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_sessionOpen:Z

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_cachedEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_cachedEvents:Ljava/util/ArrayList;

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_cachedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;

    invoke-direct {v1, p0, p1, p2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;-><init>(Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->doSendEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public startSession(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->doStartSession(Landroid/content/Context;)V

    .line 29
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_sessionOpen:Z

    .line 31
    iget-object v2, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_cachedEvents:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_cachedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;

    .line 33
    .local v0, event:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;
    iget-object v2, v0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;->m_name:Ljava/lang/String;

    iget-object v3, v0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;->m_parameters:Ljava/util/Map;

    invoke-virtual {p0, v2, v3}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->doSendEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 35
    .end local v0           #event:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;
    :cond_0
    iget-object v2, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_cachedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 36
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;->m_cachedEvents:Ljava/util/ArrayList;

    .line 38
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
