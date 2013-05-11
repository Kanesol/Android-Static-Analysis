.class public Lcom/trck8/app/util/HttpGetContent;
.super Ljava/lang/Object;
.source "HttpGetContent.java"


# static fields
.field public static final HTTP_CONNECTION_TIMEOUT_BITMAP:I = 0x1388

.field public static final HTTP_CONNECTION_TIMEOUT_BYTE:I = 0x1388

.field public static final HTTP_CONNECTION_TIMEOUT_STREAM:I = 0x1388

.field public static final HTTP_CONNECTION_TIMEOUT_STRING:I = 0x1388

.field public static final HTTP_GET_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final HTTP_POST_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final HTTP_SOCKET_TIMEOUT_BITMAP:I = 0xbb8

.field public static final HTTP_SOCKET_TIMEOUT_BYTE:I = 0xbb8

.field public static final HTTP_SOCKET_TIMEOUT_STREAM:I = 0xbb8

.field public static final HTTP_SOCKET_TIMEOUT_STRING:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpBitmap(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    .local p1, getParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/trck8/app/util/HttpGetContent;->getHttpBitmap(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpBitmap(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "uri"
    .parameter
    .parameter
    .parameter "properties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    .local p1, getParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p3, :cond_0

    new-instance p3, Ljava/util/Properties;

    .end local p3
    invoke-direct {p3}, Ljava/util/Properties;-><init>()V

    .line 357
    .restart local p3
    :cond_0
    const-string v1, "http.connection.timeout"

    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 358
    const-string v1, "http.connection.timeout"

    .line 359
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1388

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {p3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    :cond_1
    const-string v1, "http.socket.timeout"

    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 362
    const-string v1, "http.socket.timeout"

    .line 363
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xbb8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {p3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/trck8/app/util/HttpGetContent;->getHttpByteArray(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)[B

    move-result-object v0

    .line 367
    .local v0, data:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getHttpByteArray(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[B
    .locals 1
    .parameter "uri"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p1, getParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/trck8/app/util/HttpGetContent;->getHttpByteArray(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getHttpByteArray(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)[B
    .locals 23
    .parameter "uri"
    .parameter
    .parameter
    .parameter "properties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Properties;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    .local p1, getParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p3, :cond_0

    new-instance p3, Ljava/util/Properties;

    .end local p3
    invoke-direct/range {p3 .. p3}, Ljava/util/Properties;-><init>()V

    .line 111
    .restart local p3
    :cond_0
    const-string v19, "http.connection.timeout"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_1

    .line 112
    const-string v19, "http.connection.timeout"

    .line 113
    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x1388

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    .line 112
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    :cond_1
    const-string v19, "http.socket.timeout"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_2

    .line 116
    const-string v19, "http.socket.timeout"

    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0xbb8

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    :cond_2
    const-string v19, "get.encoding"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_3

    .line 119
    const-string v19, "get.encoding"

    const-string v20, "UTF-8"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    :cond_3
    const-string v19, "post.encoding"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_4

    .line 122
    const-string v19, "post.encoding"

    const-string v20, "UTF-8"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    :cond_4
    const-string v19, "get.encoding"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/trck8/app/util/HttpGetContent;->getUri(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 129
    const-string v19, "HttpGetContent"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "URL:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, in:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 133
    .local v11, out:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 134
    .local v8, objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v16, 0x0

    check-cast v16, [B

    .line 137
    .local v16, result:[B
    :try_start_0
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 139
    .end local v8           #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v9, objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_1
    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 142
    .local v5, httpParams:Lorg/apache/http/params/HttpParams;
    const-string v19, "http.proxy.host"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    const-string v19, "http.proxy.port"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 143
    const-string v19, "HttpGetContent"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Use Proxy[host:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "http.proxy.host"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 144
    const-string v21, ",port:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "http.proxy.port"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 143
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v13, Lorg/apache/http/HttpHost;

    const-string v19, "http.proxy.host"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 148
    const-string v20, "http.proxy.port"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 147
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 150
    .local v13, proxy:Lorg/apache/http/HttpHost;
    const-string v19, "http.route.default-proxy"

    move-object/from16 v0, v19

    invoke-interface {v5, v0, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 155
    .end local v13           #proxy:Lorg/apache/http/HttpHost;
    :cond_5
    const-string v19, "http.connection.timeout"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 154
    move/from16 v0, v19

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 159
    const-string v19, "http.socket.timeout"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 158
    move/from16 v0, v19

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 161
    const/4 v14, 0x0

    .line 163
    .local v14, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p2, :cond_a

    .line 165
    const-string v19, "HttpGetContent"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "post:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 171
    .local v10, objPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v19, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 172
    const-string v20, "post.encoding"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 175
    move-object v14, v10

    .line 182
    .end local v10           #objPost:Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    invoke-virtual {v9, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 185
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    .line 188
    .local v18, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 189
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v7, message:Ljava/lang/StringBuffer;
    const-string v19, "\u30d5\u30a1\u30a4\u30eb\u306e\u53d6\u5f97\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002HTTP\u30b9\u30c6\u30fc\u30bf\u30b9:"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 191
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 192
    const-string v20, "line.separator"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 193
    const-string v20, "URI:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 194
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    if-eqz p2, :cond_6

    .line 196
    const-string v19, "line.separator"

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 197
    const-string v20, "POST:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 198
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_6
    new-instance v19, Ljava/io/FileNotFoundException;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    .end local v5           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v7           #message:Ljava/lang/StringBuffer;
    .end local v14           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v18           #statusLine:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v4

    move-object v8, v9

    .line 217
    .end local v9           #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v4, e:Ljava/io/IOException;
    .restart local v8       #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    :goto_1
    :try_start_2
    const-string v19, "HttpGetContent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 222
    :goto_2
    if-eqz v6, :cond_7

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 224
    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 226
    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 231
    :cond_9
    :goto_3
    throw v19

    .line 178
    .end local v8           #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v5       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v9       #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_a
    :try_start_4
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    .end local v14           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v14       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto/16 :goto_0

    .line 205
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v18       #statusLine:Lorg/apache/http/StatusLine;
    :cond_b
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 206
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 207
    .end local v11           #out:Ljava/io/ByteArrayOutputStream;
    .local v12, out:Ljava/io/ByteArrayOutputStream;
    const/16 v19, 0x400

    :try_start_5
    move/from16 v0, v19

    new-array v3, v0, [B

    .line 208
    .local v3, byteArray:[B
    const/16 v17, 0x0

    .line 209
    .local v17, size:I
    :goto_4
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v17

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 214
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v16

    .line 222
    if-eqz v6, :cond_c

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 224
    :cond_c
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 226
    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 233
    :cond_e
    :goto_5
    return-object v16

    .line 210
    :cond_f
    const/16 v19, 0x0

    :try_start_7
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v12, v3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 215
    .end local v3           #byteArray:[B
    .end local v17           #size:I
    :catch_1
    move-exception v4

    move-object v8, v9

    .end local v9           #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8       #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v11, v12

    .end local v12           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1

    .line 227
    .end local v5           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v14           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v18           #statusLine:Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v4

    .line 229
    .local v4, e:Ljava/lang/Exception;
    const-string v20, "HttpGetContent"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 227
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #byteArray:[B
    .restart local v5       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v9       #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #size:I
    .restart local v18       #statusLine:Lorg/apache/http/StatusLine;
    :catch_3
    move-exception v4

    .line 229
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v19, "HttpGetContent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 219
    .end local v3           #byteArray:[B
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v12           #out:Ljava/io/ByteArrayOutputStream;
    .end local v14           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #size:I
    .end local v18           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v11       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v19

    move-object v8, v9

    .end local v9           #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8       #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_2

    .end local v8           #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #httpParams:Lorg/apache/http/params/HttpParams;
    .restart local v9       #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v18       #statusLine:Lorg/apache/http/StatusLine;
    :catchall_2
    move-exception v19

    move-object v8, v9

    .end local v9           #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v8       #objHttp:Lorg/apache/http/impl/client/DefaultHttpClient;
    move-object v11, v12

    .end local v12           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2

    .line 215
    .end local v5           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v14           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v18           #statusLine:Lorg/apache/http/StatusLine;
    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method

.method public static getHttpInputStream(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/io/InputStream;
    .locals 1
    .parameter "uri"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    .local p1, getParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/trck8/app/util/HttpGetContent;->getHttpInputStream(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpInputStream(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)Ljava/io/InputStream;
    .locals 4
    .parameter "uri"
    .parameter
    .parameter
    .parameter "properties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p1, getParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p3, :cond_0

    new-instance p3, Ljava/util/Properties;

    .end local p3
    invoke-direct {p3}, Ljava/util/Properties;-><init>()V

    .line 268
    .restart local p3
    :cond_0
    const-string v1, "http.connection.timeout"

    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 269
    const-string v1, "http.connection.timeout"

    .line 270
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1388

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {p3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    :cond_1
    const-string v1, "http.socket.timeout"

    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 273
    const-string v1, "http.socket.timeout"

    .line 274
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xbb8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {p3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/trck8/app/util/HttpGetContent;->getHttpByteArray(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)[B

    move-result-object v0

    .line 277
    .local v0, data:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static getHttpString(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    .local p1, getParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/trck8/app/util/HttpGetContent;->getHttpString(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpString(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .parameter "uri"
    .parameter
    .parameter
    .parameter "properties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    .local p1, getParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p2, postParams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p3, :cond_0

    new-instance p3, Ljava/util/Properties;

    .end local p3
    invoke-direct {p3}, Ljava/util/Properties;-><init>()V

    .line 312
    .restart local p3
    :cond_0
    const-string v1, "http.connection.timeout"

    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 313
    const-string v1, "http.connection.timeout"

    .line 314
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x1388

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {p3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    :cond_1
    const-string v1, "http.socket.timeout"

    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 317
    const-string v1, "http.socket.timeout"

    .line 318
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xbb8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {p3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/trck8/app/util/HttpGetContent;->getHttpByteArray(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Properties;)[B

    move-result-object v0

    .line 322
    .local v0, data:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static getUri(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object p0

    .line 69
    :cond_1
    invoke-static {p1, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, getStr:Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 73
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
