.class interface abstract Lcom/mopub/mobileads/MraidCommandRegistry$MraidCommandFactory;
.super Ljava/lang/Object;
.source "MraidCommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MraidCommandRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MraidCommandFactory"
.end annotation


# virtual methods
.method public abstract create(Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)Lcom/mopub/mobileads/MraidCommand;
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
.end method
