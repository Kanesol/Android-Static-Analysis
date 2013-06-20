.class Lcom/mopub/mobileads/MraidCommandClose;
.super Lcom/mopub/mobileads/MraidCommand;
.source "MraidCommand.java"


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MraidCommand;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 52
    return-void
.end method


# virtual methods
.method execute()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/MraidCommandClose;->mView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/MraidDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidDisplayController;->close()V

    .line 56
    return-void
.end method
