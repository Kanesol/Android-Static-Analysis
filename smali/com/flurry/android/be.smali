.class final Lcom/flurry/android/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/ai;


# static fields
.field static a:Ljava/lang/String;

.field static b:I

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/flurry/org/apache/avro/io/DecoderFactory;

.field private static g:Lcom/flurry/android/v;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/String;

.field private F:Landroid/os/Handler;

.field private G:Lcom/flurry/android/ICustomAdNetworkHandler;

.field private H:Lcom/flurry/android/FlurryAdListener;

.field private volatile I:Z

.field private volatile J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/bb;",
            ">;"
        }
    .end annotation
.end field

.field private volatile K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/bb;",
            ">;"
        }
    .end annotation
.end field

.field private volatile L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/bb;",
            ">;"
        }
    .end annotation
.end field

.field private volatile M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile N:Z

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lcom/flurry/android/AdUnit;

.field private final Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final R:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/flurry/android/w;

.field d:Lcom/flurry/android/bd;

.field private h:Lcom/flurry/android/ax;

.field private i:Lcom/flurry/android/r;

.field private j:Landroid/view/Display;

.field private k:Z

.field private l:Ljava/io/File;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private volatile s:Ljava/lang/String;

.field private volatile t:Ljava/lang/String;

.field private volatile u:F

.field private volatile v:F

.field private volatile w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/flurry/android/bb;

.field private y:Lcom/flurry/android/AdUnit;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    .line 110
    const/4 v0, 0x5

    sput v0, Lcom/flurry/android/be;->b:I

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v3, p0, Lcom/flurry/android/be;->k:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/be;->l:Ljava/io/File;

    .line 95
    iput-boolean v4, p0, Lcom/flurry/android/be;->q:Z

    .line 96
    iput-boolean v3, p0, Lcom/flurry/android/be;->r:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/be;->s:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/be;->t:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/be;->K:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/be;->L:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/be;->M:Ljava/util/List;

    .line 173
    iput-boolean v3, p0, Lcom/flurry/android/be;->N:Z

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    const-string v1, "open"

    const-string v2, "directOpen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "expand"

    const-string v2, "doExpand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "collapse"

    const-string v2, "doCollapse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/be;->Q:Ljava/util/Map;

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 184
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "closeAd"

    aput-object v2, v1, v3

    const-string v2, "processRedirect"

    aput-object v2, v1, v4

    const-string v2, "nextFrame"

    aput-object v2, v1, v5

    const-string v2, "nextAdUnit"

    aput-object v2, v1, v6

    const-string v2, "notifyUser"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/be;->R:Ljava/util/Set;

    .line 188
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAdThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 190
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/be;->F:Landroid/os/Handler;

    .line 192
    new-instance v0, Lcom/flurry/android/w;

    invoke-direct {v0}, Lcom/flurry/android/w;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/be;->c:Lcom/flurry/android/w;

    .line 193
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/be;->e:Ljava/util/List;

    .line 195
    new-instance v0, Lcom/flurry/org/apache/avro/io/DecoderFactory;

    invoke-direct {v0}, Lcom/flurry/org/apache/avro/io/DecoderFactory;-><init>()V

    sput-object v0, Lcom/flurry/android/be;->f:Lcom/flurry/org/apache/avro/io/DecoderFactory;

    .line 196
    new-instance v0, Lcom/flurry/android/v;

    invoke-direct {v0, p0}, Lcom/flurry/android/v;-><init>(Lcom/flurry/android/be;)V

    sput-object v0, Lcom/flurry/android/be;->g:Lcom/flurry/android/v;

    .line 197
    new-instance v0, Lcom/flurry/android/r;

    invoke-direct {v0, p0}, Lcom/flurry/android/r;-><init>(Lcom/flurry/android/be;)V

    iput-object v0, p0, Lcom/flurry/android/be;->i:Lcom/flurry/android/r;

    .line 198
    return-void
.end method

