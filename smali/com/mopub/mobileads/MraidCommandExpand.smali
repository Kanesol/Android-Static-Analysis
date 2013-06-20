.class Lcom/mopub/mobileads/MraidCommandExpand;
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
    .line 61
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MraidCommand;-><init>(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)V

    .line 62
    return-void
.end method


# virtual methods
.method execute()V
    .locals 6

    .prologue
    .line 65
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidCommandExpand;->getIntFromParamsForKey(Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, width:I
    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidCommandExpand;->getIntFromParamsForKey(Ljava/lang/String;)I

    move-result v3

    .line 67
    .local v3, height:I
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidCommandExpand;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, url:Ljava/lang/String;
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidCommandExpand;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v4

    .line 69
    .local v4, shouldUseCustomClose:Z
    const-string v0, "lockOrientation"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidCommandExpand;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v5

    .line 71
    .local v5, shouldLockOrientation:Z
    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MraidCommandExpand;->mView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/MraidDisplayController;

    move-result-object v0

    iget v2, v0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenWidth:I

    .line 72
    :cond_0
    if-gtz v3, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/MraidCommandExpand;->mView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/MraidDisplayController;

    move-result-object v0

    iget v3, v0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenHeight:I

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MraidCommandExpand;->mView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getDisplayController()Lcom/mopub/mobileads/MraidDisplayController;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/MraidDisplayController;->expand(Ljava/lang/String;IIZZ)V

    .line 76
    return-void
.end method
