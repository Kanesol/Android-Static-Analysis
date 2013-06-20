.class final Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;
.super Ljava/lang/Object;
.source "BFSEGLConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static EGL_OPENGL_ES_BIT:I


# instance fields
.field protected mAlphaSize:[I

.field protected mBlueSize:[I

.field protected mContextLevel:I

.field protected mDepthSize:[I

.field protected mGreenSize:[I

.field protected mRedSize:[I

.field protected mStencilSize:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    sput v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->EGL_OPENGL_ES_BIT:I

    .line 64
    const/4 v0, 0x4

    sput v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->EGL_OPENGL_ES2_BIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mRedSize:[I

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mGreenSize:[I

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mBlueSize:[I

    .line 19
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mAlphaSize:[I

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mDepthSize:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mStencilSize:[I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mContextLevel:I

    .line 26
    return-void

    .line 16
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 17
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 18
    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 19
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 20
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 21
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private chooseExactConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 13
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    .line 124
    move-object/from16 v1, p3

    .local v1, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v4, v1, v7

    .line 126
    .local v4, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v11, 0x3027

    const/4 v12, 0x0

    invoke-static {p1, p2, v4, v11, v12}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v3

    .line 127
    .local v3, caveat:I
    const/16 v11, 0x3050

    if-ne v3, v11, :cond_1

    .line 124
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/16 v11, 0x3025

    const/4 v12, 0x0

    invoke-static {p1, p2, v4, v11, v12}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    .line 132
    .local v5, d:I
    const/16 v11, 0x3026

    const/4 v12, 0x0

    invoke-static {p1, p2, v4, v11, v12}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 135
    .local v10, s:I
    iget-object v11, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mDepthSize:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    if-lt v5, v11, :cond_0

    iget-object v11, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mStencilSize:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    if-lt v10, v11, :cond_0

    .line 140
    const/16 v11, 0x3024

    const/4 v12, 0x0

    invoke-static {p1, p2, v4, v11, v12}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 141
    .local v9, r:I
    const/16 v11, 0x3023

    const/4 v12, 0x0

    invoke-static {p1, p2, v4, v11, v12}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 142
    .local v6, g:I
    const/16 v11, 0x3022

    const/4 v12, 0x0

    invoke-static {p1, p2, v4, v11, v12}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 143
    .local v2, b:I
    const/16 v11, 0x3021

    const/4 v12, 0x0

    invoke-static {p1, p2, v4, v11, v12}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 145
    .local v0, a:I
    iget-object v11, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mRedSize:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    if-ne v9, v11, :cond_0

    iget-object v11, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mGreenSize:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    if-ne v6, v11, :cond_0

    iget-object v11, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mBlueSize:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    if-ne v2, v11, :cond_0

    iget-object v11, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mAlphaSize:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    if-ne v0, v11, :cond_0

    .line 150
    .end local v0           #a:I
    .end local v2           #b:I
    .end local v3           #caveat:I
    .end local v4           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v5           #d:I
    .end local v6           #g:I
    .end local v9           #r:I
    .end local v10           #s:I
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 188
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 189
    .local v0, value:[I
    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x0

    aget p4, v0, v1

    .line 192
    .end local p4
    :cond_0
    return p4
.end method

.method public static printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 13
    .parameter "egl"
    .parameter "display"
    .parameter "config"

    .prologue
    const/16 v6, 0x21

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 207
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 242
    .local v1, attributes:[I
    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "EGL_BUFFER_SIZE"

    aput-object v6, v4, v10

    const-string v6, "EGL_ALPHA_SIZE"

    aput-object v6, v4, v11

    const-string v6, "EGL_BLUE_SIZE"

    aput-object v6, v4, v12

    const/4 v6, 0x3

    const-string v7, "EGL_GREEN_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "EGL_RED_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "EGL_DEPTH_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "EGL_STENCIL_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "EGL_CONFIG_CAVEAT"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "EGL_CONFIG_ID"

    aput-object v7, v4, v6

    const/16 v6, 0x9

    const-string v7, "EGL_LEVEL"

    aput-object v7, v4, v6

    const/16 v6, 0xa

    const-string v7, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v7, v4, v6

    const/16 v6, 0xb

    const-string v7, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v7, v4, v6

    const/16 v6, 0xc

    const-string v7, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v7, v4, v6

    const/16 v6, 0xd

    const-string v7, "EGL_NATIVE_RENDERABLE"

    aput-object v7, v4, v6

    const/16 v6, 0xe

    const-string v7, "EGL_NATIVE_VISUAL_ID"

    aput-object v7, v4, v6

    const/16 v6, 0xf

    const-string v7, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x10

    const-string v7, "EGL_PRESERVED_RESOURCES"

    aput-object v7, v4, v6

    const/16 v6, 0x11

    const-string v7, "EGL_SAMPLES"

    aput-object v7, v4, v6

    const/16 v6, 0x12

    const-string v7, "EGL_SAMPLE_BUFFERS"

    aput-object v7, v4, v6

    const/16 v6, 0x13

    const-string v7, "EGL_SURFACE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x14

    const-string v7, "EGL_TRANSPARENT_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x15

    const-string v7, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x16

    const-string v7, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x17

    const-string v7, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x18

    const-string v7, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v7, v4, v6

    const/16 v6, 0x19

    const-string v7, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v7, v4, v6

    const/16 v6, 0x1a

    const-string v7, "EGL_MIN_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1b

    const-string v7, "EGL_MAX_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1c

    const-string v7, "EGL_LUMINANCE_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1d

    const-string v7, "EGL_ALPHA_MASK_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1e

    const-string v7, "EGL_COLOR_BUFFER_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x1f

    const-string v7, "EGL_RENDERABLE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x20

    const-string v7, "EGL_CONFORMANT"

    aput-object v7, v4, v6

    .line 278
    .local v4, names:[Ljava/lang/String;
    new-array v5, v11, [I

    .line 280
    .local v5, value:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 281
    aget v0, v1, v2

    .line 282
    .local v0, attribute:I
    aget-object v3, v4, v2

    .line 283
    .local v3, name:Ljava/lang/String;
    invoke-interface {p0, p1, p2, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 284
    const-string v6, "bfsplatform"

    const-string v7, "BFSEGLConfigChooser: %s: %d\n"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v3, v8, v10

    aget v9, v5, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_1
    const-string v6, "bfsplatform"

    const-string v7, "BFSEGLConfigChooser: %s: failed\n"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_1
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    const/16 v7, 0x3000

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 292
    .end local v0           #attribute:I
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    return-void

    .line 207
    :array_0
    .array-data 0x4
        0x20t 0x30t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x27t 0x30t 0x0t 0x0t
        0x28t 0x30t 0x0t 0x0t
        0x29t 0x30t 0x0t 0x0t
        0x2at 0x30t 0x0t 0x0t
        0x2bt 0x30t 0x0t 0x0t
        0x2ct 0x30t 0x0t 0x0t
        0x2dt 0x30t 0x0t 0x0t
        0x2et 0x30t 0x0t 0x0t
        0x2ft 0x30t 0x0t 0x0t
        0x30t 0x30t 0x0t 0x0t
        0x31t 0x30t 0x0t 0x0t
        0x32t 0x30t 0x0t 0x0t
        0x33t 0x30t 0x0t 0x0t
        0x34t 0x30t 0x0t 0x0t
        0x37t 0x30t 0x0t 0x0t
        0x36t 0x30t 0x0t 0x0t
        0x35t 0x30t 0x0t 0x0t
        0x39t 0x30t 0x0t 0x0t
        0x3at 0x30t 0x0t 0x0t
        0x3bt 0x30t 0x0t 0x0t
        0x3ct 0x30t 0x0t 0x0t
        0x3dt 0x30t 0x0t 0x0t
        0x3et 0x30t 0x0t 0x0t
        0x3ft 0x30t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x42t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public static printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    array-length v1, p2

    .line 198
    .local v1, numConfigs:I
    const-string v2, "bfsplatform"

    const-string v3, "BFSEGLConfigChooser: %d configurations"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 200
    const-string v2, "bfsplatform"

    const-string v3, "\n\nBFSEGLConfigChooser: Configuration %d:\n"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    aget-object v2, p2, v0

    invoke-static {p0, p1, v2}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseClosestConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 21
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    .line 155
    const/4 v8, 0x0

    .line 156
    .local v8, closestConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v9, 0x3e8

    .line 158
    .local v9, closestDistance:I
    move-object/from16 v5, p3

    .local v5, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v15, v5

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_2

    aget-object v10, v5, v14

    .line 160
    .local v10, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v18, 0x3027

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v10, v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 161
    .local v7, caveat:I
    const/16 v18, 0x3050

    move/from16 v0, v18

    if-ne v7, v0, :cond_1

    .line 158
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/16 v18, 0x3025

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v10, v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 167
    .local v11, d:I
    const/16 v18, 0x3026

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v10, v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 169
    .local v17, s:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mDepthSize:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    if-lt v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mStencilSize:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 170
    const/16 v18, 0x3024

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v10, v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v16

    .line 171
    .local v16, r:I
    const/16 v18, 0x3023

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v10, v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 172
    .local v13, g:I
    const/16 v18, 0x3022

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v10, v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 173
    .local v6, b:I
    const/16 v18, 0x3021

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v10, v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    .line 174
    .local v4, a:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mRedSize:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mGreenSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    sub-int v19, v13, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mBlueSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    sub-int v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mAlphaSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    sub-int v19, v4, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    add-int v12, v18, v19

    .line 176
    .local v12, distance:I
    if-ge v12, v9, :cond_0

    .line 177
    move v9, v12

    .line 178
    move-object v8, v10

    goto/16 :goto_1

    .line 183
    .end local v4           #a:I
    .end local v6           #b:I
    .end local v7           #caveat:I
    .end local v10           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v11           #d:I
    .end local v12           #distance:I
    .end local v13           #g:I
    .end local v16           #r:I
    .end local v17           #s:I
    :cond_2
    return-object v8
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .parameter "egl"
    .parameter "display"

    .prologue
    .line 69
    const/4 v6, 0x0

    .line 71
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    sget v7, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->EGL_OPENGL_ES_BIT:I

    .line 73
    .local v7, renderable_type:I
    iget v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mContextLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    sget v7, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 77
    :cond_0
    const/16 v0, 0x11

    new-array v2, v0, [I

    const/4 v0, 0x0

    const/16 v1, 0x3024

    aput v1, v2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mRedSize:[I

    const/4 v8, 0x0

    aget v1, v1, v8

    aput v1, v2, v0

    const/4 v0, 0x2

    const/16 v1, 0x3023

    aput v1, v2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mGreenSize:[I

    const/4 v8, 0x0

    aget v1, v1, v8

    aput v1, v2, v0

    const/4 v0, 0x4

    const/16 v1, 0x3022

    aput v1, v2, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mBlueSize:[I

    const/4 v8, 0x0

    aget v1, v1, v8

    aput v1, v2, v0

    const/4 v0, 0x6

    const/16 v1, 0x3021

    aput v1, v2, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mAlphaSize:[I

    const/4 v8, 0x0

    aget v1, v1, v8

    aput v1, v2, v0

    const/16 v0, 0x8

    const/16 v1, 0x3025

    aput v1, v2, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mDepthSize:[I

    const/4 v8, 0x0

    aget v1, v1, v8

    aput v1, v2, v0

    const/16 v0, 0xa

    const/16 v1, 0x3026

    aput v1, v2, v0

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mStencilSize:[I

    const/4 v8, 0x0

    aget v1, v1, v8

    aput v1, v2, v0

    const/16 v0, 0xc

    const/16 v1, 0x3027

    aput v1, v2, v0

    const/16 v0, 0xd

    const/16 v1, 0x3038

    aput v1, v2, v0

    const/16 v0, 0xe

    const/16 v1, 0x3040

    aput v1, v2, v0

    const/16 v0, 0xf

    aput v7, v2, v0

    const/16 v0, 0x10

    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 89
    .local v2, attributes:[I
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 90
    .local v5, num_config:[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 92
    const/4 v0, 0x0

    aget v4, v5, v0

    .line 94
    .local v4, numConfigs:I
    if-gtz v4, :cond_3

    .line 95
    const-string v0, "bfsplatform"

    const-string v1, "BFSGLConfigChooser: No configs found!"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "ERROR_NO_CONFIGS_AVAILABLE"

    invoke-static {v0}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->newEvent(Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v0

    const-string v1, "DEVICE"

    const-string v8, "%s/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->send()V

    .line 114
    :cond_1
    :goto_0
    if-nez v6, :cond_2

    .line 115
    const-string v0, "bfsplatform"

    const-string v1, "BFSGLConfigChooser: No configs found!"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "ERROR_NO_CONFIGS_AVAILABLE"

    invoke-static {v0}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->newEvent(Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v0

    const-string v1, "DEVICE"

    const-string v8, "%s/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->send()V

    .line 119
    :cond_2
    return-object v6

    .line 98
    :cond_3
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v0, p1

    move-object v1, p2

    .line 99
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 105
    invoke-direct {p0, p1, p2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->chooseExactConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 106
    if-nez v6, :cond_1

    .line 107
    invoke-virtual {p0, p1, p2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->chooseClosestConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    goto :goto_0
.end method

.method public setAlphaSize(II)V
    .locals 2
    .parameter "minimum"
    .parameter "desired"

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mAlphaSize:[I

    .line 46
    return-void
.end method

.method public setBlueSize(II)V
    .locals 2
    .parameter "minimum"
    .parameter "desired"

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mBlueSize:[I

    .line 41
    return-void
.end method

.method public setContextLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 60
    iput p1, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mContextLevel:I

    .line 61
    return-void
.end method

.method public setDepthSize(II)V
    .locals 2
    .parameter "minimum"
    .parameter "desired"

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mDepthSize:[I

    .line 51
    return-void
.end method

.method public setGreenSize(II)V
    .locals 2
    .parameter "minimum"
    .parameter "desired"

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mGreenSize:[I

    .line 36
    return-void
.end method

.method public setRedSize(II)V
    .locals 2
    .parameter "minimum"
    .parameter "desired"

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mRedSize:[I

    .line 31
    return-void
.end method

.method public setStencilSize(II)V
    .locals 2
    .parameter "minimum"
    .parameter "desired"

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/backflipstudios/android/engine/opengl/BFSEGLConfigChooser;->mStencilSize:[I

    .line 56
    return-void
.end method
