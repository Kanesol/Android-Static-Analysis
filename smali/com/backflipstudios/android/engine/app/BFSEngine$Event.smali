.class Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
.super Ljava/lang/Object;
.source "BFSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation


# instance fields
.field public m_eventType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;->m_eventType:I

    .line 186
    return-void
.end method
