.class Lcom/mopub/mobileads/AdFetcher$AdFetchTask;
.super Landroid/os/AsyncTask;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdFetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/AdFetcher$AdFetchResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXPONENTIAL_BACKOFF_FACTOR:D = 1.5

.field private static final MAXIMUM_REFRESH_TIME_MILLISECONDS:I = 0x927c0


# instance fields
.field private mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

.field private mAdView:Lcom/mopub/mobileads/AdView;

.field private mException:Ljava/lang/Exception;

.field private mFetchStatus:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mTaskId:J


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/AdFetcher;)V
    .locals 2
    .parameter "adFetcher"

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 164
    sget-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->NOT_SET:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mFetchStatus:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    .line 170
    iput-object p1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    #getter for: Lcom/mopub/mobileads/AdFetcher;->mAdView:Lcom/mopub/mobileads/AdView;
    invoke-static {v0}, Lcom/mopub/mobileads/AdFetcher;->access$100(Lcom/mopub/mobileads/AdFetcher;)Lcom/mopub/mobileads/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    .line 173
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 174
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    #getter for: Lcom/mopub/mobileads/AdFetcher;->mCurrentTaskId:J
    invoke-static {v0}, Lcom/mopub/mobileads/AdFetcher;->access$200(Lcom/mopub/mobileads/AdFetcher;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/AdFetcher;Lcom/mopub/mobileads/AdFetcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;-><init>(Lcom/mopub/mobileads/AdFetcher;)V

    return-void
.end method

.method private exponentialBackoff()V
    .locals 5

    .prologue
    .line 357
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    if-nez v1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdView;->getRefreshTimeMilliseconds()I

    move-result v0

    .line 363
    .local v0, refreshTimeMilliseconds:I
    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 364
    const v1, 0x927c0

    if-le v0, v1, :cond_1

    .line 365
    const v0, 0x927c0

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdView;->setRefreshTimeMilliseconds(I)V

    goto :goto_0
.end method

.method private fetch(Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
    .locals 12
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 191
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 192
    .local v5, httpget:Lorg/apache/http/client/methods/HttpGet;
    const-string v10, "User-Agent"

    iget-object v11, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    #getter for: Lcom/mopub/mobileads/AdFetcher;->mUserAgent:Ljava/lang/String;
    invoke-static {v11}, Lcom/mopub/mobileads/AdFetcher;->access$300(Lcom/mopub/mobileads/AdFetcher;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 197
    sget-object v10, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->FETCH_CANCELLED:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    iput-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mFetchStatus:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    .line 269
    :goto_0
    return-object v9

    .line 201
    :cond_0
    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v10}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 202
    :cond_1
    const-string v10, "MoPub"

    const-string v11, "Error loading ad: AdView has already been GCed or destroyed."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_2
    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v10, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 207
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 210
    .local v3, entity:Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0x190

    if-lt v10, v11, :cond_3

    .line 211
    const-string v10, "MoPub"

    const-string v11, "MoPub server returned invalid response."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v10, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    iput-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mFetchStatus:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    goto :goto_0

    .line 214
    :cond_3
    if-eqz v8, :cond_4

    if-eqz v3, :cond_4

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_5

    .line 215
    :cond_4
    const-string v10, "MoPub"

    const-string v11, "MoPub server returned invalid response."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v10, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    iput-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mFetchStatus:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    goto :goto_0

    .line 220
    :cond_5
    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v10, v8}, Lcom/mopub/mobileads/AdView;->configureAdViewUsingHeadersFromHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 223
    const-string v10, "X-Adtype"

    invoke-interface {v8, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 224
    .local v0, atHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "clear"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 225
    :cond_6
    const-string v10, "MoPub"

    const-string v11, "MoPub server returned no ad."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v10, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->CLEAR_AD_TYPE:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    iput-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mFetchStatus:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    goto :goto_0

    .line 230
    :cond_7
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "custom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 232
    const-string v9, "MoPub"

    const-string v10, "Performing custom event."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v9, "X-Customselector"

    invoke-interface {v8, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 234
    .local v1, cmHeader:Lorg/apache/http/Header;
    new-instance v9, Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;

    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-direct {v9, v10, v1}, Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Lorg/apache/http/Header;)V

    goto/16 :goto_0

    .line 236
    .end local v1           #cmHeader:Lorg/apache/http/Header;
    :cond_8
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mraid"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 238
    const-string v10, "MoPub"

    const-string v11, "Loading mraid ad"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v7, paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "X-Adtype"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->httpEntityToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, data:Ljava/lang/String;
    const-string v10, "X-Nativeparams"

    invoke-virtual {v7, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v10, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;

    iget-object v11, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-direct {v10, v11, v7, v9}, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/util/HashMap;Lcom/mopub/mobileads/AdFetcher$1;)V

    move-object v9, v10

    goto/16 :goto_0

    .line 246
    .end local v2           #data:Ljava/lang/String;
    .end local v7           #paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "html"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 248
    const-string v10, "MoPub"

    const-string v11, "Loading native ad"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 251
    .restart local v7       #paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "X-Adtype"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v10, "X-Nativeparams"

    invoke-interface {v8, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 254
    .local v6, npHeader:Lorg/apache/http/Header;
    const-string v10, "X-Nativeparams"

    const-string v11, "{}"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    if-eqz v6, :cond_a

    .line 256
    const-string v10, "X-Nativeparams"

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_a
    const-string v10, "X-Fulladtype"

    invoke-interface {v8, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 260
    .local v4, ftHeader:Lorg/apache/http/Header;
    if-eqz v4, :cond_b

    .line 261
    const-string v10, "X-Fulladtype"

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_b
    new-instance v10, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;

    iget-object v11, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-direct {v10, v11, v7, v9}, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/util/HashMap;Lcom/mopub/mobileads/AdFetcher$1;)V

    move-object v9, v10

    goto/16 :goto_0

    .line 268
    .end local v4           #ftHeader:Lorg/apache/http/Header;
    .end local v6           #npHeader:Lorg/apache/http/Header;
    .end local v7           #paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->httpEntityToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2       #data:Ljava/lang/String;
    new-instance v10, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;

    iget-object v11, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-direct {v10, v11, v2, v9}, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/lang/String;Lcom/mopub/mobileads/AdFetcher$1;)V

    move-object v9, v10

    goto/16 :goto_0
.end method

.method private getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 3

    .prologue
    .line 378
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 379
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdFetcher;->getTimeout()I

    move-result v1

    .line 381
    .local v1, timeoutMilliseconds:I
    if-lez v1, :cond_0

    .line 383
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 384
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 389
    :cond_0
    const/16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 391
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v2
.end method

.method private httpEntityToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 6
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 339
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 340
    .local v2, numberBytesRead:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .local v3, out:Ljava/lang/StringBuffer;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 343
    .local v0, bytes:[B
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 344
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 350
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isMostCurrentTask()Z
    .locals 4

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    #getter for: Lcom/mopub/mobileads/AdFetcher;->mLastCompletedTaskId:J
    invoke-static {v2}, Lcom/mopub/mobileads/AdFetcher;->access$700(Lcom/mopub/mobileads/AdFetcher;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    .line 373
    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    .line 374
    sget-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->NOT_SET:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mFetchStatus:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    .line 375
    return-void
.end method

.method private shutdownHttpClient()V
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 397
    .local v0, manager:Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 400
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 402
    .end local v0           #manager:Lorg/apache/http/conn/ClientConnectionManager;
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
    .locals 3
    .parameter "urls"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, result:Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->fetch(Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->shutdownHttpClient()V

    .line 187
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, exception:Ljava/lang/Exception;
    :try_start_1
    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->shutdownHttpClient()V

    goto :goto_0

    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->shutdownHttpClient()V

    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher$AdFetchResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->isMostCurrentTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const-string v0, "MoPub"

    const-string v1, "Ad response is stale."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    .line 333
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Ad loading was cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 329
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught while loading ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    #calls: Lcom/mopub/mobileads/AdFetcher;->markTaskCompleted(J)V
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/AdFetcher;->access$600(Lcom/mopub/mobileads/AdFetcher;J)V

    .line 332
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/mopub/mobileads/AdFetcher$AdFetchResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->isMostCurrentTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const-string v0, "MoPub"

    const-string v1, "Ad response is stale."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    .line 317
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    :cond_1
    if-eqz p1, :cond_2

    .line 283
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;->cleanup()V

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    #calls: Lcom/mopub/mobileads/AdFetcher;->markTaskCompleted(J)V
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/AdFetcher;->access$600(Lcom/mopub/mobileads/AdFetcher;J)V

    .line 286
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    goto :goto_0

    .line 290
    :cond_3
    if-nez p1, :cond_6

    .line 291
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 292
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught while loading ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->loadFailUrl()V

    .line 306
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mFetchStatus:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    sget-object v1, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    if-ne v0, v1, :cond_5

    .line 307
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->exponentialBackoff()V

    .line 308
    sget-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->NOT_SET:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mFetchStatus:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    .line 315
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    #calls: Lcom/mopub/mobileads/AdFetcher;->markTaskCompleted(J)V
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/AdFetcher;->access$600(Lcom/mopub/mobileads/AdFetcher;J)V

    .line 316
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    goto :goto_0

    .line 311
    :cond_6
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;->execute()V

    .line 312
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;->cleanup()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 157
    check-cast p1, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->onPostExecute(Lcom/mopub/mobileads/AdFetcher$AdFetchResult;)V

    return-void
.end method
