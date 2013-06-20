.class Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$ContextFactory;
.super Ljava/lang/Object;
.source "BFSGL1EngineView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextFactory"
.end annotation


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x3098

    sput v0, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$ContextFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5
    .parameter "egl"
    .parameter "display"
    .parameter "eglConfig"

    .prologue
    const/4 v4, 0x1

    .line 68
    const-string v2, "bfsplatform"

    const-string v3, "BFSGL1EngineView: Creating OpenGL ES 1.x context"

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "Before eglCreateContext"

    invoke-static {v2, p1}, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 70
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v3, v0, v2

    aput v4, v0, v4

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 73
    .local v0, attrib_list:[I
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 74
    .local v1, context:Ljavax/microedition/khronos/egl/EGLContext;
    const-string v2, "After eglCreateContext"

    invoke-static {v2, p1}, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 75
    return-object v1
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2
    .parameter "egl"
    .parameter "display"
    .parameter "context"

    .prologue
    .line 81
    const-string v0, "bfsplatform"

    const-string v1, "BFSGL1EngineView: Destroying context"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 83
    return-void
.end method
