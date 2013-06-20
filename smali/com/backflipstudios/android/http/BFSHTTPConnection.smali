.class public Lcom/backflipstudios/android/http/BFSHTTPConnection;
.super Ljava/lang/Object;
.source "BFSHTTPConnection.java"


# instance fields
.field private m_client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private m_method:Ljava/lang/String;

.field private m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

.field private m_response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Ljava/lang/String;)V
    .locals 3
    .parameter "manager"
    .parameter "method"

    .prologue
    const v2, 0xea60

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 32
    iput-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 33
    iput-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    .line 34
    const-string v1, "GET"

    iput-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_method:Ljava/lang/String;

    .line 38
    const-string v1, "GET"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 59
    :goto_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 61
    .local v0, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 62
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 65
    iput-object p2, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_method:Ljava/lang/String;

    .line 66
    .end local v0           #params:Lorg/apache/http/params/HttpParams;
    :goto_1
    return-void

    .line 43
    :cond_0
    const-string v1, "POST"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    iput-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_0

    .line 48
    :cond_1
    const-string v1, "PUT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1}, Lorg/apache/http/client/methods/HttpPut;-><init>()V

    iput-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_0

    .line 55
    :cond_2
    const-string v1, "bfsplatform"

    const-string v2, "BFSHTTPConnection create with invalid method"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 77
    .local v1, localContext:Lorg/apache/http/protocol/HttpContext;
    iget-object v2, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_client:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2, v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #localContext:Lorg/apache/http/protocol/HttpContext;
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    const-string v2, "bfsplatform"

    const-string v3, "BFSHTTPConnection execute failed"

    invoke-static {v2, v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_0

    .line 94
    const/16 v1, 0x1f7

    .line 98
    :goto_0
    return v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 98
    .local v0, status:Lorg/apache/http/StatusLine;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    goto :goto_0
.end method

.method public getResponseData()[B
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v4, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    if-nez v4, :cond_0

    move-object v2, v3

    .line 171
    :goto_0
    return-object v2

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 152
    .local v1, ent:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 154
    goto :goto_0

    .line 157
    :cond_1
    const/4 v2, 0x0

    .line 160
    .local v2, tmp_array:[B
    :try_start_0
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    :goto_1
    iput-object v3, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/IOException;
    const-string v4, "bfsplatform"

    const-string v5, "BFSHTTPConnection getResponseData failed"

    invoke-static {v4, v5, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-object v1

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 134
    .local v0, firstHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getResponseHeaderNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    iget-object v3, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    if-nez v3, :cond_1

    .line 106
    const/4 v2, 0x0

    .line 122
    :cond_0
    return-object v2

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 110
    .local v0, headers:[Lorg/apache/http/Header;
    const/4 v2, 0x0

    .line 112
    .local v2, retStrings:[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 114
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 118
    aget-object v3, v0, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBody([B)V
    .locals 2
    .parameter "body"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_method:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_method:Ljava/lang/String;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/client/methods/HttpPut;

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method

.method public setTimeoutSec(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 207
    .local v0, params:Lorg/apache/http/params/HttpParams;
    mul-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 208
    mul-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 209
    iget-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 210
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/backflipstudios/android/http/BFSHTTPConnection;->m_request_base:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v1, "bfsplatform"

    const-string v2, "BFSHTTPConnection setURL failed"

    invoke-static {v1, v2, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
