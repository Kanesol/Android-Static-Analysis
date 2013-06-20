.class public Lcom/backflipstudios/android/engine/app/BFSEngine;
.super Ljava/lang/Object;
.source "BFSEngine.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;,
        Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;,
        Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;,
        Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;,
        Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;,
        Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
    }
.end annotation


# static fields
.field private static final EventTypeCallback:I = 0x3

.field private static final EventTypeKey:I = 0x1

.field private static final EventTypePlatform:I = 0x2

.field private static final EventTypeTouch:I = 0x0

.field public static final KeyEventCodeBack:I = 0x0

.field public static final KeyEventCodeMenu:I = 0x1

.field public static final KeyEventTypeDown:I = 0x0

.field public static final KeyEventTypeUp:I = 0x1

.field public static final TouchEventTypeCancel:I = 0x3

.field public static final TouchEventTypeDown:I = 0x0

.field public static final TouchEventTypeMove:I = 0x1

.field public static final TouchEventTypeUp:I = 0x2


# instance fields
.field private m_created:Z

.field private m_events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/backflipstudios/android/engine/app/BFSEngine$Event;",
            ">;"
        }
    .end annotation
.end field

.field private m_fps:Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;

.field private m_inputLock:Ljava/lang/Object;

.field private m_lifeLock:Ljava/lang/Object;

.field private m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

.field private m_suspended:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "logFramesPerSecond"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    .line 31
    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_lifeLock:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_inputLock:Ljava/lang/Object;

    .line 33
    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_fps:Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;

    .line 34
    iput-boolean v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_created:Z

    .line 35
    iput-boolean v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_suspended:Z

    .line 36
    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_events:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_created:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_lifeLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_inputLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_events:Ljava/util/ArrayList;

    .line 45
    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;

    invoke-direct {v0}, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_fps:Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;

    .line 48
    :cond_0
    return-void
.end method

.method private static native nativeCreate(II)V
.end method

.method private static native nativeOnAsyncCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeOnKeyEvent(IIJ)V
.end method

.method private static native nativeOnPlatformEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeOnTouchEvent(IIFFJ)V
.end method

.method private static native nativeResume()V
.end method

.method private static native nativeSurfaceChanged(II)V
.end method

.method private static native nativeSuspend()V
.end method

.method private static native nativeUpdate()V
.end method


# virtual methods
.method public onAsyncCallbackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "callbackId"
    .parameter "param0"
    .parameter "param1"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_inputLock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_events:Ljava/util/ArrayList;

    new-instance v2, Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;

    invoke-direct {v2, p1, p2, p3}, Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .parameter "gl"

    .prologue
    .line 143
    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_lifeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    iget-boolean v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_suspended:Z

    if-eqz v1, :cond_0

    .line 145
    monitor-exit v2

    .line 173
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_fps:Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_fps:Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;

    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->onDrawFrame()V

    .line 152
    :cond_1
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSEngine;->nativeUpdate()V

    .line 153
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    iget-object v13, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_inputLock:Ljava/lang/Object;

    monitor-enter v13

    .line 156
    :try_start_1
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;

    .line 157
    .local v8, e:Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
    iget v1, v8, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;->m_eventType:I

    if-nez v1, :cond_3

    .line 158
    move-object v0, v8

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;

    move-object v12, v0

    .line 159
    .local v12, te:Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;
    iget v1, v12, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_touchType:I

    iget v2, v12, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_touchID:I

    iget v3, v12, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_touchX:F

    iget v4, v12, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_touchY:F

    iget-wide v5, v12, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;->m_dt:J

    invoke-static/range {v1 .. v6}, Lcom/backflipstudios/android/engine/app/BFSEngine;->nativeOnTouchEvent(IIFFJ)V

    goto :goto_1

    .line 172
    .end local v8           #e:Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #te:Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 153
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 160
    .restart local v8       #e:Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_3
    iget v1, v8, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;->m_eventType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 161
    move-object v0, v8

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;

    move-object v10, v0

    .line 162
    .local v10, ke:Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;
    iget v1, v10, Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;->m_keyType:I

    iget v2, v10, Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;->m_keyCode:I

    iget-wide v3, v10, Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;->m_dt:J

    invoke-static {v1, v2, v3, v4}, Lcom/backflipstudios/android/engine/app/BFSEngine;->nativeOnKeyEvent(IIJ)V

    goto :goto_1

    .line 163
    .end local v10           #ke:Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;
    :cond_4
    iget v1, v8, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;->m_eventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 164
    move-object v0, v8

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;

    move-object v11, v0

    .line 165
    .local v11, pe:Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;
    iget-object v1, v11, Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;->m_name:Ljava/lang/String;

    iget-object v2, v11, Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;->m_param0:Ljava/lang/String;

    iget-object v3, v11, Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;->m_param1:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/backflipstudios/android/engine/app/BFSEngine;->nativeOnPlatformEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    .end local v11           #pe:Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;
    :cond_5
    iget v1, v8, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;->m_eventType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 167
    move-object v0, v8

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;

    move-object v7, v0

    .line 168
    .local v7, ce:Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;
    iget-object v1, v7, Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;->m_callbackID:Ljava/lang/String;

    iget-object v2, v7, Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;->m_param0:Ljava/lang/String;

    iget-object v3, v7, Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;->m_param1:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/backflipstudios/android/engine/app/BFSEngine;->nativeOnAsyncCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v7           #ce:Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;
    .end local v8           #e:Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
    :cond_6
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onKeyEvent(IIJ)V
    .locals 3
    .parameter "type"
    .parameter "keyCode"
    .parameter "dt"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_inputLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_events:Ljava/util/ArrayList;

    new-instance v2, Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/backflipstudios/android/engine/app/BFSEngine$KeyEvent;-><init>(IIJ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 119
    invoke-static {p2}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->setUsableDisplayWidth(I)V

    .line 120
    invoke-static {p3}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->setUsableDisplayHeight(I)V

    .line 122
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_lifeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_created:Z

    if-nez v0, :cond_0

    .line 124
    invoke-static {p2, p3}, Lcom/backflipstudios/android/engine/app/BFSEngine;->nativeCreate(II)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_created:Z

    .line 134
    :goto_0
    monitor-exit v1

    .line 135
    return-void

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_suspended:Z

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSEngine;->nativeResume()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_suspended:Z

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 131
    :cond_1
    :try_start_1
    invoke-static {p2, p3}, Lcom/backflipstudios/android/engine/app/BFSEngine;->nativeSurfaceChanged(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 111
    return-void
.end method

.method public onTouchEvent(IIFFJ)V
    .locals 9
    .parameter "type"
    .parameter "touchID"
    .parameter "x"
    .parameter "y"
    .parameter "dt"

    .prologue
    .line 78
    iget-object v7, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_inputLock:Ljava/lang/Object;

    monitor-enter v7

    .line 79
    :try_start_0
    iget-object v8, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_events:Ljava/util/ArrayList;

    new-instance v0, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/backflipstudios/android/engine/app/BFSEngine$TouchEvent;-><init>(IIFFJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v7

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public platformEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "param0"
    .parameter "param1"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_inputLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_events:Ljava/util/ArrayList;

    new-instance v2, Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;

    invoke-direct {v2, p1, p2, p3}, Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setOpenGLView(Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 54
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    .line 60
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_lifeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSEngine;->nativeSuspend()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine;->m_suspended:Z

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
