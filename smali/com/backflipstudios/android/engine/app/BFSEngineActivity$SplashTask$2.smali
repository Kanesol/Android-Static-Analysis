.class Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$2;
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


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$2;->this$1:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask$2;->this$1:Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;

    iget-object v0, v0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$SplashTask;->this$0:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->doResume()V

    .line 376
    return-void
.end method
