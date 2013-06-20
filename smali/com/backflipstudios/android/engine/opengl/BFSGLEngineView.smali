.class public Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;
.super Landroid/opengl/GLSurfaceView;
.source "BFSGLEngineView.java"


# instance fields
.field private m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/backflipstudios/android/engine/app/BFSEngine;)V
    .locals 0
    .parameter "context"
    .parameter "engine"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    .line 28
    invoke-virtual {p2, p0}, Lcom/backflipstudios/android/engine/app/BFSEngine;->setOpenGLView(Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;)V

    .line 29
    return-void
.end method

.method protected static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .parameter "prompt"
    .parameter "egl"

    .prologue
    .line 98
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 99
    const-string v1, "bfsplatform"

    const-string v2, "BFSGLEngineView: %s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public getEngine()Lcom/backflipstudios/android/engine/app/BFSEngine;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 40
    .local v7, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 42
    .local v12, pointerCount:I
    if-nez v7, :cond_0

    .line 44
    const/4 v11, 0x0

    .local v11, p:I
    :goto_0
    if-ge v11, v12, :cond_2

    .line 45
    iget-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    const/4 v1, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onTouchEvent(IIFFJ)V

    .line 44
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 47
    .end local v11           #p:I
    :cond_0
    const/4 v0, 0x5

    if-eq v7, v0, :cond_1

    const/4 v0, 0x5

    if-eq v7, v0, :cond_1

    const/16 v0, 0x105

    if-eq v7, v0, :cond_1

    const/16 v0, 0x205

    if-ne v7, v0, :cond_3

    .line 52
    :cond_1
    const v0, 0xff00

    and-int/2addr v0, v7

    shr-int/lit8 v10, v0, 0x8

    .line 53
    .local v10, index:I
    iget-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    const/4 v1, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onTouchEvent(IIFFJ)V

    .line 92
    .end local v10           #index:I
    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 54
    :cond_3
    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    .line 56
    const/4 v11, 0x0

    .restart local v11       #p:I
    :goto_3
    if-ge v11, v12, :cond_2

    .line 57
    iget-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    const/4 v1, 0x2

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onTouchEvent(IIFFJ)V

    .line 56
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 59
    .end local v11           #p:I
    :cond_4
    const/4 v0, 0x6

    if-eq v7, v0, :cond_5

    const/4 v0, 0x6

    if-eq v7, v0, :cond_5

    const/16 v0, 0x106

    if-eq v7, v0, :cond_5

    const/16 v0, 0x206

    if-ne v7, v0, :cond_6

    .line 64
    :cond_5
    const v0, 0xff00

    and-int/2addr v0, v7

    shr-int/lit8 v10, v0, 0x8

    .line 65
    .restart local v10       #index:I
    iget-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    const/4 v1, 0x2

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onTouchEvent(IIFFJ)V

    goto :goto_1

    .line 66
    .end local v10           #index:I
    :cond_6
    const/4 v0, 0x2

    if-ne v7, v0, :cond_9

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    .line 70
    .local v9, historySize:I
    const/4 v8, 0x0

    .local v8, h:I
    :goto_4
    if-ge v8, v9, :cond_8

    .line 72
    const/4 v11, 0x0

    .restart local v11       #p:I
    :goto_5
    if-ge v11, v12, :cond_7

    .line 74
    iget-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    const/4 v1, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v11, v8}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v3

    invoke-virtual {p1, v11, v8}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onTouchEvent(IIFFJ)V

    .line 72
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 70
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 78
    .end local v11           #p:I
    :cond_8
    const/4 v11, 0x0

    .restart local v11       #p:I
    :goto_6
    if-ge v11, v12, :cond_2

    .line 80
    iget-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    const/4 v1, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onTouchEvent(IIFFJ)V

    .line 78
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 82
    .end local v8           #h:I
    .end local v9           #historySize:I
    .end local v11           #p:I
    :cond_9
    const/4 v0, 0x2

    if-eq v7, v0, :cond_a

    const/4 v0, 0x3

    if-ne v7, v0, :cond_b

    .line 84
    :cond_a
    const/4 v11, 0x0

    .restart local v11       #p:I
    :goto_7
    if-ge v11, v12, :cond_2

    .line 85
    iget-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    const/4 v1, 0x3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onTouchEvent(IIFFJ)V

    .line 84
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 89
    .end local v11           #p:I
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2
.end method
