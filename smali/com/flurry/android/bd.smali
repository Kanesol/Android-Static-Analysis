.class final Lcom/flurry/android/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static e:Ljava/lang/Runnable;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/t;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/bd;->a:Ljava/lang/String;

    .line 17
    const-string v0, "FlurryBannerTag"

    sput-object v0, Lcom/flurry/android/bd;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/flurry/android/bd;->d:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/flurry/android/t;J)Lcom/flurry/android/ar;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/flurry/android/t;->a(J)Lcom/flurry/android/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/flurry/android/t;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    if-nez v0, :cond_0

    move-object v0, v1

    .line 228
    :goto_0
    monitor-exit p0

    return-object v0

    .line 222
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 224
    invoke-virtual {v0}, Lcom/flurry/android/t;->c()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/flurry/android/t;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 228
    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/t;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-nez v0, :cond_0

    move-object v0, v1

    .line 205
    :goto_0
    monitor-exit p0

    return-object v0

    .line 198
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 200
    invoke-virtual {v0}, Lcom/flurry/android/t;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 205
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/view/ViewGroup;)Lcom/flurry/android/t;
    .locals 1
    .parameter

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/android/bd;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/flurry/android/be;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;)Lcom/flurry/android/t;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/t;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/t;-><init>(Lcom/flurry/android/be;Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V

    .line 182
    sget-object v1, Lcom/flurry/android/bd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/t;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 152
    invoke-virtual {v0}, Lcom/flurry/android/t;->c()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/flurry/android/t;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/t;->c()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/t;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 162
    :cond_2
    monitor-exit p0

    return-object v1
.end method

.method final declared-synchronized a()V
    .locals 4

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/flurry/android/bd;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 47
    invoke-virtual {v0}, Lcom/flurry/android/t;->e()Lcom/flurry/android/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/o;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/t;->a(J)Lcom/flurry/android/ar;

    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/t;->a()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/t;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :cond_2
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/bd;->d:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/flurry/android/t;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 127
    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 133
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BannerHolder removed for adSpace: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/android/t;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/flurry/android/t;)V
    .locals 3
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/am;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/am;-><init>(Lcom/flurry/android/bd;Lcom/flurry/android/t;)V

    sput-object v0, Lcom/flurry/android/bd;->e:Ljava/lang/Runnable;

    .line 91
    invoke-virtual {p1}, Lcom/flurry/android/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/flurry/android/bd;->e:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/flurry/android/t;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/flurry/android/t;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/flurry/android/t;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 3

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/flurry/android/bd;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 62
    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 66
    invoke-virtual {v0}, Lcom/flurry/android/t;->a()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/t;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_1
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized b(Landroid/content/Context;Lcom/flurry/android/t;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 167
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 170
    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_1
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Lcom/flurry/android/t;)V
    .locals 2
    .parameter

    .prologue
    .line 101
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/flurry/android/t;->a(Z)V

    .line 102
    invoke-virtual {p1}, Lcom/flurry/android/t;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/bd;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/flurry/android/bd;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/flurry/android/bd;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotating banner for adSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/t;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lcom/flurry/android/t;->e()Lcom/flurry/android/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/flurry/android/t;->a(J)Lcom/flurry/android/ar;

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/t;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 111
    invoke-virtual {p0, p1}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_1
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
