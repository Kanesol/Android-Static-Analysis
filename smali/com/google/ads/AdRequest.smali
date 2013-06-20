.class public Lcom/google/ads/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdRequest$Gender;,
        Lcom/google/ads/AdRequest$ErrorCode;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "Ads"

.field public static final TEST_EMULATOR:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "6.2.1"

.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private d:Lcom/google/ads/AdRequest$Gender;

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/location/Location;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    .line 154
    sput-object v2, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    .line 155
    sput-object v2, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    .line 160
    :try_start_0
    const-string v0, "com.google.analytics.tracking.android.AdMobInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 162
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 164
    sput-object v3, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    .line 161
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getJoinIds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    .line 167
    sput-object v3, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v0, "No Google Analytics: Library Not Found."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 217
    :cond_2
    :goto_2
    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    return-void

    .line 171
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 172
    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    .line 174
    const-string v0, "No Google Analytics: Library Incompatible."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 178
    :catch_1
    move-exception v0

    .line 179
    const-string v0, "No Google Analytics: Error Loading Library"

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object v1, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    .line 188
    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 191
    iput-object v1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 194
    iput-object v1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    .line 201
    iput-object v1, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    .line 204
    iput-boolean v2, p0, Lcom/google/ads/AdRequest;->j:Z

    .line 207
    iput-boolean v2, p0, Lcom/google/ads/AdRequest;->k:Z

    .line 220
    iput-object v1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    return-void
.end method

.method private declared-synchronized a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;

    .line 419
    :cond_0
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/AdRequest;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    .line 454
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 457
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    return-object p0
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/google/ads/AdRequest;
    .locals 1
    .parameter "keyword"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    return-object p0
.end method

.method public addKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, keywords:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 390
    return-object p0
.end method

.method public addMediationExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/AdRequest;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;
    .locals 1
    .parameter "testDevice"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 692
    return-object p0
.end method

.method public clearBirthday()Lcom/google/ads/AdRequest;
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 310
    return-object p0
.end method

.method public getBirthday()Ljava/util/Date;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()Lcom/google/ads/AdRequest$Gender;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 405
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, extrasClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOneOptOut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getPlusOneOptOut()Z

    move-result v0

    return v0
.end method

.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 576
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 579
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "kw"

    iget-object v4, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    if-eqz v0, :cond_1

    .line 585
    const-string v0, "cust_gender"

    iget-object v4, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v4}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 590
    const-string v0, "cust_age"

    sget-object v4, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 595
    const-string v0, "uule"

    iget-object v4, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    invoke-static {v4}, Lcom/google/ads/util/AdUtil;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_3
    iget-boolean v0, p0, Lcom/google/ads/AdRequest;->j:Z

    if-eqz v0, :cond_4

    .line 599
    const-string v0, "testing"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/ads/AdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 603
    const-string v0, "adtest"

    const-string v4, "on"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_5
    :goto_0
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 620
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getPlusOneOptOut()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 621
    const-string v2, "pto"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :goto_1
    const-class v1, Lcom/google/ads/doubleclick/DfpExtras;

    invoke-virtual {p0, v1}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/doubleclick/DfpExtras;

    .line 629
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 632
    const-string v0, "extras"

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 640
    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 642
    const-string v1, "ppid"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_7
    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 647
    const-string v0, "mediation_extras"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_8
    :try_start_0
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 653
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 654
    sget-object v1, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 657
    check-cast v0, Ljava/util/Map;

    .line 658
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 659
    const-string v1, "analytics_join_id"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :cond_9
    :goto_3
    return-object v3

    .line 605
    :cond_a
    iget-boolean v0, p0, Lcom/google/ads/AdRequest;->k:Z

    if-nez v0, :cond_5

    .line 607
    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 608
    const-string v0, "AdRequest.TEST_EMULATOR"

    .line 612
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To get test ads on this device, call adRequest.addTestDevice("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ");"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 614
    iput-boolean v1, p0, Lcom/google/ads/AdRequest;->k:Z

    goto/16 :goto_0

    .line 610
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 623
    :cond_c
    const-string v4, "cipa"

    invoke-static {p1}, Lcom/google/ads/ah;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_d

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_d
    move v1, v2

    goto :goto_5

    .line 633
    :cond_e
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 636
    const-string v2, "extras"

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 662
    :catch_0
    move-exception v0

    .line 663
    const-string v1, "Internal Analytics Error:"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 721
    iget-object v1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 722
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 724
    if-nez v1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    iget-object v2, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeNetworkExtras(Ljava/lang/Class;)Lcom/google/ads/AdRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, extrasClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-object p0
.end method

.method public setBirthday(Ljava/lang/String;)Lcom/google/ads/AdRequest;
    .locals 2
    .parameter "birthday"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 250
    const-string v0, ""

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 251
    :cond_0
    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 262
    :goto_0
    return-object p0

    .line 254
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v0, "Birthday format invalid.  Expected \'YYYYMMDD\' where \'YYYY\' is a 4 digit year, \'MM\' is a two digit month, and \'DD\' is a two digit day.  Birthday value ignored"

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 258
    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    goto :goto_0
.end method

.method public setBirthday(Ljava/util/Calendar;)Lcom/google/ads/AdRequest;
    .locals 1
    .parameter "calendar"

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 293
    :goto_0
    return-object p0

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->setBirthday(Ljava/util/Date;)Lcom/google/ads/AdRequest;

    goto :goto_0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/ads/AdRequest;
    .locals 3
    .parameter "birthday"

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 277
    :goto_0
    return-object p0

    .line 274
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    goto :goto_0
.end method

.method public setExtras(Ljava/util/Map;)Lcom/google/ads/AdRequest;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 434
    .local p1, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 435
    return-object p0
.end method

.method public setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;
    .locals 0
    .parameter "gender"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    .line 229
    return-object p0
.end method

.method public setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, keywords:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 354
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/ads/AdRequest;
    .locals 0
    .parameter "location"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    .line 541
    return-object p0
.end method

.method public setMediationExtras(Ljava/util/Map;)Lcom/google/ads/AdRequest;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, mediationExtras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    .line 510
    return-object p0
.end method

.method public setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;
    .locals 2
    .parameter "extras"

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_0
    return-object p0
.end method

.method public setPlusOneOptOut(Z)Lcom/google/ads/AdRequest;
    .locals 1
    .parameter "plusOneOptOut"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/google/ads/AdRequest;->a()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 328
    return-object p0
.end method

.method public setTestDevices(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, testDevices:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    .line 706
    return-object p0
.end method

.method public setTesting(Z)Lcom/google/ads/AdRequest;
    .locals 0
    .parameter "testing"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/google/ads/AdRequest;->j:Z

    .line 565
    return-object p0
.end method
