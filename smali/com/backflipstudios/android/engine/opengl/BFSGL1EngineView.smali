.class public Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView;
.super Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;
.source "BFSGL1EngineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$1;,
        Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$ContextFactory;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/backflipstudios/android/engine/app/BFSEngine;)V
    .locals 8
    .parameter "context"
    .parameter "translucent"
    .parameter "useDepthBuffer"
    .parameter "engine"

    .prologue
    const/16 v2, 0x10

    const/4 v7, 0x5

    const/16 v6, 0x8

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 25
    invoke-direct {p0, p1, p4}, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;-><init>(Landroid/content/Context;Lcom/backflipstudios/android/engine/app/BFSEngine;)V

    .line 30
    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    const/4 v4, -0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 35
    :cond_0
    new-instance v3, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$ContextFactory;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$ContextFactory;-><init>(Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$1;)V

    invoke-virtual {p0, v3}, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 40
    if-eqz p2, :cond_3

    .line 41
    new-instance v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;

    invoke-direct {v0}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;-><init>()V

    .line 42
    .local v0, chooser:Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;
    invoke-virtual {v0, v5, v6}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setRedSize(II)V

    .line 43
    invoke-virtual {v0, v5, v6}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setGreenSize(II)V

    .line 44
    invoke-virtual {v0, v5, v6}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setBlueSize(II)V

    .line 45
    invoke-virtual {v0, v5, v6}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setAlphaSize(II)V

    .line 46
    if-eqz p3, :cond_2

    :goto_0
    if-eqz p3, :cond_1

    const/16 v1, 0x18

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setDepthSize(II)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 58
    :goto_1
    invoke-virtual {p0, p4}, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 59
    return-void

    :cond_2
    move v2, v1

    .line 46
    goto :goto_0

    .line 49
    .end local v0           #chooser:Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;
    :cond_3
    new-instance v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;

    invoke-direct {v0}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;-><init>()V

    .line 50
    .restart local v0       #chooser:Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;
    invoke-virtual {v0, v5, v7}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setRedSize(II)V

    .line 51
    const/4 v3, 0x6

    invoke-virtual {v0, v5, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setGreenSize(II)V

    .line 52
    invoke-virtual {v0, v5, v7}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setBlueSize(II)V

    .line 53
    if-eqz p3, :cond_5

    :goto_2
    if-eqz p3, :cond_4

    const/16 v1, 0x18

    :cond_4
    invoke-virtual {v0, v2, v1}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->setDepthSize(II)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    goto :goto_1

    :cond_5
    move v2, v1

    .line 53
    goto :goto_2
.end method
