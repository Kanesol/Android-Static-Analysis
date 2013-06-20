.class public Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;
.super Ljava/lang/Object;
.source "BFSNotificationCenter.java"


# static fields
.field private static m_instance:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;


# instance fields
.field private m_listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_instance:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_instance:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    invoke-direct {v0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;-><init>()V

    sput-object v0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_instance:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    .line 23
    :cond_0
    sget-object v0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_instance:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    return-object v0
.end method


# virtual methods
.method public publish(Ljava/lang/String;)V
    .locals 1
    .parameter "eventName"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0, v0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "eventName"
    .parameter "object0"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "eventName"
    .parameter "object0"
    .parameter "object1"

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    iget-object v5, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 91
    :try_start_0
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    move-object v1, v2

    .line 94
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;

    .line 98
    .local v3, listener:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;
    invoke-interface {v3, p1, p2, p3}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;->onEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 101
    :cond_1
    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V
    .locals 5
    .parameter "eventName"
    .parameter "listener"

    .prologue
    .line 28
    iget-object v4, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    :try_start_0
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 36
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    monitor-exit v4

    .line 38
    return-void

    .line 33
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    :try_start_1
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    goto :goto_1
.end method

.method public unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V
    .locals 9
    .parameter "listener"

    .prologue
    .line 42
    iget-object v8, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    monitor-enter v8

    .line 43
    :try_start_0
    iget-object v7, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 44
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v6, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    .local v3, key:Ljava/lang/String;
    iget-object v7, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 47
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 48
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 49
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 54
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    .end local v6           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 57
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    .restart local v3       #key:Ljava/lang/String;
    iget-object v7, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 60
    .end local v3           #key:Ljava/lang/String;
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V
    .locals 3
    .parameter "eventName"
    .parameter "listener"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 68
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->m_listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;>;"
    :cond_0
    monitor-exit v2

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
