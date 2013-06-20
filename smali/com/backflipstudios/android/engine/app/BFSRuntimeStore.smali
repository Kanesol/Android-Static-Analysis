.class public Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;
.super Ljava/lang/Object;
.source "BFSRuntimeStore.java"


# static fields
.field public static final ENGINE_INSTANCE:Ljava/lang/String; = "__engine_instance"

.field public static final MAIN_ACTIVITY_INSTANCE:Ljava/lang/String; = "__runtime_main_activity"

.field public static final MAIN_APPLICATION_INSTANCE:Ljava/lang/String; = "__runtime_main_application"

.field public static final MAIN_HANDLER_INSTANCE:Ljava/lang/String; = "__runtime_main_handler"

.field public static final MAIN_THREAD_INSTANCE:Ljava/lang/String; = "__runtime_main_thread"

.field private static m_store:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->m_store:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearMainActivityInstance(Landroid/app/Activity;)V
    .locals 3
    .parameter "instance"

    .prologue
    .line 59
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, current:Landroid/app/Activity;
    if-ne v0, p0, :cond_0

    .line 61
    const-string v1, "__runtime_main_activity"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_0
    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 38
    const-class v2, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;

    monitor-enter v2

    const/4 v0, 0x0

    .line 39
    .local v0, retVal:Ljava/lang/Object;
    if-eqz p0, :cond_0

    .line 40
    :try_start_0
    sget-object v1, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->m_store:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 42
    .end local v0           #retVal:Ljava/lang/Object;
    :cond_0
    monitor-exit v2

    return-object v0

    .line 38
    .restart local v0       #retVal:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getEngineInstance()Lcom/backflipstudios/android/engine/app/BFSEngine;
    .locals 1

    .prologue
    .line 97
    const-string v0, "__engine_instance"

    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngine;

    return-object v0
.end method

.method public static getMainActivityInstance()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 49
    const-string v0, "__runtime_main_activity"

    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getMainApplicationInstance()Landroid/app/Application;
    .locals 1

    .prologue
    .line 67
    const-string v0, "__runtime_main_application"

    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public static getMainHandlerInstance()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 77
    const-string v0, "__runtime_main_handler"

    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public static getMainThreadInstance()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 87
    const-string v0, "__runtime_main_thread"

    invoke-static {v0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method public static declared-synchronized set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter "object"

    .prologue
    .line 24
    const-class v1, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    const-string v0, "bfsplatform"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSRuntimeStore.add(): Illegal key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    monitor-exit v1

    return-void

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    .line 30
    :try_start_1
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->m_store:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 32
    :cond_2
    :try_start_2
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->m_store:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setEngineInstance(Lcom/backflipstudios/android/engine/app/BFSEngine;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 102
    const-string v0, "__engine_instance"

    invoke-static {v0, p0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public static setMainActivityInstance(Landroid/app/Activity;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 54
    const-string v0, "__runtime_main_activity"

    invoke-static {v0, p0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static setMainApplicationInstance(Landroid/app/Application;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 72
    const-string v0, "__runtime_main_application"

    invoke-static {v0, p0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static setMainHandlerInstance(Landroid/os/Handler;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 82
    const-string v0, "__runtime_main_handler"

    invoke-static {v0, p0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static setMainThreadInstance(Ljava/lang/Thread;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 92
    const-string v0, "__runtime_main_thread"

    invoke-static {v0, p0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    return-void
.end method
