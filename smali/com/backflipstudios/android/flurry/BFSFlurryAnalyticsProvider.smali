.class public final Lcom/backflipstudios/android/flurry/BFSFlurryAnalyticsProvider;
.super Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;
.source "BFSFlurryAnalyticsProvider.java"


# instance fields
.field private m_apiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "apiKey"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/flurry/BFSFlurryAnalyticsProvider;->m_apiKey:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/backflipstudios/android/flurry/BFSFlurryAnalyticsProvider;->m_apiKey:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public doEndSession(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public doSendEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 34
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 35
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {p1, p2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public doStartSession(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/backflipstudios/android/flurry/BFSFlurryAnalyticsProvider;->m_apiKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method
