.class public Lcom/mopub/mobileads/AdFetcher;
.super Ljava/lang/Object;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdFetcher$1;,
        Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;,
        Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;,
        Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;,
        Lcom/mopub/mobileads/AdFetcher$AdFetchResult;,
        Lcom/mopub/mobileads/AdFetcher$AdFetchTask;,
        Lcom/mopub/mobileads/AdFetcher$FetchStatus;
    }
.end annotation


# static fields
.field private static final VERSION_CODE_ICE_CREAM_SANDWICH:I = 0xe


# instance fields
.field private mAdView:Lcom/mopub/mobileads/AdView;

.field private mCurrentTask:Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

.field private mCurrentTaskId:J

.field private mLastCompletedTaskId:J

.field private mTimeoutMilliseconds:I

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V
    .locals 3
    .parameter "adview"
    .parameter "userAgent"

    .prologue
    const-wide/16 v1, -0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x2710

    iput v0, p0, Lcom/mopub/mobileads/AdFetcher;->mTimeoutMilliseconds:I

    .line 91
    iput-object p1, p0, Lcom/mopub/mobileads/AdFetcher;->mAdView:Lcom/mopub/mobileads/AdView;

    .line 92
    iput-object p2, p0, Lcom/mopub/mobileads/AdFetcher;->mUserAgent:Ljava/lang/String;

    .line 93
    iput-wide v1, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTaskId:J

    .line 94
    iput-wide v1, p0, Lcom/mopub/mobileads/AdFetcher;->mLastCompletedTaskId:J

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/AdFetcher;)Lcom/mopub/mobileads/AdView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->mAdView:Lcom/mopub/mobileads/AdView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/AdFetcher;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTaskId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/AdFetcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/AdFetcher;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/AdFetcher;->markTaskCompleted(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/AdFetcher;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/mopub/mobileads/AdFetcher;->mLastCompletedTaskId:J

    return-wide v0
.end method

.method private markTaskCompleted(J)V
    .locals 2
    .parameter "taskId"

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/mopub/mobileads/AdFetcher;->mLastCompletedTaskId:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 138
    iput-wide p1, p0, Lcom/mopub/mobileads/AdFetcher;->mLastCompletedTaskId:J

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelFetch()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTask:Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling fetch ad for task #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTaskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTask:Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->cancel(Z)Z

    .line 134
    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdFetcher;->cancelFetch()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->mAdView:Lcom/mopub/mobileads/AdView;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->mUserAgent:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public fetchAdForUrl(Ljava/lang/String;)V
    .locals 13
    .parameter "url"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 98
    iget-wide v6, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTaskId:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTaskId:J

    .line 99
    const-string v6, "MoPub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fetching ad for task #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTaskId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v6, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTask:Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

    if-eqz v6, :cond_0

    .line 102
    iget-object v6, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTask:Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

    invoke-virtual {v6, v10}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->cancel(Z)Z

    .line 105
    :cond_0
    new-instance v6, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;-><init>(Lcom/mopub/mobileads/AdFetcher;Lcom/mopub/mobileads/AdFetcher$1;)V

    iput-object v6, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTask:Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

    .line 107
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_1

    .line 108
    const-class v0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

    .line 109
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Ljava/util/concurrent/Executor;

    aput-object v6, v4, v11

    const-class v6, [Ljava/lang/Object;

    aput-object v6, v4, v10

    .line 111
    .local v4, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v5, v10, [Ljava/lang/String;

    aput-object p1, v5, v11

    .line 114
    .local v5, parameters:[Ljava/lang/String;
    :try_start_0
    const-string v6, "executeOnExecutor"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 115
    .local v3, method:Ljava/lang/reflect/Method;
    const-string v6, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 116
    .local v2, field:Ljava/lang/reflect/Field;
    iget-object v6, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTask:Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v5           #parameters:[Ljava/lang/String;
    :goto_0
    return-void

    .line 117
    .restart local v0       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v5       #parameters:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 118
    .local v1, exception:Ljava/lang/NoSuchMethodException;
    const-string v6, "MoPub"

    const-string v7, "Error executing AdFetchTask on ICS+, method not found."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v1           #exception:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 120
    .local v1, exception:Ljava/lang/reflect/InvocationTargetException;
    const-string v6, "MoPub"

    const-string v7, "Error executing AdFetchTask on ICS+, thrown by executeOnExecutor."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .end local v1           #exception:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 122
    .local v1, exception:Ljava/lang/Exception;
    const-string v6, "MoPub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error executing AdFetchTask on ICS+: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #exception:Ljava/lang/Exception;
    .end local v4           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v5           #parameters:[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/mopub/mobileads/AdFetcher;->mCurrentTask:Lcom/mopub/mobileads/AdFetcher$AdFetchTask;

    new-array v7, v10, [Ljava/lang/String;

    aput-object p1, v7, v11

    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected getTimeout()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/mopub/mobileads/AdFetcher;->mTimeoutMilliseconds:I

    return v0
.end method

.method protected setTimeout(I)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 150
    iput p1, p0, Lcom/mopub/mobileads/AdFetcher;->mTimeoutMilliseconds:I

    .line 151
    return-void
.end method
