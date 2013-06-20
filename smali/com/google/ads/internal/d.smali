.class public Lcom/google/ads/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/google/ads/m;

.field private c:Lcom/google/ads/internal/c;

.field private d:Lcom/google/ads/AdRequest;

.field private e:Lcom/google/ads/internal/g;

.field private f:Lcom/google/ads/internal/AdWebView;

.field private g:Lcom/google/ads/internal/i;

.field private h:Landroid/os/Handler;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/SharedPreferences;

.field private p:J

.field private q:Lcom/google/ads/ae;

.field private r:Z

.field private s:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Ljava/lang/Boolean;

.field private w:Lcom/google/ads/d;

.field private x:Lcom/google/ads/e;

.field private y:Lcom/google/ads/f;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/internal/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/Ad;Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;Landroid/view/ViewGroup;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/ads/internal/d;->u:I

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    .line 202
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->r:Z

    .line 205
    new-instance v1, Lcom/google/ads/internal/g;

    invoke-direct {v1}, Lcom/google/ads/internal/g;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/internal/d;->k:Z

    .line 219
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->h:Landroid/os/Handler;

    .line 223
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/google/ads/internal/d;->p:J

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/internal/d;->l:Z

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/internal/d;->n:Z

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/internal/d;->m:Z

    .line 228
    if-nez p2, :cond_3

    .line 231
    new-instance v1, Lcom/google/ads/m;

    invoke-static {}, Lcom/google/ads/l;->a()Lcom/google/ads/l;

    move-result-object v2

    instance-of v3, p1, Lcom/google/ads/AdView;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/google/ads/AdView;

    move-object v4, v3

    :goto_0
    instance-of v3, p1, Lcom/google/ads/InterstitialAd;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/google/ads/InterstitialAd;

    move-object v5, v3

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez p3, :cond_2

    sget-object v10, Lcom/google/ads/internal/h;->a:Lcom/google/ads/internal/h;

    :goto_2
    move-object v3, p1

    move-object v6, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/m;-><init>(Lcom/google/ads/l;Lcom/google/ads/Ad;Lcom/google/ads/AdView;Lcom/google/ads/InterstitialAd;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/h;)V

    iput-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    .line 294
    :goto_3
    return-void

    .line 231
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/AdSize;)Lcom/google/ads/internal/h;

    move-result-object v10

    goto :goto_2

    .line 246
    :cond_3
    sget-object v2, Lcom/google/ads/internal/d;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 247
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "GoogleAdMobAdsPrefs"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    .line 249
    if-eqz p6, :cond_5

    .line 250
    iget-object v1, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 251
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    .line 253
    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/google/ads/internal/d;->i:J

    .line 261
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    new-instance v1, Lcom/google/ads/m;

    invoke-static {}, Lcom/google/ads/l;->a()Lcom/google/ads/l;

    move-result-object v2

    instance-of v3, p1, Lcom/google/ads/AdView;

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Lcom/google/ads/AdView;

    move-object v4, v3

    :goto_5
    instance-of v3, p1, Lcom/google/ads/InterstitialAd;

    if-eqz v3, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/google/ads/InterstitialAd;

    move-object v5, v3

    :goto_6
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    if-nez p3, :cond_8

    sget-object v10, Lcom/google/ads/internal/h;->a:Lcom/google/ads/internal/h;

    :goto_7
    move-object v3, p1

    move-object v6, p4

    move-object v7, p2

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/m;-><init>(Lcom/google/ads/l;Lcom/google/ads/Ad;Lcom/google/ads/AdView;Lcom/google/ads/InterstitialAd;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/h;)V

    iput-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    .line 276
    new-instance v1, Lcom/google/ads/ae;

    invoke-direct {v1, p0}, Lcom/google/ads/ae;-><init>(Lcom/google/ads/internal/d;)V

    iput-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/ae;

    .line 279
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    .line 282
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;

    .line 285
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->a()V

    .line 288
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    .line 290
    new-instance v1, Lcom/google/ads/d;

    invoke-direct {v1}, Lcom/google/ads/d;-><init>()V

    iput-object v1, p0, Lcom/google/ads/internal/d;->w:Lcom/google/ads/d;

    .line 291
    new-instance v1, Lcom/google/ads/e;

    invoke-direct {v1, p0}, Lcom/google/ads/e;-><init>(Lcom/google/ads/internal/d;)V

    iput-object v1, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    .line 292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->v:Ljava/lang/Boolean;

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/f;

    goto/16 :goto_3

    .line 256
    :cond_4
    :try_start_1
    iput-wide v3, p0, Lcom/google/ads/internal/d;->i:J

    goto :goto_4

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 259
    :cond_5
    const-wide/32 v3, 0xea60

    :try_start_2
    iput-wide v3, p0, Lcom/google/ads/internal/d;->i:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 263
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/AdSize;Landroid/content/Context;)Lcom/google/ads/internal/h;

    move-result-object v10

    goto :goto_7
