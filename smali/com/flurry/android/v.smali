.class final Lcom/flurry/android/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/android/be;


# direct methods
.method constructor <init>(Lcom/flurry/android/be;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/flurry/android/v;->a:Lcom/flurry/android/be;

    .line 17
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/bb;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/SdkAdLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bb;

    .line 25
    new-instance v4, Lcom/flurry/android/SdkAdLog;

    invoke-direct {v4}, Lcom/flurry/android/SdkAdLog;-><init>()V

    .line 26
    invoke-virtual {v0}, Lcom/flurry/android/bb;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/flurry/android/SdkAdLog;->a(Ljava/lang/Long;)V

    .line 27
    invoke-virtual {v0}, Lcom/flurry/android/bb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/flurry/android/SdkAdLog;->a(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 30
    monitor-enter v0

    .line 32
    :try_start_0
    invoke-virtual {v0}, Lcom/flurry/android/bb;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/an;

    .line 35
    invoke-virtual {v1}, Lcom/flurry/android/an;->b()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 37
    new-instance v7, Lcom/flurry/android/SdkAdEvent;

    invoke-direct {v7}, Lcom/flurry/android/SdkAdEvent;-><init>()V

    .line 38
    invoke-virtual {v1}, Lcom/flurry/android/an;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/flurry/android/SdkAdEvent;->a(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v1}, Lcom/flurry/android/an;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/flurry/android/SdkAdEvent;->a(Ljava/lang/Long;)V

    .line 40
    invoke-virtual {v1}, Lcom/flurry/android/an;->d()Ljava/util/Map;

    move-result-object v1

    .line 41
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :try_start_1
    invoke-virtual {v7, v8}, Lcom/flurry/android/SdkAdEvent;->a(Ljava/util/Map;)V

    .line 48
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-virtual {v4, v5}, Lcom/flurry/android/SdkAdLog;->a(Ljava/util/List;)V

    .line 55
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/v;->a:Lcom/flurry/android/be;

    invoke-virtual {v0, p1}, Lcom/flurry/android/be;->a(Ljava/util/List;)V

    .line 61
    return-object v2
.end method
