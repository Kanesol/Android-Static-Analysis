.class Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;
.super Ljava/lang/Object;
.source "BFSAnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Event"
.end annotation


# instance fields
.field public m_name:Ljava/lang/String;

.field public m_parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
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
    .local p3, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 55
    iput-object p1, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;->this$0:Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;->m_name:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;->m_parameters:Ljava/util/Map;

    .line 57
    iput-object p2, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;->m_name:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/backflipstudios/android/analytics/BFSAnalyticsProvider$Event;->m_parameters:Ljava/util/Map;

    .line 59
    return-void
.end method