.end method

.method private a(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 836
    invoke-virtual {p1}, Lcom/google/ads/f;->d()Ljava/util/List;

    move-result-object v1

    .line 837
    if-nez v1, :cond_0

    .line 838
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 839
    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/f;->b()Ljava/lang/String;

    move-result-object v3

    .line 844
    invoke-virtual {p1}, Lcom/google/ads/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 845
    invoke-virtual {p1}, Lcom/google/ads/f;->c()Ljava/lang/String;

    move-result-object v4

    .line 846
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 892
    if-nez p1, :cond_0

    .line 893
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 894
    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    :goto_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 914
    invoke-static {}, Lcom/google/ads/b;->a()Lcom/google/ads/b;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Lcom/google/ads/b;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 916
    invoke-virtual {v0}, Lcom/google/ads/b;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    .line 917
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 918
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->d:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/ads/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 929
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ac;

    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v1, v0}, Lcom/google/ads/ac;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 931
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->b()V

    .line 936
    return-void
.end method

.method private b(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 865
    invoke-virtual {p1}, Lcom/google/ads/f;->e()Ljava/util/List;

    move-result-object v1

    .line 866
    if-nez v1, :cond_0

    .line 867
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 868
    const-string v0, "http://e.admob.com/clk?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/f;->b()Ljava/lang/String;

    move-result-object v3

    .line 873
    invoke-virtual {p1}, Lcom/google/ads/f;->a()Ljava/lang/String;

    move-result-object v2

    .line 874
    invoke-virtual {p1}, Lcom/google/ads/f;->c()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    move-object v7, v6

    .line 875
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-void
.end method


# virtual methods
.method public declared-synchronized A()V
    .locals 1

    .prologue
    .line 1114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    invoke-virtual {v0}, Lcom/google/ads/internal/c;->a()V

    .line 1116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    :cond_1
    monitor-exit p0

    return-void

    .line 1114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized B()V
    .locals 6

    .prologue
    .line 1144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->e:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1145
    if-nez v0, :cond_1

    .line 1146
    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    :cond_0
    monitor-exit p0

    return-void

    .line 1151
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1152
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ac;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/ac;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1154
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized C()V
    .locals 2

    .prologue
    .line 1166
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 1172
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    invoke-virtual {v0}, Lcom/google/ads/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(Landroid/view/View;)V

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->g()V

    .line 1184
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    invoke-virtual {v0}, Lcom/google/ads/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->x()V

    .line 1188
    :cond_1
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 1192
    if-eqz v0, :cond_2

    .line 1193
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    :cond_2
    monitor-exit p0

    return-void

    .line 1166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/ads/internal/AdWebView;

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->k:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->b()Lcom/google/ads/AdSize;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/internal/AdWebView;-><init>(Lcom/google/ads/m;Lcom/google/ads/AdSize;)V

    iput-object v1, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    .line 306
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 309
    sget-object v0, Lcom/google/ads/internal/a;->c:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    invoke-virtual {v2}, Lcom/google/ads/m;->b()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/ads/internal/i;->a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/d;->g:Lcom/google/ads/internal/i;

    .line 311
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    iget-object v1, p0, Lcom/google/ads/internal/d;->g:Lcom/google/ads/internal/i;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 314
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/l$a;

    .line 315
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/l$a;->a:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->k:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const-string v0, "Disabling hardware acceleration for a banner."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_0
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(F)V
    .locals 4
    .parameter

    .prologue
    .line 1050
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/internal/d;->p:J

    .line 1051
    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    .line 1053
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->e()V

    .line 1055
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    :cond_0
    monitor-exit p0

    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1
    .parameter

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/internal/d;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 4
    .parameter

    .prologue
    .line 1014
    sget-object v1, Lcom/google/ads/internal/d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1015
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v3, v3, Lcom/google/ads/m;->d:Lcom/google/ads/util/i$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1017
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1019
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->r:Z

    if-eqz v0, :cond_0

    .line 1020
    iput-wide p1, p0, Lcom/google/ads/internal/d;->i:J

    .line 1022
    :cond_0
    monitor-exit v1

    .line 1023
    return-void

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1039
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1040
    return-void
.end method

.method public declared-synchronized a(Landroid/view/View;Lcom/google/ads/h;Lcom/google/ads/f;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onReceiveGWhirlAd() called."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 693
    iput-object p3, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/f;

    .line 697
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    invoke-virtual {v0}, Lcom/google/ads/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0, p1}, Lcom/google/ads/internal/d;->a(Landroid/view/View;)V

    .line 699
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/f;Ljava/lang/Boolean;)V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    invoke-virtual {v0, p2}, Lcom/google/ads/e;->d(Lcom/google/ads/h;)V

    .line 706
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 707
    if-eqz v0, :cond_1

    .line 708
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onReceiveAd(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :cond_1
    monitor-exit p0

    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .parameter

    .prologue
    .line 622
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 624
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_0

    .line 627
    const/high16 v0, 0x4270

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(F)V

    .line 628
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->g()V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    invoke-virtual {v0}, Lcom/google/ads/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_3

    .line 636
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->B()V

    .line 642
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailedToReceiveAd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 646
    if-eqz v0, :cond_2

    .line 647
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :cond_2
    monitor-exit p0

    return-void

    .line 637
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    if-ne p1, v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest;)V
    .locals 4
    .parameter

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 572
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 579
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    const-string v1, "GoogleAdMobDoritosLife"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 588
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/google/ads/ag;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 589
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->e:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/ag;->a(Landroid/app/Activity;)V

    .line 594
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 595
    iget-object v0, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 598
    iput-object p1, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    .line 602
    iget-object v0, p0, Lcom/google/ads/internal/d;->w:Lcom/google/ads/d;

    invoke-virtual {v0}, Lcom/google/ads/d;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    iget-object v1, p0, Lcom/google/ads/internal/d;->w:Lcom/google/ads/d;

    invoke-virtual {v1}, Lcom/google/ads/d;->b()Lcom/google/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/e;->a(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V

    goto :goto_0

    .line 608
    :cond_4
    new-instance v0, Lcom/google/ads/internal/c;

    invoke-direct {v0, p0}, Lcom/google/ads/internal/c;-><init>(Lcom/google/ads/internal/d;)V

    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 609
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lcom/google/ads/c;)V
    .locals 2
    .parameter

    .prologue
    .line 660
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;

    .line 662
    invoke-virtual {p1}, Lcom/google/ads/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p1}, Lcom/google/ads/c;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(F)V

    .line 664
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->f()V

    .line 673
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    iget-object v1, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/e;->a(Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    .line 668
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/f;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 722
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "AdManager.onGWhirlAdClicked(%b) called."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 724
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/internal/d;->b(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/ads/internal/d;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 968
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 347
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    .line 351
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    .line 363
    :cond_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->n:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AppEventListener;

    .line 809
    if-eqz v0, :cond_0

    .line 810
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/ads/AppEventListener;->onAppEvent(Lcom/google/ads/Ad;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    :cond_0
    monitor-exit p0

    return-void

    .line 808
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/util/LinkedList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1218
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding a click tracking URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1221
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/d;->t:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1031
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/internal/d;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    monitor-exit p0

    return-void

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    invoke-virtual {v0}, Lcom/google/ads/e;->b()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->n:Lcom/google/ads/util/i$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->A()V

    .line 335
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_1
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .locals 2
    .parameter

    .prologue
    .line 1067
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :cond_0
    monitor-exit p0

    return-void

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/ads/c;)V
    .locals 3
    .parameter

    .prologue
    .line 736
    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onGWhirlNoFill() called."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Lcom/google/ads/c;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 743
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/AdListener;->onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :cond_0
    monitor-exit p0

    return-void

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1205
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding a tracking URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    monitor-exit p0

    return-void

    .line 1205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1241
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/d;->v:Ljava/lang/Boolean;

    .line 1242
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/ads/internal/d;->z:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/internal/d;->m:Z

    .line 380
    const-string v0, "Refreshing is no longer allowed on this AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/google/ads/internal/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/ae;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :goto_0
    monitor-exit p0

    return-void

    .line 396
    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 4

    .prologue
    .line 405
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/internal/d;->n:Z

    .line 407
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    invoke-virtual {v0}, Lcom/google/ads/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->m:Z

    if-eqz v0, :cond_1

    .line 409
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling refreshing every "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/ads/internal/d;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/google/ads/internal/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/ae;

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :goto_0
    monitor-exit p0

    return-void

    .line 416
    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 419
    :cond_1
    :try_start_2
    const-string v0, "Refreshing disabled on this AdView"

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->f()V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->n:Z

    .line 432
    return-void
.end method

.method public h()Lcom/google/ads/m;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    return-object v0
.end method

.method public declared-synchronized i()Lcom/google/ads/d;
    .locals 1

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->w:Lcom/google/ads/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Lcom/google/ads/internal/c;
    .locals 1

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Lcom/google/ads/internal/AdWebView;
    .locals 1

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->f:Lcom/google/ads/internal/AdWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Lcom/google/ads/internal/i;
    .locals 1

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->g:Lcom/google/ads/internal/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()Lcom/google/ads/internal/g;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    return-object v0
.end method

.method public declared-synchronized n()I
    .locals 1

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/internal/d;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 519
    iget-wide v0, p0, Lcom/google/ads/internal/d;->i:J

    return-wide v0
.end method

.method public declared-synchronized p()Z
    .locals 1

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->c:Lcom/google/ads/internal/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()Z
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized r()Z
    .locals 1

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()Z
    .locals 1

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()V
    .locals 2

    .prologue
    .line 757
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->C()V

    .line 759
    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 763
    if-eqz v0, :cond_0

    .line 764
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onDismissScreen(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :cond_0
    monitor-exit p0

    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u()V
    .locals 2

    .prologue
    .line 776
    monitor-enter p0

    :try_start_0
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 780
    if-eqz v0, :cond_0

    .line 781
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onPresentScreen(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :cond_0
    monitor-exit p0

    return-void

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized v()V
    .locals 2

    .prologue
    .line 793
    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdListener;

    .line 797
    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v1, v1, Lcom/google/ads/m;->h:Lcom/google/ads/util/i$b;

    invoke-virtual {v1}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/Ad;

    invoke-interface {v0, v1}, Lcom/google/ads/AdListener;->onLeaveApplication(Lcom/google/ads/Ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :cond_0
    monitor-exit p0

    return-void

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/ads/internal/d;->e:Lcom/google/ads/internal/g;

    invoke-virtual {v0}, Lcom/google/ads/internal/g;->f()V

    .line 821
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->B()V

    .line 822
    return-void
.end method

.method public declared-synchronized x()V
    .locals 6

    .prologue
    .line 945
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->e:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 946
    if-nez v0, :cond_1

    .line 947
    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    :cond_0
    monitor-exit p0

    return-void

    .line 952
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/internal/d;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 953
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/ac;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/ac;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 955
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized y()V
    .locals 4

    .prologue
    .line 977
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    if-eqz v0, :cond_3

    .line 978
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    invoke-virtual {v0}, Lcom/google/ads/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/util/AdUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/google/ads/internal/d;->d:Lcom/google/ads/AdRequest;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/AdRequest;)V

    .line 990
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->n:Z

    if-eqz v0, :cond_1

    .line 992
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    :goto_1
    monitor-exit p0

    return-void

    .line 986
    :cond_0
    :try_start_1
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 977
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 995
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/internal/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/d;->q:Lcom/google/ads/ae;

    iget-wide v2, p0, Lcom/google/ads/internal/d;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 998
    :cond_2
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1001
    :cond_3
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized z()V
    .locals 2

    .prologue
    .line 1078
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/d;->b:Lcom/google/ads/m;

    invoke-virtual {v0}, Lcom/google/ads/m;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V

    .line 1079
    iget-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    if-eqz v0, :cond_3

    .line 1081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/d;->k:Z

    .line 1085
    iget-object v0, p0, Lcom/google/ads/internal/d;->v:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1086
    const-string v0, "isMediationFlag is null in show() with isReady() true. we should have an ad and know whether this is a mediation request or not. "

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1090
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/d;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/google/ads/internal/d;->x:Lcom/google/ads/e;

    invoke-virtual {v0}, Lcom/google/ads/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/google/ads/internal/d;->y:Lcom/google/ads/f;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/f;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1097
    :cond_2
    :try_start_2
    new-instance v0, Lcom/google/ads/internal/e;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    .line 1100
    invoke-virtual {p0}, Lcom/google/ads/internal/d;->x()V

    goto :goto_0

    .line 1103
    :cond_3
    const-string v0, "Cannot show interstitial because it is not loaded and ready."

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