.method private static a([B)I
    .locals 1
    .parameter

    .prologue
    .line 1460
    new-instance v0, Lcom/flurry/android/CrcMessageDigest;

    invoke-direct {v0}, Lcom/flurry/android/CrcMessageDigest;-><init>()V

    .line 1461
    invoke-virtual {v0, p0}, Lcom/flurry/android/CrcMessageDigest;->update([B)V

    .line 1462
    invoke-virtual {v0}, Lcom/flurry/android/CrcMessageDigest;->getChecksum()I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/an;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/an;"
        }
    .end annotation

    .prologue
    .line 1686
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/an;

    invoke-virtual {p0}, Lcom/flurry/android/be;->d()J

    move-result-wide v3

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/an;-><init>(Ljava/lang/String;ZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a([BLjava/lang/Class;)Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;",
            ">([B",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1444
    .line 1445
    sget-object v0, Lcom/flurry/android/be;->f:Lcom/flurry/org/apache/avro/io/DecoderFactory;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2, v1}, Lcom/flurry/org/apache/avro/io/DecoderFactory;->binaryDecoder(Ljava/io/InputStream;Lcom/flurry/org/apache/avro/io/BinaryDecoder;)Lcom/flurry/org/apache/avro/io/BinaryDecoder;

    move-result-object v0

    .line 1448
    :try_start_0
    new-instance v2, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;

    invoke-direct {v2, p1}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;-><init>(Ljava/lang/Class;)V

    .line 1449
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/org/apache/avro/specific/SpecificDatumReader;->read(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Decoder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :goto_0
    return-object v0

    .line 1451
    :catch_0
    move-exception v0

    .line 1453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassCastException in parseAvroBinary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 1454
    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/be;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/android/be;->l:Ljava/io/File;

    return-object v0
.end method

.method private a(Lcom/flurry/android/bb;Lcom/flurry/android/AdUnit;Lcom/flurry/android/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    const-string v0, ".*?(%\\{\\w+\\}).*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 886
    invoke-virtual {v1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 887
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    iget-object v2, p0, Lcom/flurry/android/be;->i:Lcom/flurry/android/r;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, p2, p4, v0}, Lcom/flurry/android/r;->a(Lcom/flurry/android/bb;Lcom/flurry/android/AdUnit;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 889
    invoke-virtual {v1, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 892
    :cond_0
    return-object p4
.end method

.method private static a(Lcom/flurry/android/AdFrame;Lcom/flurry/android/ba;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/AdFrame;",
            "Lcom/flurry/android/ba;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1711
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    invoke-virtual {p0}, Lcom/flurry/android/AdFrame;->e()Ljava/util/List;

    move-result-object v0

    .line 1713
    iget-object v4, p1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    .line 1716
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/Callback;

    .line 1718
    invoke-virtual {v0}, Lcom/flurry/android/Callback;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1719
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1722
    invoke-virtual {v0}, Lcom/flurry/android/Callback;->b()Ljava/util/List;

    move-result-object v0

    .line 1723
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1725
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1726
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1727
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1729
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    .line 1731
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1732
    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1733
    invoke-static {v1}, Lcom/flurry/android/y;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1739
    :goto_1
    new-instance v2, Lcom/flurry/android/u;

    invoke-direct {v2, v0, v1, p1}, Lcom/flurry/android/u;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/ba;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v1, v2

    .line 1737
    goto :goto_1

    .line 1744
    :cond_2
    return-object v3
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/flurry/android/be;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/be;->F:Landroid/os/Handler;

    new-instance v1, Lcom/flurry/android/c;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/flurry/android/c;-><init>(Lcom/flurry/android/be;Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/flurry/android/SdkLogResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 909
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/SdkLogResponse;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/be;->L:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :cond_0
    monitor-exit p0

    return-void

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;[B)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1490
    const-class v0, Lcom/flurry/android/AdResponse;

    invoke-static {p2, v0}, Lcom/flurry/android/be;->a([BLjava/lang/Class;)Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdResponse;

    .line 1491
    if-eqz v0, :cond_1

    .line 1493
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got an AdResponse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1494
    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1496
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v2, "Ad request returned errors: "

    invoke-static {v1, v2}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1499
    sget-object v2, Lcom/flurry/android/be;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_1

    .line 1503
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    invoke-interface {v0, p1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    .line 1524
    :cond_1
    :goto_1
    return-void

    .line 1506
    :cond_2
    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/flurry/android/AdResponse;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1508
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v1, "Ad request successful but server delivered no ad units."

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    invoke-interface {v0, p1}, Lcom/flurry/android/FlurryAdListener;->spaceDidFailToReceiveAd(Ljava/lang/String;)V

    goto :goto_1

    .line 1517
    :cond_3
    invoke-direct {p0}, Lcom/flurry/android/be;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/flurry/android/be;->c:Lcom/flurry/android/w;

    invoke-virtual {v1, v0}, Lcom/flurry/android/w;->a(Lcom/flurry/android/AdResponse;)V

    .line 1518
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    invoke-interface {v0, p1}, Lcom/flurry/android/FlurryAdListener;->spaceDidReceiveAd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/io/DataOutputStream;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/bb;",
            ">;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1649
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1650
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1653
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bb;

    invoke-virtual {v0, p2}, Lcom/flurry/android/bb;->a(Ljava/io/DataOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1650
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1655
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to convert adLog to byte[]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bb;

    invoke-virtual {v0}, Lcom/flurry/android/bb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/flurry/android/bc;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1658
    :cond_0
    monitor-exit p0

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 544
    invoke-static {p0, v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1334
    if-nez p3, :cond_0

    .line 1336
    const/4 v0, 0x0

    .line 1370
    :goto_0
    return v0

    .line 1340
    :cond_0
    const-string v0, "/v3/getAds.do"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/flurry/android/be;->s:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/be;->s:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    :goto_2
    invoke-direct {p0, p2, v0}, Lcom/flurry/android/be;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 1353
    if-eqz v0, :cond_1

    .line 1355
    :try_start_0
    const-string v1, "/v3/getAds.do"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1357
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/be;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    :cond_1
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1342
    :cond_2
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "https://ads.flurry.com"

    goto :goto_1

    :cond_3
    const-string v0, "http://ads.flurry.com"

    goto :goto_1

    .line 1346
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/flurry/android/be;->t:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/be;->t:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "https://adlog.flurry.com"

    goto :goto_4

    :cond_6
    const-string v0, "http://adlog.flurry.com"

    goto :goto_4

    .line 1361
    :cond_7
    :try_start_1
    invoke-direct {p0, v0}, Lcom/flurry/android/be;->b([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1365
    :catch_0
    move-exception v0

    .line 1367
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4
    .parameter

    .prologue
    .line 1422
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1423
    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 1425
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1427
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1429
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/flurry/android/be;->q()Ljava/util/List;

    move-result-object v0

    .line 1271
    invoke-static {}, Lcom/flurry/android/AdRequest;->a()Lcom/flurry/android/AdRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/be;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/flurry/android/AdRequest$Builder;->setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/flurry/android/AdRequest$Builder;->setAdSpaceName(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/flurry/android/be;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/flurry/android/AdRequest$Builder;->setBindings(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/AdRequest$Builder;->setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/Location;->a()Lcom/flurry/android/Location$Builder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/android/be;->u:F

    invoke-virtual {v1, v2}, Lcom/flurry/android/Location$Builder;->setLat(F)Lcom/flurry/android/Location$Builder;

    move-result-object v1

    iget v2, p0, Lcom/flurry/android/be;->v:F

    invoke-virtual {v1, v2}, Lcom/flurry/android/Location$Builder;->setLon(F)Lcom/flurry/android/Location$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/Location$Builder;->build()Lcom/flurry/android/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setLocation(Lcom/flurry/android/Location;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/be;->N:Z

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setTestDevice(Z)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setAgentVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/flurry/android/be;->A:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/AdRequest$Builder;->setSessionId(J)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/AdViewContainer;->a()Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/be;->j:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/AdViewContainer$Builder;->setScreenHeight(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/be;->j:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/AdViewContainer$Builder;->setScreenWidth(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/flurry/android/AdViewContainer$Builder;->setViewHeight(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/flurry/android/AdViewContainer$Builder;->setViewWidth(I)Lcom/flurry/android/AdViewContainer$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdViewContainer$Builder;->build()Lcom/flurry/android/AdViewContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setAdViewContainer(Lcom/flurry/android/AdViewContainer;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/be;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setLocale(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/be;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setTimezone(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/be;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setOsVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/be;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdRequest$Builder;->setDevicePlatform(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdRequest$Builder;->build()Lcom/flurry/android/AdRequest;

    move-result-object v1

    .line 1293
    if-eqz p4, :cond_1

    .line 1295
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/android/AdRequest;->a(Ljava/lang/Boolean;)V

    .line 1302
    :goto_0
    if-eqz p5, :cond_0

    .line 1304
    invoke-static {}, Lcom/flurry/android/TestAds;->a()Lcom/flurry/android/TestAds$Builder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/flurry/android/FlurryAdSize;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/flurry/android/TestAds$Builder;->setAdspacePlacement(I)Lcom/flurry/android/TestAds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/TestAds$Builder;->build()Lcom/flurry/android/TestAds;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/android/AdRequest;->a(Lcom/flurry/android/TestAds;)V

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/be;->O:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1309
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/flurry/android/be;->O:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1299
    :cond_1
    invoke-virtual {v1, p1}, Lcom/flurry/android/AdRequest;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1309
    :cond_2
    invoke-virtual {v1, v2}, Lcom/flurry/android/AdRequest;->a(Ljava/util/Map;)V

    .line 1312
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got ad request  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1315
    new-instance v0, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;

    const-class v2, Lcom/flurry/android/AdRequest;

    invoke-direct {v0, v2}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;-><init>(Ljava/lang/Class;)V

    .line 1316
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1317
    invoke-static {}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->get()Lcom/flurry/org/apache/avro/io/EncoderFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->directBinaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v3

    .line 1320
    :try_start_0
    invoke-virtual {v0, v1, v3}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;->write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 1321
    invoke-virtual {v3}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1328
    :goto_2
    return-object v0

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1324
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_2
.end method

.method private a([BLjava/lang/String;)[B
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1375
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1376
    const-string v0, "avro/binary"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 1377
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1379
    const-string v2, "accept"

    const-string v3, "avro/binary"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string v2, "FM-Checksum"

    invoke-static {p1}, Lcom/flurry/android/be;->a([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1382
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1383
    const/16 v3, 0x3a98

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1384
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.protocol.expect-continue"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1386
    iget-object v3, p0, Lcom/flurry/android/be;->h:Lcom/flurry/android/ax;

    invoke-virtual {v3, v2}, Lcom/flurry/android/ax;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 1390
    :try_start_0
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1391
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 1392
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 1394
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v3, "Request successful"

    invoke-static {v0, v3}, Lcom/flurry/android/bc;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/be;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 1397
    invoke-virtual {v1}, Lorg/apache/http/entity/ByteArrayEntity;->consumeContent()V

    .line 1398
    invoke-static {v0}, Lcom/flurry/android/be;->a([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1399
    const-string v3, "FM-Checksum"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FM-Checksum"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1417
    :cond_0
    :goto_0
    return-object v0

    .line 1410
    :cond_1
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request failed with HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1413
    :catch_0
    move-exception v0

    .line 1415
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private b([B)V
    .locals 3
    .parameter

    .prologue
    .line 1468
    const-class v0, Lcom/flurry/android/SdkLogResponse;

    invoke-static {p1, v0}, Lcom/flurry/android/be;->a([BLjava/lang/Class;)Lcom/flurry/org/apache/avro/specific/SpecificRecordBase;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/SdkLogResponse;

    .line 1469
    if-eqz v0, :cond_0

    .line 1471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got an AdLogResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1472
    invoke-virtual {v0}, Lcom/flurry/android/SdkLogResponse;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1475
    invoke-direct {p0, v0}, Lcom/flurry/android/be;->a(Lcom/flurry/android/SdkLogResponse;)V

    .line 1485
    :cond_0
    return-void

    .line 1479
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/SdkLogResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1481
    sget-object v2, Lcom/flurry/android/be;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/android/be;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/flurry/android/be;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/flurry/android/be;)Lcom/flurry/android/ax;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/android/be;->h:Lcom/flurry/android/ax;

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-static {p0}, Lcom/flurry/android/be;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 532
    if-nez p2, :cond_0

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 537
    :cond_0
    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1, p2, v0}, Lcom/flurry/android/be;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 267
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 275
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    .line 278
    :goto_1
    if-nez v0, :cond_0

    .line 279
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v2, "No connectivity found."

    invoke-static {v1, v2}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/flurry/android/be;->I:Z

    if-nez v0, :cond_0

    .line 411
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v1, "Flurry Ads not initialized"

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/be;->E:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 415
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v1, "Cannot identify UDID."

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/be;->I:Z

    return v0
.end method

.method private p()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1151
    invoke-direct {p0}, Lcom/flurry/android/be;->q()Ljava/util/List;

    move-result-object v1

    .line 1154
    iget-object v2, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    monitor-enter v2

    .line 1156
    :try_start_0
    sget-object v3, Lcom/flurry/android/be;->g:Lcom/flurry/android/v;

    iget-object v4, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/flurry/android/v;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1157
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 1159
    monitor-exit v2

    .line 1189
    :goto_0
    return-object v0

    .line 1162
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    invoke-static {}, Lcom/flurry/android/SdkLogRequest;->a()Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/flurry/android/be;->z:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/flurry/android/SdkLogRequest$Builder;->setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/android/SdkLogRequest$Builder;->setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/flurry/android/SdkLogRequest$Builder;->setSdkAdLogs(Ljava/util/List;)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/flurry/android/SdkLogRequest$Builder;->setTestDevice(Z)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/flurry/android/SdkLogRequest$Builder;->setAgentTimestamp(J)Lcom/flurry/android/SdkLogRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/SdkLogRequest$Builder;->build()Lcom/flurry/android/SdkLogRequest;

    move-result-object v1

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ad log request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/flurry/android/SdkLogRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1176
    new-instance v2, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;

    const-class v3, Lcom/flurry/android/SdkLogRequest;

    invoke-direct {v2, v3}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;-><init>(Ljava/lang/Class;)V

    .line 1177
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1178
    invoke-static {}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->get()Lcom/flurry/org/apache/avro/io/EncoderFactory;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/flurry/org/apache/avro/io/EncoderFactory;->directBinaryEncoder(Ljava/io/OutputStream;Lcom/flurry/org/apache/avro/io/BinaryEncoder;)Lcom/flurry/org/apache/avro/io/BinaryEncoder;

    move-result-object v4

    .line 1181
    :try_start_1
    invoke-virtual {v2, v1, v4}, Lcom/flurry/org/apache/avro/specific/SpecificDatumWriter;->write(Ljava/lang/Object;Lcom/flurry/org/apache/avro/io/Encoder;)V

    .line 1182
    invoke-virtual {v4}, Lcom/flurry/org/apache/avro/io/BinaryEncoder;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1188
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 1162
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private q()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    iget-object v0, p0, Lcom/flurry/android/be;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1254
    invoke-static {}, Lcom/flurry/android/AdReportedId;->a()Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/AdReportedId$Builder;->setId(Ljava/nio/ByteBuffer;)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/AdReportedId$Builder;->setType(I)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdReportedId$Builder;->build()Lcom/flurry/android/AdReportedId;

    move-result-object v0

    .line 1255
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    iget-object v0, p0, Lcom/flurry/android/be;->D:Ljava/util/Map;

    .line 1257
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1259
    invoke-static {}, Lcom/flurry/android/AdReportedId;->a()Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Lcom/flurry/android/AdReportedId$Builder;->setId(Ljava/nio/ByteBuffer;)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flurry/android/AdReportedId$Builder;->setType(I)Lcom/flurry/android/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdReportedId$Builder;->build()Lcom/flurry/android/AdReportedId;

    move-result-object v0

    .line 1260
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1262
    :cond_0
    return-object v2
.end method


# virtual methods
.method final declared-synchronized a(Lcom/flurry/android/bb;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/bb;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/bb;"
        }
    .end annotation

    .prologue
    .line 1662
    monitor-enter p0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1664
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1668
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/flurry/android/be;->a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/an;

    move-result-object v0

    .line 1669
    invoke-virtual {p1, v0}, Lcom/flurry/android/bb;->a(Lcom/flurry/android/an;)V

    .line 1670
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    monitor-exit p0

    return-object p1

    .line 1670
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1662
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/bb;"
        }
    .end annotation

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/flurry/android/be;->K:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bb;

    .line 1677
    if-nez v0, :cond_0

    .line 1679
    invoke-static {p0, p1}, Lcom/flurry/android/y;->a(Lcom/flurry/android/be;Ljava/lang/String;)Lcom/flurry/android/bb;

    move-result-object v0

    .line 1681
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1, p4}, Lcom/flurry/android/be;->a(Lcom/flurry/android/bb;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/q;
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 1986
    const/4 v14, 0x0

    .line 1987
    const/4 v13, 0x0

    .line 1988
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/flurry/android/be;->P:Lcom/flurry/android/AdUnit;

    .line 1998
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v1

    .line 1999
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2001
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/flurry/android/AdFrame;

    .line 2002
    invoke-virtual {v8}, Lcom/flurry/android/AdFrame;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2003
    invoke-virtual {v8}, Lcom/flurry/android/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2004
    invoke-virtual {v8}, Lcom/flurry/android/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2005
    invoke-virtual {v8}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/AdSpaceLayout;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2006
    invoke-virtual {v8}, Lcom/flurry/android/AdFrame;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requested"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/flurry/android/be;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    move-result-object v6

    .line 2013
    new-instance v1, Lcom/flurry/android/ba;

    const-string v2, "filled"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/flurry/android/ba;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/flurry/android/be;->a(Lcom/flurry/android/ba;Lcom/flurry/android/ai;I)V

    .line 2015
    iget-object v1, p0, Lcom/flurry/android/be;->P:Lcom/flurry/android/AdUnit;

    if-nez v1, :cond_1

    .line 2017
    new-instance v1, Lcom/flurry/android/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/flurry/android/q;-><init>(Lcom/flurry/android/o;ZZLcom/flurry/android/AdUnit;)V

    .line 2132
    :goto_0
    return-object v1

    .line 2010
    :cond_0
    new-instance v1, Lcom/flurry/android/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/flurry/android/q;-><init>(Lcom/flurry/android/o;ZZLcom/flurry/android/AdUnit;)V

    goto :goto_0

    .line 2021
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/be;->P:Lcom/flurry/android/AdUnit;

    move-object/from16 v0, p2

    if-eq v1, v0, :cond_10

    .line 2023
    iget-object v0, p0, Lcom/flurry/android/be;->P:Lcom/flurry/android/AdUnit;

    move-object/from16 p2, v0

    .line 2024
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v1

    .line 2026
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/AdFrame;

    .line 2027
    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2028
    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2029
    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2030
    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/AdSpaceLayout;->d()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2031
    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->f()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "requested"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v4, v7, v8, v9}, Lcom/flurry/android/be;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    move-result-object v4

    move-object v12, v5

    move-object/from16 v5, p2

    .line 2034
    :goto_1
    iget-object v7, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {v5}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->a()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/flurry/android/AdSpaceLayout;->d()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    if-ne v7, v11, :cond_2

    sget-object v7, Lcom/flurry/android/FlurryAdType;->VIDEO_TAKEOVER:Lcom/flurry/android/FlurryAdType;

    :goto_2
    invoke-interface {v8, v9, v7}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2036
    new-instance v1, Lcom/flurry/android/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/flurry/android/q;-><init>(Lcom/flurry/android/o;ZZLcom/flurry/android/AdUnit;)V

    goto/16 :goto_0

    .line 2034
    :cond_2
    const-string v7, "takeover"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    goto :goto_2

    .line 2039
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing ad request for binding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", networkType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2041
    invoke-virtual {v5}, Lcom/flurry/android/AdUnit;->d()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    .line 2043
    :cond_5
    const-string v1, "takeover"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2045
    iput-object v4, p0, Lcom/flurry/android/be;->x:Lcom/flurry/android/bb;

    .line 2046
    iput-object v5, p0, Lcom/flurry/android/be;->y:Lcom/flurry/android/AdUnit;

    .line 2047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opening takeover activity, display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2048
    const/4 v1, 0x1

    move-object v2, v14

    .line 2132
    :goto_3
    new-instance v3, Lcom/flurry/android/q;

    invoke-static {v12}, Lcom/flurry/android/y;->d(Ljava/lang/String;)Ljava/util/Map;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v1, v4, v5}, Lcom/flurry/android/q;-><init>(Lcom/flurry/android/o;ZZLcom/flurry/android/AdUnit;)V

    move-object v1, v3

    goto/16 :goto_0

    .line 2052
    :cond_6
    new-instance v1, Lcom/flurry/android/aj;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/flurry/android/aj;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdUnit;I)V

    .line 2053
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/flurry/android/o;->initLayout(Landroid/content/Context;)V

    move-object v2, v1

    move v1, v13

    goto :goto_3

    .line 2056
    :cond_7
    const/4 v2, 0x4

    if-ne v6, v2, :cond_f

    .line 2059
    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v1

    .line 2060
    invoke-virtual {v1}, Lcom/flurry/android/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Lcom/flurry/android/AdSpaceLayout;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1}, Lcom/flurry/android/AdSpaceLayout;->d()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/flurry/android/AdSpaceLayout;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/flurry/android/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v6, Lcom/flurry/android/AdCreative;

    invoke-direct/range {v6 .. v11}, Lcom/flurry/android/AdCreative;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    const-string v1, "Admob"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving BannerView for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2065
    new-instance v1, Lcom/flurry/android/x;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, p0, v4, v6}, Lcom/flurry/android/x;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V

    .line 2066
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/flurry/android/o;->initLayout(Landroid/content/Context;)V

    .line 2067
    const/4 v2, 0x0

    iput v2, v1, Lcom/flurry/android/o;->d:I

    .line 2068
    iput-object v5, v1, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    move-object v2, v1

    move v1, v13

    goto :goto_3

    .line 2070
    :cond_8
    const-string v1, "Millennial Media"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving BannerView for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2073
    new-instance v1, Lcom/flurry/android/ag;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, p0, v4, v6}, Lcom/flurry/android/ag;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V

    .line 2074
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/flurry/android/o;->initLayout(Landroid/content/Context;)V

    .line 2075
    const/4 v2, 0x0

    iput v2, v1, Lcom/flurry/android/o;->d:I

    .line 2076
    iput-object v5, v1, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    move-object v2, v1

    move v1, v13

    goto/16 :goto_3

    .line 2078
    :cond_9
    const-string v1, "InMobi"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving BannerView for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2081
    new-instance v1, Lcom/flurry/android/aa;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, p0, v4, v6}, Lcom/flurry/android/aa;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V

    .line 2082
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/flurry/android/o;->initLayout(Landroid/content/Context;)V

    .line 2083
    const/4 v2, 0x0

    iput v2, v1, Lcom/flurry/android/o;->d:I

    .line 2084
    iput-object v5, v1, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    move-object v2, v1

    move v1, v13

    goto/16 :goto_3

    .line 2086
    :cond_a
    const-string v1, "Mobclix"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving BannerView for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2089
    new-instance v1, Lcom/flurry/android/ac;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, p0, v4, v6}, Lcom/flurry/android/ac;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V

    .line 2090
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/flurry/android/o;->initLayout(Landroid/content/Context;)V

    .line 2091
    const/4 v2, 0x0

    iput v2, v1, Lcom/flurry/android/o;->d:I

    .line 2092
    iput-object v5, v1, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    move-object v2, v1

    move v1, v13

    goto/16 :goto_3

    .line 2094
    :cond_b
    const-string v1, "Jumptap"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving BannerView for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2097
    new-instance v1, Lcom/flurry/android/g;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, p0, v4, v6}, Lcom/flurry/android/g;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V

    .line 2098
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/flurry/android/o;->initLayout(Landroid/content/Context;)V

    .line 2099
    const/4 v2, 0x0

    iput v2, v1, Lcom/flurry/android/o;->d:I

    .line 2100
    iput-object v5, v1, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    move-object v2, v1

    move v1, v13

    goto/16 :goto_3

    .line 2104
    :cond_c
    iget-object v1, p0, Lcom/flurry/android/be;->G:Lcom/flurry/android/ICustomAdNetworkHandler;

    .line 2105
    if-eqz v1, :cond_e

    .line 2107
    move-object/from16 v0, p1

    invoke-interface {v1, v0, v6, v12}, Lcom/flurry/android/ICustomAdNetworkHandler;->getAdFromNetwork(Landroid/content/Context;Lcom/flurry/android/AdCreative;Ljava/lang/String;)Lcom/flurry/android/AdNetworkView;

    move-result-object v1

    .line 2108
    if-eqz v1, :cond_d

    .line 2110
    iput-object p0, v1, Lcom/flurry/android/o;->a:Lcom/flurry/android/be;

    .line 2111
    iput-object v4, v1, Lcom/flurry/android/o;->b:Lcom/flurry/android/bb;

    .line 2112
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/flurry/android/o;->initLayout(Landroid/content/Context;)V

    .line 2113
    const/4 v2, 0x0

    iput v2, v1, Lcom/flurry/android/o;->d:I

    .line 2114
    iput-object v5, v1, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    move-object v2, v1

    move v1, v13

    goto/16 :goto_3

    .line 2118
    :cond_d
    sget-object v2, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v3, "CustomAdNetworkHandler returned null banner view"

    invoke-static {v2, v3}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    move v1, v13

    goto/16 :goto_3

    .line 2123
    :cond_e
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v2, "No CustomAdNetworkHandler set"

    invoke-static {v1, v2}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v13

    move-object v2, v14

    .line 2126
    goto/16 :goto_3

    .line 2129
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not support binding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v1, v13

    move-object v2, v14

    goto/16 :goto_3

    :cond_10
    move-object v4, v6

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v5, p2

    move v6, v12

    move-object v12, v11

    goto/16 :goto_1
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;J)Lcom/flurry/android/q;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 959
    new-instance v1, Lcom/flurry/android/q;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/flurry/android/q;-><init>(Lcom/flurry/android/o;ZZLcom/flurry/android/AdUnit;)V

    .line 960
    invoke-direct {p0}, Lcom/flurry/android/be;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-object v1

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/t;

    move-result-object v0

    .line 966
    if-eqz v0, :cond_0

    .line 971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 972
    const/4 v0, 0x0

    move-object v8, v1

    .line 974
    :goto_1
    add-long v1, v9, p7

    invoke-static {v1, v2}, Lcom/flurry/android/y;->a(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 976
    invoke-virtual {p0, p2}, Lcom/flurry/android/be;->d(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v1

    .line 977
    if-eqz v1, :cond_2

    .line 979
    invoke-virtual {p0, p1, v1}, Lcom/flurry/android/be;->a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/q;

    move-result-object v8

    .line 984
    iget-object v1, p0, Lcom/flurry/android/be;->c:Lcom/flurry/android/w;

    invoke-virtual {v1, p2}, Lcom/flurry/android/w;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 986
    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/flurry/android/be;->a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;J)V

    .line 989
    const/4 v0, 0x1

    move-object v1, v8

    .line 1011
    :goto_2
    invoke-virtual {v1}, Lcom/flurry/android/q;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1013
    const-wide/16 v2, 0xa

    :try_start_0
    div-long v2, p7, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    .line 1022
    goto :goto_1

    .line 995
    :cond_2
    if-nez v0, :cond_3

    .line 1000
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v5, p6

    move-wide/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/flurry/android/be;->a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;J)V

    .line 1001
    const/4 v0, 0x1

    .line 1005
    :cond_3
    invoke-virtual {p0, p2}, Lcom/flurry/android/be;->d(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v1

    .line 1006
    if-eqz v1, :cond_4

    .line 1008
    invoke-virtual {p0, p1, v1}, Lcom/flurry/android/be;->a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/q;

    move-result-object v1

    goto :goto_2

    .line 1020
    :catch_0
    move-exception v0

    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v2, "Ad Request thread interrupted."

    invoke-static {v0, v2}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object v1, v8

    goto :goto_2

    :cond_5
    move-object v1, v8

    goto :goto_2

    :cond_6
    move-object v1, v8

    goto :goto_0
.end method

.method final a()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/bd;->a(Landroid/content/Context;)V

    .line 258
    invoke-virtual {p0}, Lcom/flurry/android/be;->j()V

    .line 259
    return-void
.end method

.method final a(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 606
    iput p1, p0, Lcom/flurry/android/be;->u:F

    .line 607
    iput p2, p0, Lcom/flurry/android/be;->v:F

    .line 608
    return-void
.end method

.method final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0, p1}, Lcom/flurry/android/bd;->a(Landroid/content/Context;)V

    .line 252
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0}, Lcom/flurry/android/bd;->b()V

    .line 253
    return-void
.end method

.method final a(Landroid/content/Context;JJ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-wide p2, p0, Lcom/flurry/android/be;->A:J

    .line 242
    iput-wide p4, p0, Lcom/flurry/android/be;->B:J

    .line 243
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/be;->C:J

    .line 244
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0, p1}, Lcom/flurry/android/bd;->a(Landroid/content/Context;)V

    .line 245
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0}, Lcom/flurry/android/bd;->a()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/be;->r:Z

    .line 247
    return-void
.end method

.method final a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/flurry/android/be;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0, p2}, Lcom/flurry/android/bd;->a(Landroid/view/ViewGroup;)Lcom/flurry/android/t;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 523
    iget-object v1, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Lcom/flurry/android/t;)V

    goto :goto_0
.end method

.method final a(Landroid/content/Context;Lcom/flurry/android/n;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/flurry/android/be;->I:Z

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p2, Lcom/flurry/android/n;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/be;->z:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/flurry/android/bd;

    invoke-direct {v0, p1}, Lcom/flurry/android/bd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/be;->I:Z

    .line 215
    :cond_0
    iget-object v0, p2, Lcom/flurry/android/n;->b:Lcom/flurry/android/ax;

    iput-object v0, p0, Lcom/flurry/android/be;->h:Lcom/flurry/android/ax;

    .line 216
    iget-object v0, p2, Lcom/flurry/android/n;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/be;->m:Ljava/lang/String;

    .line 218
    iget-object v0, p2, Lcom/flurry/android/n;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/be;->n:Ljava/lang/String;

    .line 221
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/be;->o:Ljava/lang/String;

    .line 222
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/be;->p:Ljava/lang/String;

    .line 225
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 226
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/be;->j:Landroid/view/Display;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryadlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/be;->z:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/be;->l:Ljava/io/File;

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/be;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/be;->q:Z

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/be;->w:Ljava/util/Map;

    .line 237
    return-void
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 656
    const-string v0, "market://details?id="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    const-string v0, "market://details?id="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    iget-boolean v1, p0, Lcom/flurry/android/be;->q:Z

    if-eqz v1, :cond_0

    .line 663
    :try_start_0
    invoke-static {p1, p2}, Lcom/flurry/android/y;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 667
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch Google Play url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 672
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://market.android.com/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {p1, v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 678
    :cond_1
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Google Play url scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final a(Lcom/flurry/android/AdUnit;)V
    .locals 0
    .parameter

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/flurry/android/be;->y:Lcom/flurry/android/AdUnit;

    .line 1702
    return-void
.end method

.method final a(Lcom/flurry/android/FlurryAdListener;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 349
    iput-object p1, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    .line 351
    :cond_0
    return-void
.end method

.method final a(Lcom/flurry/android/ICustomAdNetworkHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 302
    iput-object p1, p0, Lcom/flurry/android/be;->G:Lcom/flurry/android/ICustomAdNetworkHandler;

    .line 304
    :cond_0
    return-void
.end method

.method public final a(Lcom/flurry/android/ba;Lcom/flurry/android/ai;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1752
    iget-object v0, p1, Lcom/flurry/android/ba;->d:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    iget v1, p1, Lcom/flurry/android/ba;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-static {v0, p1}, Lcom/flurry/android/be;->a(Lcom/flurry/android/AdFrame;Lcom/flurry/android/ba;)Ljava/util/List;

    move-result-object v2

    .line 1755
    iget-object v0, p0, Lcom/flurry/android/be;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1757
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    new-instance v1, Lcom/flurry/android/u;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    invoke-direct {v1, v0, v4, p1}, Lcom/flurry/android/u;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/ba;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1765
    :cond_1
    iget-object v0, p1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    const-string v1, "adWillClose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1767
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_2

    .line 1769
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    iget-object v1, p1, Lcom/flurry/android/ba;->d:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onAdClosed(Ljava/lang/String;)V

    .line 1771
    :cond_2
    const/4 v1, 0x0

    .line 1772
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/u;

    .line 1774
    iget-object v4, p0, Lcom/flurry/android/be;->R:Ljava/util/Set;

    iget-object v0, v0, Lcom/flurry/android/u;->a:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1776
    const/4 v0, 0x1

    .line 1780
    :goto_1
    if-nez v0, :cond_4

    .line 1782
    new-instance v0, Lcom/flurry/android/u;

    const-string v1, "closeAd"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v3, p1}, Lcom/flurry/android/u;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/ba;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1786
    :cond_4
    iget-object v0, p1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    const-string v1, "renderFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1788
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_5

    .line 1790
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    iget-object v1, p1, Lcom/flurry/android/ba;->d:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onRenderFailed(Ljava/lang/String;)V

    .line 1796
    :cond_5
    const/4 v0, 0x0

    .line 1798
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/flurry/android/u;

    .line 1800
    iget-object v0, v2, Lcom/flurry/android/u;->a:Ljava/lang/String;

    const-string v3, "logEvent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1803
    iget-object v0, v2, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v1, "__sendToServer"

    const-string v3, "true"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1806
    :goto_3
    iget-object v0, v2, Lcom/flurry/android/u;->a:Ljava/lang/String;

    const-string v1, "loadAdComponents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1808
    iget-object v0, v2, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1809
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1810
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1811
    iget-object v6, v2, Lcom/flurry/android/u;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1814
    :cond_6
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v2, p0, v0}, Lcom/flurry/android/ai;->a(Lcom/flurry/android/u;Lcom/flurry/android/be;I)V

    move-object v1, v3

    goto :goto_2

    .line 1817
    :cond_7
    if-nez v1, :cond_8

    .line 1819
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1820
    const-string v1, "__sendToServer"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    new-instance v1, Lcom/flurry/android/u;

    const-string v2, "logEvent"

    invoke-direct {v1, v2, v0, p1}, Lcom/flurry/android/u;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/ba;)V

    .line 1822
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v1, p0, v0}, Lcom/flurry/android/ai;->a(Lcom/flurry/android/u;Lcom/flurry/android/be;I)V

    .line 1824
    :cond_8
    return-void

    :cond_9
    move-object v3, v1

    goto :goto_3

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method final declared-synchronized a(Lcom/flurry/android/bb;)V
    .locals 2
    .parameter

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/flurry/android/be;->K:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/android/bb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :cond_0
    monitor-exit p0

    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/flurry/android/u;Lcom/flurry/android/be;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAction:action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",params="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",triggering event="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v3, v3, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1831
    iget-object v0, p1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    .line 1832
    iget-object v3, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v3, v3, Lcom/flurry/android/ba;->c:Landroid/content/Context;

    .line 1833
    iget-object v4, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v5, v4, Lcom/flurry/android/ba;->e:Lcom/flurry/android/bb;

    .line 1834
    iget-object v4, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v4, v4, Lcom/flurry/android/ba;->d:Lcom/flurry/android/AdUnit;

    .line 1836
    const/16 v6, 0xa

    if-le p3, v6, :cond_1

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",triggered by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v1, v1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1981
    :cond_0
    :goto_0
    return-void

    .line 1842
    :cond_1
    const-string v6, "directOpen"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1844
    iget-object v0, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1846
    iget-object v0, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1847
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1848
    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1849
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1850
    invoke-static {v3, v1}, Lcom/flurry/android/y;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1852
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1856
    :cond_2
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v2, "Can\'t start FlurryFullscreenTakeoverActivity, was it declared in the manifest? Falling back to default browser"

    invoke-static {v1, v2}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    invoke-static {v3, v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 1862
    :cond_3
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to perform directOpen action: no url in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v2, v2, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1865
    :cond_4
    const-string v6, "processRedirect"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1867
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v6, "url"

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_5

    .line 1871
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {v4}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/flurry/android/FlurryAdListener;->onApplicationExit(Ljava/lang/String;)V

    .line 1873
    :cond_5
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v6, "url"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1874
    const-string v6, "http"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1876
    invoke-direct {p0, v5, v4, p1, v0}, Lcom/flurry/android/be;->a(Lcom/flurry/android/bb;Lcom/flurry/android/AdUnit;Lcom/flurry/android/u;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/flurry/android/ae;

    invoke-direct {v0, p0, v3, v4}, Lcom/flurry/android/ae;-><init>(Lcom/flurry/android/be;Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, ""

    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v5}, Lcom/flurry/android/ae;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz v0, :cond_6

    invoke-direct {p0, v3, v0, v1}, Lcom/flurry/android/be;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-object v0, v2

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL could not be found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1880
    :cond_7
    invoke-direct {p0, v3, v0, v2}, Lcom/flurry/android/be;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1884
    :cond_8
    const-string v6, "verifyUrl"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1886
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1890
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v5, v4, p1, v0}, Lcom/flurry/android/be;->a(Lcom/flurry/android/bb;Lcom/flurry/android/AdUnit;Lcom/flurry/android/u;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1891
    const-string v1, "android.intent.action.VIEW"

    invoke-static {v3, v0, v1}, Lcom/flurry/android/be;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "urlVerified"

    .line 1892
    :goto_2
    new-instance v0, Lcom/flurry/android/ba;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v3, v3, Lcom/flurry/android/ba;->c:Landroid/content/Context;

    iget-object v6, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget v6, v6, Lcom/flurry/android/ba;->f:I

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/ba;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;I)V

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v0, p0, v1}, Lcom/flurry/android/be;->a(Lcom/flurry/android/ba;Lcom/flurry/android/ai;I)V

    goto/16 :goto_0

    .line 1891
    :cond_9
    const-string v1, "urlNotVerified"

    goto :goto_2

    .line 1897
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1898
    invoke-direct {p0, v3, v0}, Lcom/flurry/android/be;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v1, "urlVerified"

    .line 1899
    :goto_3
    new-instance v0, Lcom/flurry/android/ba;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v3, v3, Lcom/flurry/android/ba;->c:Landroid/content/Context;

    iget-object v6, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget v6, v6, Lcom/flurry/android/ba;->f:I

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/ba;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;I)V

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v0, p0, v1}, Lcom/flurry/android/be;->a(Lcom/flurry/android/ba;Lcom/flurry/android/ai;I)V

    goto/16 :goto_0

    .line 1898
    :cond_b
    const-string v1, "urlNotVerified"

    goto :goto_3

    .line 1904
    :cond_c
    const-string v6, "sendUrlAsync"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1906
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    if-eqz v0, :cond_d

    .line 1910
    iget-object v0, p0, Lcom/flurry/android/be;->H:Lcom/flurry/android/FlurryAdListener;

    invoke-virtual {v4}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onApplicationExit(Ljava/lang/String;)V

    .line 1912
    :cond_d
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v5, v4, p1, v0}, Lcom/flurry/android/be;->a(Lcom/flurry/android/bb;Lcom/flurry/android/AdUnit;Lcom/flurry/android/u;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url after is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/flurry/android/d;

    invoke-direct {v1, p0, v3, v0}, Lcom/flurry/android/d;-><init>(Lcom/flurry/android/be;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/be;->F:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1915
    :cond_e
    const-string v5, "sendAdLogs"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1917
    invoke-virtual {p0}, Lcom/flurry/android/be;->j()V

    goto/16 :goto_0

    .line 1919
    :cond_f
    const-string v5, "logEvent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1921
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v3, "__sendToServer"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v3, "__sendToServer"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    .line 1922
    :goto_4
    iget-object v1, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v2, "__sendToServer"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    iget-object v1, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v1, v1, Lcom/flurry/android/ba;->e:Lcom/flurry/android/bb;

    iget-object v2, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v2, v2, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/flurry/android/be;->a(Lcom/flurry/android/bb;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    goto/16 :goto_0

    :cond_10
    move v0, v2

    .line 1921
    goto :goto_4

    .line 1926
    :cond_11
    const-string v1, "nextFrame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1930
    const-string v1, "nextAdUnit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1932
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v4}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/flurry/android/t;

    move-result-object v3

    .line 1933
    if-eqz v3, :cond_13

    .line 1935
    const-wide/16 v1, 0x1e

    .line 1936
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v4, "delay"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1940
    :try_start_1
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v4, "delay"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v0

    .line 1948
    :goto_5
    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lcom/flurry/android/t;->a(I)V

    .line 1949
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0, v3}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/t;)V

    goto/16 :goto_0

    .line 1944
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught NumberFormatException with delay parameter in nextAdUnit:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v5, "delay"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_12
    move-wide v0, v1

    goto :goto_5

    .line 1953
    :cond_13
    iget-object v0, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->d:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1954
    iget-object v1, p0, Lcom/flurry/android/be;->c:Lcom/flurry/android/w;

    invoke-virtual {v1, v0}, Lcom/flurry/android/w;->a(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/be;->P:Lcom/flurry/android/AdUnit;

    goto/16 :goto_0

    .line 1957
    :cond_14
    const-string v1, "launchPackage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1959
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v1, "package"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1964
    :try_start_2
    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v2, "package"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1965
    if-eqz v0, :cond_15

    .line 1966
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 1972
    :catch_3
    move-exception v0

    .line 1973
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    goto/16 :goto_0

    .line 1968
    :cond_15
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v2, "package"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1969
    const/4 v1, 0x0

    invoke-direct {p0, v3, v0, v1}, Lcom/flurry/android/be;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1979
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",triggered by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v1, v1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method final declared-synchronized a(Ljava/io/DataInputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 1632
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1633
    if-eqz v0, :cond_0

    .line 1635
    iget-object v1, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1639
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    new-instance v2, Lcom/flurry/android/bb;

    invoke-direct {v2, p1}, Lcom/flurry/android/bb;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1632
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1641
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/flurry/android/be;->k:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1644
    monitor-exit p0

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/flurry/android/be;->E:Ljava/lang/String;

    .line 333
    return-void
.end method

.method final a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;J)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/flurry/android/be;->M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    if-nez p1, :cond_1

    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v1, "ad space name should not be null"

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/flurry/android/h;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/h;-><init>(Lcom/flurry/android/be;Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;)V

    iget-object v1, p0, Lcom/flurry/android/be;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v6, "/v3/getAds.do"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/be;->a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/flurry/android/be;->M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    invoke-direct/range {p0 .. p5}, Lcom/flurry/android/be;->a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;)[B

    move-result-object v0

    .line 1238
    if-eqz v0, :cond_0

    .line 1240
    invoke-direct {p0, p1, v0, p6}, Lcom/flurry/android/be;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/be;->M:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1247
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/bb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    iput-object p1, p0, Lcom/flurry/android/be;->L:Ljava/util/List;

    .line 343
    return-void
.end method

.method final a(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    iput-object p1, p0, Lcom/flurry/android/be;->D:Ljava/util/Map;

    .line 338
    return-void
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/flurry/android/be;->N:Z

    .line 423
    return-void
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;J)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 937
    const/4 v0, 0x0

    .line 938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 939
    :cond_0
    :goto_0
    add-long v1, v9, p4

    invoke-static {v1, v2}, Lcom/flurry/android/y;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 941
    iget-object v1, p0, Lcom/flurry/android/be;->c:Lcom/flurry/android/w;

    invoke-virtual {v1, p2}, Lcom/flurry/android/w;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    const/4 v0, 0x1

    .line 953
    :goto_1
    return v0

    .line 945
    :cond_1
    if-nez v0, :cond_0

    .line 947
    const/4 v8, 0x1

    .line 948
    invoke-static {p1}, Lcom/flurry/android/y;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;I)I

    move-result v2

    .line 949
    invoke-static {p1}, Lcom/flurry/android/y;->b(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;I)I

    move-result v3

    .line 950
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/flurry/android/be;->a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;J)V

    move v0, v8

    .line 951
    goto :goto_0

    .line 953
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;J)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 437
    .line 438
    invoke-direct {p0}, Lcom/flurry/android/be;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return v6

    .line 443
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p5, v0

    if-gez v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/flurry/android/be;->c:Lcom/flurry/android/w;

    invoke-virtual {v0, p2}, Lcom/flurry/android/w;->b(Ljava/lang/String;)Z

    move-result v8

    invoke-static {p1}, Lcom/flurry/android/be;->d(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v7, :cond_1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/flurry/android/GetAdAsyncTask;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/GetAdAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;Lcom/flurry/android/be;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/GetAdAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    move v6, v8

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0, p4}, Lcom/flurry/android/bd;->a(Landroid/view/ViewGroup;)Lcom/flurry/android/t;

    move-result-object v8

    .line 452
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0, p1, p4, p2}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/flurry/android/t;

    move-result-object v0

    .line 453
    if-nez v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/be;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;)Lcom/flurry/android/t;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/android/bd;->b(Landroid/content/Context;Lcom/flurry/android/t;)V

    :cond_3
    move-object v1, v0

    .line 460
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0, p1, p4, p2}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 463
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 465
    iget-object v3, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v3, p1, v0}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Lcom/flurry/android/t;)V

    .line 466
    invoke-virtual {v0}, Lcom/flurry/android/t;->c()Landroid/view/ViewGroup;

    move-result-object v3

    .line 467
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 472
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v0, v1, p5, p6}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/t;J)Lcom/flurry/android/ar;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/flurry/android/ar;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 475
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 477
    if-eqz v8, :cond_6

    .line 479
    iget-object v2, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v2, p1, v8}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Lcom/flurry/android/t;)V

    .line 480
    invoke-virtual {p4, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 482
    :cond_6
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 484
    :cond_7
    invoke-virtual {v1}, Lcom/flurry/android/t;->a()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v1}, Lcom/flurry/android/t;->b()Z

    move-result v2

    if-nez v2, :cond_8

    .line 486
    iget-object v2, p0, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v2, v1}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/t;)V

    .line 489
    :cond_8
    invoke-virtual {v0}, Lcom/flurry/android/ar;->a()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/flurry/android/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v7

    .line 491
    :goto_2
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad is being returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/bc;->a(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    .line 492
    goto/16 :goto_0

    :cond_a
    move v0, v6

    .line 489
    goto :goto_2
.end method

.method final b()J
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/flurry/android/be;->A:J

    return-wide v0
.end method

.method final b(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 918
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v1, "Init\'ing ads."

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-boolean v0, p0, Lcom/flurry/android/be;->r:Z

    if-nez v0, :cond_0

    .line 922
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 923
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 924
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 925
    const-string v1, ""

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/flurry/android/be;->a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;J)V

    .line 926
    iput-boolean v4, p0, Lcom/flurry/android/be;->r:Z

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v1, "Ads already init\'ed, will not init them again this session"

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final b(Lcom/flurry/android/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 1691
    iput-object p1, p0, Lcom/flurry/android/be;->x:Lcom/flurry/android/bb;

    .line 1692
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/flurry/android/be;->s:Ljava/lang/String;

    .line 557
    return-void
.end method

.method final b(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    if-eqz p1, :cond_0

    .line 372
    iput-object p1, p0, Lcom/flurry/android/be;->O:Ljava/util/Map;

    .line 374
    :cond_0
    return-void
.end method

.method final b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 850
    move v2, v1

    .line 852
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 855
    invoke-static {p1}, Lcom/flurry/android/be;->d(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 857
    iget-object v3, p0, Lcom/flurry/android/be;->h:Lcom/flurry/android/ax;

    const/16 v4, 0x2710

    const/16 v5, 0x3a98

    invoke-static {v3, p2, v4, v5, v0}, Lcom/flurry/android/y;->a(Lcom/flurry/android/ax;Ljava/lang/String;IIZ)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 858
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL hit succeeded for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 879
    :goto_1
    return v0

    .line 869
    :cond_0
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 871
    :catch_0
    move-exception v3

    .line 873
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/flurry/android/be;->z:Ljava/lang/String;

    return-object v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/flurry/android/be;->t:Ljava/lang/String;

    .line 563
    return-void
.end method

.method final c(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 632
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 634
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 636
    iget-object v2, p0, Lcom/flurry/android/be;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method final declared-synchronized d()J
    .locals 4

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/be;->B:J

    sub-long/2addr v0, v2

    .line 315
    iget-wide v2, p0, Lcom/flurry/android/be;->C:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/flurry/android/be;->C:J

    .line 317
    iget-wide v0, p0, Lcom/flurry/android/be;->C:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 315
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/android/be;->C:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/be;->C:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final d(Ljava/lang/String;)Lcom/flurry/android/AdUnit;
    .locals 1
    .parameter

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/flurry/android/be;->c:Lcom/flurry/android/w;

    invoke-virtual {v0, p1}, Lcom/flurry/android/w;->a(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    .line 1097
    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/flurry/android/be;->E:Ljava/lang/String;

    return-object v0
.end method

.method final e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1136
    invoke-direct {p0}, Lcom/flurry/android/be;->p()[B

    move-result-object v0

    .line 1138
    if-eqz v0, :cond_0

    .line 1140
    const-string v1, ""

    invoke-direct {p0, v1, v0, p1}, Lcom/flurry/android/be;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    .line 1144
    :cond_0
    return-void
.end method

.method final f()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/be;->O:Ljava/util/Map;

    .line 379
    return-void
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/flurry/android/be;->I:Z

    return v0
.end method

.method final h()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/flurry/android/be;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 645
    return-void
.end method

.method final i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/flurry/android/be;->w:Ljava/util/Map;

    return-object v0
.end method

.method final declared-synchronized j()V
    .locals 2

    .prologue
    .line 1121
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/f;

    invoke-direct {v0, p0}, Lcom/flurry/android/f;-><init>(Lcom/flurry/android/be;)V

    .line 1130
    iget-object v1, p0, Lcom/flurry/android/be;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    monitor-exit p0

    return-void

    .line 1121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized k()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1529
    monitor-enter p0

    .line 1533
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/be;->l:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/ad;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1534
    if-nez v0, :cond_0

    .line 1554
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1555
    :goto_0
    monitor-exit p0

    return-void

    .line 1539
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/be;->l:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1540
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1541
    const v0, 0xb5fa

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1542
    iget-object v2, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1544
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/be;->J:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/be;->a(Ljava/util/List;Ljava/io/DataOutputStream;)V

    .line 1545
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1546
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 1554
    :try_start_6
    invoke-static {v1}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1529
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1545
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 1548
    :catch_0
    move-exception v0

    .line 1550
    :goto_1
    :try_start_9
    sget-object v2, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1554
    :try_start_a
    invoke-static {v1}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 1548
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method final declared-synchronized l()V
    .locals 2

    .prologue
    .line 1561
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/j;

    invoke-direct {v0, p0}, Lcom/flurry/android/j;-><init>(Lcom/flurry/android/be;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flurry/android/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    monitor-exit p0

    return-void

    .line 1561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final m()Lcom/flurry/android/bb;
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/flurry/android/be;->x:Lcom/flurry/android/bb;

    return-object v0
.end method

.method final n()Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/flurry/android/be;->y:Lcom/flurry/android/AdUnit;

    return-object v0
.end method
