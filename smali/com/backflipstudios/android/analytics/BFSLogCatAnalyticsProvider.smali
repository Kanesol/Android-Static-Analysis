.class public final Lcom/backflipstudios/android/analytics/BFSLogCatAnalyticsProvider;
.super Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;
.source "BFSLogCatAnalyticsProvider.java"


# instance fields
.field private m_logTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;-><init>()V

    .line 11
    const-string v0, "analytics"

    iput-object v0, p0, Lcom/backflipstudios/android/analytics/BFSLogCatAnalyticsProvider;->m_logTag:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "logTag"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;-><init>()V

    .line 11
    const-string v0, "analytics"

    iput-object v0, p0, Lcom/backflipstudios/android/analytics/BFSLogCatAnalyticsProvider;->m_logTag:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/backflipstudios/android/analytics/BFSLogCatAnalyticsProvider;->m_logTag:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public doEndSession(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    return-void
.end method

.method public doSendEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
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
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v6, 0x2c

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    if-eqz p2, :cond_2

    .line 38
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, count:I
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 42
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 43
    .local v3, key:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 44
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .end local v1           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/backflipstudios/android/analytics/BFSLogCatAnalyticsProvider;->m_logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public doStartSession(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    return-void
.end method
