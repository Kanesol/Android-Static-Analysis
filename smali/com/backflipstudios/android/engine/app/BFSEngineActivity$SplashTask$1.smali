.class Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$1;
.super Ljava/lang/Object;
.source "BFSEngineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;

.field final synthetic val$resources:[I


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$1;->this$1:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;

    iput-object p2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$1;->val$resources:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$1;->this$1:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    #getter for: Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->access$200(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$1;->val$resources:[I

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$1;->this$1:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;

    iget-object v2, v2, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    #getter for: Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->m_splashIndex:I
    invoke-static {v2}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->access$100(Lcom/backflipstudios/android/engine/app/BFSEngineActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    return-void
.end method
