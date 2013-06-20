.class Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;
.super Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
.source "BFSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchEvent"
.end annotation


# instance fields
.field public m_dt:J

.field public m_touchID:I

.field public m_touchType:I

.field public m_touchX:F

.field public m_touchY:F


# direct methods
.method public constructor <init>(IIFFJ)V
    .locals 1
    .parameter "touchType"
    .parameter "touchID"
    .parameter "touchX"
    .parameter "touchY"
    .parameter "dt"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;-><init>(I)V

    .line 217
    iput p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_touchType:I

    .line 218
    iput p2, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_touchID:I

    .line 219
    iput p3, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_touchX:F

    .line 220
    iput p4, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_touchY:F

    .line 221
    iput-wide p5, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_dt:J

    .line 222
    return-void
.end method
