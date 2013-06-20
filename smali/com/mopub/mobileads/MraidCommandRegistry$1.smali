.class final Lcom/mopub/mobileads/MraidCommandRegistry$1;
.super Ljava/lang/Object;
.source "MraidCommandRegistry.java"

# interfaces
.implements Lcom/mopub/mobileads/MraidCommandRegistry$MraidCommandFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MraidCommandRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)Lcom/mopub/mobileads/MraidCommand;
    .locals 1
    .parameter
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/mobileads/MraidView;",
            ")",
            "Lcom/mopub/mobileads/MraidCommand;"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/mopub/mobileads/MraidCommandClose;

    invoke-direct {v0, p1, p2}, Lcom/mopub/mobileads/MraidCommandClose;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    return-object v0
.end method
