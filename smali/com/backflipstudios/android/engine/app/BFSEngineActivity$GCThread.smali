.class Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;
.super Ljava/lang/Thread;
.source "BFSEngineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GCThread"
.end annotation


# instance fields
.field private volatile m_running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->m_running:Z

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->m_running:Z

    .line 308
    return-void
.end method


# virtual methods
.method public pauseExecution()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->m_running:Z

    .line 338
    return-void
.end method

.method public resumeExecution()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->m_running:Z

    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 346
    monitor-exit p0

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 314
    :goto_0
    iget-boolean v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineActivity$GCThread;->m_running:Z

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 318
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 319
    :catch_0
    move-exception v0

    goto :goto_1

    .line 325
    :cond_0
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 326
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 327
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 328
    :catch_1
    move-exception v0

    goto :goto_0
.end method
