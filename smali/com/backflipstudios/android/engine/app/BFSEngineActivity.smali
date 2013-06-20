.class public abstract Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
.super Lcom/backflipstudios/android/engine/app/BFSActivity;
.source "BFSEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/app/BFSEngineActivity$1;,
        Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;,
        Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;
    }
.end annotation


# static fields
.field private static final GARBAGE_COLLECTION_INTERVAL:I = 0x3e8

.field private static m_initialPresentation:Z


# instance fields
.field private m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

.field private m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

.field private m_layout:Landroid/widget/RelativeLayout;

.field private m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

.field private m_splashImage:Landroid/widget/ImageView;

.field private m_splashIndex:I

.field private m_splashTimer:Ljava/util/Timer;

.field private m_startedEngine:Z

.field private m_startedGame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_initialPresentation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/app/BFSActivity;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    .line 42
    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    .line 43
    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    .line 44
    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedEngine:Z

    .line 45
    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedGame:Z

    .line 47
    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashImage:Landroid/widget/ImageView;

    .line 48
    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_layout:Landroid/widget/RelativeLayout;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I

    .line 50
    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashTimer:Ljava/util/Timer;

    .line 350
    return-void
.end method

.method static synthetic access$100(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I

    return p1
.end method

.method static synthetic access$108(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_initialPresentation:Z

    return p0
.end method


# virtual methods
.method protected abstract doResume()V
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/engine/app/BFSEngine;->setOpenGLView(Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;)V

    .line 219
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSActivity;->finish()V

    .line 220
    return-void
.end method

.method public getMainLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected getOpenGLView()Landroid/opengl/GLSurfaceView;
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->useOpenGLESv2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "bfsplatform"

    const-string v1, "BFSEngineActivity: Using OpenGLES 2.0"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView;

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->isTranslucent()Z

    move-result v1

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->useDepthBuffer()Z

    move-result v2

    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSGL2EngineView;-><init>(Landroid/content/Context;ZZLcom/backflipstudios/android/engine/app/BFSEngine;)V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    return-object v0

    .line 271
    :cond_0
    const-string v0, "bfsplatform"

    const-string v1, "BFSEngineActivity: Using OpenGLES 1.x"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView;

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->isTranslucent()Z

    move-result v1

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->useDepthBuffer()Z

    move-result v2

    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/backflipstudios/android/engine/opengl/BFSGL1EngineView;-><init>(Landroid/content/Context;ZZLcom/backflipstudios/android/engine/app/BFSEngine;)V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    goto :goto_0
.end method

.method protected abstract getSplashScreenDelayInMillis()I
.end method

.method protected abstract getSplashScreenResources()[I
.end method

.method protected isGameStarted()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedGame:Z

    return v0
.end method

.method protected isTranslucent()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 59
    invoke-super {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iput-boolean v5, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedGame:Z

    .line 62
    iput-boolean v5, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedEngine:Z

    .line 63
    iput v4, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I

    .line 65
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_layout:Landroid/widget/RelativeLayout;

    .line 66
    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_layout:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 68
    sget-boolean v2, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_initialPresentation:Z

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getSplashScreenResources()[I

    move-result-object v1

    .line 70
    .local v1, resources:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 71
    iput v5, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I

    .line 73
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashImage:Landroid/widget/ImageView;

    .line 74
    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashImage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v0, p0:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_layout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .end local v0           #p0:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #resources:[I
    :cond_0
    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->setContentView(Landroid/view/View;)V

    .line 82
    invoke-static {p0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->setMainActivityInstance(Landroid/app/Activity;)V

    .line 84
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 85
    new-instance v2, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    invoke-direct {v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;-><init>()V

    iput-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    .line 88
    :cond_1
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getEngineInstance()Lcom/backflipstudios/android/engine/app/BFSEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 234
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSActivity;->onDestroy()V

    .line 236
    invoke-static {p0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->clearMainActivityInstance(Landroid/app/Activity;)V

    .line 237
    return-void
.end method

.method public onGameReady()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 242
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onKeyEvent(IIJ)V

    .line 249
    :goto_0
    return v0

    .line 245
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onKeyEvent(IIJ)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/backflipstudios/android/engine/app/BFSActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 255
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v0, v2, v3}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onKeyEvent(IIJ)V

    .line 262
    :goto_0
    return v0

    .line 258
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/backflipstudios/android/engine/app/BFSEngine;->onKeyEvent(IIJ)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/backflipstudios/android/engine/app/BFSActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSActivity;->onPause()V

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 197
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSActivity;->onResume()V

    .line 199
    iget v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 200
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashTimer:Ljava/util/Timer;

    .line 201
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashTimer:Ljava/util/Timer;

    new-instance v1, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;Lcom/backflipstudios/android/engine/app/BFSEngineActivity$1;)V

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getSplashScreenDelayInMillis()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getSplashScreenDelayInMillis()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->doResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 175
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSActivity;->onStart()V

    .line 177
    invoke-static {p0}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->onSessionStart(Landroid/content/Context;)V

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 181
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, installationSource:Ljava/lang/String;
    const-string v3, "SESSION_START"

    invoke-static {v3}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->newEvent(Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v3

    const-string v4, "SOURCE"

    if-eqz v1, :cond_0

    .end local v1           #installationSource:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v3

    const-string v4, "MODEL"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v3

    const-string v4, "BRAND"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v3

    const-string v4, "OSVER"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->send()V

    .line 192
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 183
    .restart local v1       #installationSource:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v1, "null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v1           #installationSource:Ljava/lang/String;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "bfsplatform"

    const-string v4, "BFSEngineActivity.onStart()"

    invoke-static {v3, v4, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/BFSActivity;->onStop()V

    .line 228
    invoke-static {p0}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->onSessionEnded(Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method protected pauseEngine()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->onPause()V

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedEngine:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngine;->suspend()V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->pauseExecution()V

    .line 170
    :cond_2
    return-void
.end method

.method protected prepareEngine()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedEngine:Z

    .line 130
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->start()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->resumeExecution()V

    goto :goto_0
.end method

.method protected resumeEngine()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_openGLView:Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/opengl/BFSGLEngineView;->onResume()V

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedEngine:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngine;->resume()V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->start()V

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_gcThread:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->resumeExecution()V

    goto :goto_0
.end method

.method protected startGame()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 103
    iget-boolean v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedGame:Z

    if-nez v1, :cond_1

    .line 104
    const-string v1, "bfsplatform"

    const-string v2, "BFSEngineActivity: startingGame()"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashImage:Landroid/widget/ImageView;

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->prepareEngine()V

    .line 114
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v0, p0:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getOpenGLView()Landroid/opengl/GLSurfaceView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_startedGame:Z

    .line 120
    .end local v0           #p0:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected abstract useDepthBuffer()Z
.end method

.method protected abstract useOpenGLESv2()Z
.end method
