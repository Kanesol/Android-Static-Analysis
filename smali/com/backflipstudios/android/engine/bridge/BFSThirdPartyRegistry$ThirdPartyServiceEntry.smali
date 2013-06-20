.class Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;
.super Ljava/lang/Object;
.source "BFSThirdPartyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThirdPartyServiceEntry"
.end annotation


# instance fields
.field private m_children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private m_name:Ljava/lang/String;

.field private m_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object v0, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_name:Ljava/lang/String;

    .line 306
    iput-object v0, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_value:Ljava/lang/String;

    .line 310
    return-void
.end method


# virtual methods
.method public addChild(Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_children:Ljava/util/ArrayList;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_name:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/backflipstudios/android/engine/bridge/BFSThirdPartyRegistry$ThirdPartyServiceEntry;->m_value:Ljava/lang/String;

    .line 335
    return-void
.end method
