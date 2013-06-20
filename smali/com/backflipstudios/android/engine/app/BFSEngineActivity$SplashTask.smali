.class Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;
.super Ljava/util/TimerTask;
.source "BFSEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplashTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;


# direct methods
.method private constructor <init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;Lcom/backflipstudios/android/engine/app/BFSEngineActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-static {v1}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->access$108(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)I

    .line 356
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->getSplashScreenResources()[I

    move-result-object v0

    .line 357
    .local v0, resources:[I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    #getter for: Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I
    invoke-static {v1}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->access$100(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 358
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$1;

    invoke-direct {v2, p0, v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$1;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    const/4 v2, -0x1

    #setter for: Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I
    invoke-static {v1, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->access$102(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;I)I

    .line 367
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    #getter for: Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->access$300(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 368
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    const/4 v2, 0x0

    #setter for: Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->access$302(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 370
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->access$402(Z)Z

    .line 372
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$2;

    invoke-direct {v2, p0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$2;-><init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
