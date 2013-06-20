.class Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;
.super Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
.source "BFSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEvent"
.end annotation


# instance fields
.field public m_dt:J

.field public m_keyCode:I

.field public m_keyType:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1
    .parameter "keyType"
    .parameter "keyCode"
    .parameter "dt"

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;-><init>(I)V

    .line 199
    iput p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;->m_keyType:I

    .line 200
    iput p2, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;->m_keyCode:I

    .line 201
    iput-wide p3, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;->m_dt:J

    .line 202
    return-void
.end method
