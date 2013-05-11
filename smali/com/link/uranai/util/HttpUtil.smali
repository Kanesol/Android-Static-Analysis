.class public Lcom/link/uranai/util/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "url"

    .prologue
    .line 54
    invoke-static {}, Lcom/link/uranai/util/HttpUtil;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 55
    .local v4, httpClientObj:Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 56
    .local v6, httpGetObj:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    .line 57
    .local v7, httpParamsObj:Lorg/apache/http/params/HttpParams;
    const/4 v5, 0x0

    .line 58
    .local v5, httpEntityObj:Lorg/apache/http/HttpEntity;
    const/4 v9, 0x0

    .line 59
    .local v9, inpurStreamObj:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 60
    .local v10, inputStreamReaderObj:Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 63
    .local v1, bufferedReaderObj:Ljava/io/BufferedReader;
    const/16 v15, 0x1388

    invoke-static {v7, v15}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    const/16 v15, 0x2710

    invoke-static {v7, v15}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 68
    const/4 v12, 0x0

    .line 71
    .local v12, returnStr:Ljava/lang/String;
    :try_start_0
    invoke-interface {v4, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 73
    .local v8, httpResponseObj:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0x190

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 75
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 77
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 79
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 80
    .end local v10           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .local v11, inputStreamReaderObj:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 81
    .end local v1           #bufferedReaderObj:Ljava/io/BufferedReader;
    .local v2, bufferedReaderObj:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v14, stringBuilderObj:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, sLine:Ljava/lang/String;
    if-nez v13, :cond_4

    .line 86
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    move-object v1, v2

    .end local v2           #bufferedReaderObj:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReaderObj:Ljava/io/BufferedReader;
    move-object v10, v11

    .line 94
    .end local v11           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .end local v13           #sLine:Ljava/lang/String;
    .end local v14           #stringBuilderObj:Ljava/lang/StringBuilder;
    .restart local v10       #inputStreamReaderObj:Ljava/io/InputStreamReader;
    :cond_0
    if-eqz v1, :cond_1

    .line 95
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 96
    :cond_1
    if-eqz v9, :cond_2

    .line 97
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 98
    :cond_2
    if-eqz v10, :cond_3

    .line 99
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    move-object v15, v12

    .line 107
    .end local v8           #httpResponseObj:Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v15

    .line 84
    .end local v1           #bufferedReaderObj:Ljava/io/BufferedReader;
    .end local v10           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .restart local v2       #bufferedReaderObj:Ljava/io/BufferedReader;
    .restart local v8       #httpResponseObj:Lorg/apache/http/HttpResponse;
    .restart local v11       #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .restart local v13       #sLine:Ljava/lang/String;
    .restart local v14       #stringBuilderObj:Ljava/lang/StringBuilder;
    :cond_4
    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 89
    .end local v13           #sLine:Ljava/lang/String;
    .end local v14           #stringBuilderObj:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferedReaderObj:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReaderObj:Ljava/io/BufferedReader;
    move-object v10, v11

    .line 90
    .end local v8           #httpResponseObj:Lorg/apache/http/HttpResponse;
    .end local v11           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .local v3, e:Ljava/lang/Exception;
    .restart local v10       #inputStreamReaderObj:Ljava/io/InputStreamReader;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    if-eqz v1, :cond_5

    .line 95
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 96
    :cond_5
    if-eqz v9, :cond_6

    .line 97
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 98
    :cond_6
    if-eqz v10, :cond_7

    .line 99
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 91
    :cond_7
    const/4 v15, 0x0

    goto :goto_1

    .line 100
    :catch_1
    move-exception v3

    .line 103
    .local v3, e:Ljava/io/IOException;
    const/4 v15, 0x0

    goto :goto_1

    .line 92
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 94
    :goto_3
    if-eqz v1, :cond_8

    .line 95
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 96
    :cond_8
    if-eqz v9, :cond_9

    .line 97
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 98
    :cond_9
    if-eqz v10, :cond_a

    .line 99
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 106
    :cond_a
    throw v15

    .line 100
    :catch_2
    move-exception v3

    .line 103
    .restart local v3       #e:Ljava/io/IOException;
    const/4 v15, 0x0

    goto :goto_1

    .line 100
    .end local v3           #e:Ljava/io/IOException;
    .restart local v8       #httpResponseObj:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v3

    .line 103
    .restart local v3       #e:Ljava/io/IOException;
    const/4 v15, 0x0

    goto :goto_1

    .line 92
    .end local v3           #e:Ljava/io/IOException;
    .end local v10           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .restart local v11       #inputStreamReaderObj:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v15

    move-object v10, v11

    .end local v11           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .restart local v10       #inputStreamReaderObj:Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v1           #bufferedReaderObj:Ljava/io/BufferedReader;
    .end local v10           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .restart local v2       #bufferedReaderObj:Ljava/io/BufferedReader;
    .restart local v11       #inputStreamReaderObj:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v15

    move-object v1, v2

    .end local v2           #bufferedReaderObj:Ljava/io/BufferedReader;
    .restart local v1       #bufferedReaderObj:Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .restart local v10       #inputStreamReaderObj:Ljava/io/InputStreamReader;
    goto :goto_3

    .line 89
    .end local v8           #httpResponseObj:Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v10           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .restart local v8       #httpResponseObj:Lorg/apache/http/HttpResponse;
    .restart local v11       #inputStreamReaderObj:Ljava/io/InputStreamReader;
    :catch_5
    move-exception v3

    move-object v10, v11

    .end local v11           #inputStreamReaderObj:Ljava/io/InputStreamReader;
    .restart local v10       #inputStreamReaderObj:Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method public static doPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, nameValuePairItems:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {}, Lcom/link/uranai/util/HttpUtil;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 121
    .local v2, httpClientObj:Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 127
    .local v3, httppost:Lorg/apache/http/client/methods/HttpPost;
    if-nez p1, :cond_0

    .line 128
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local p1           #nameValuePairItems:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local v4, nameValuePairItems:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object p1, v4

    .line 130
    .end local v4           #nameValuePairItems:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local p1       #nameValuePairItems:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 131
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 132
    .local v5, response:Lorg/apache/http/HttpResponse;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    .local v0, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 136
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 147
    .end local v0           #byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v6

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 141
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 142
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 144
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 147
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 8

    .prologue
    const/16 v7, 0x4e20

    .line 38
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 39
    .local v2, schreg:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 40
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 42
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 43
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v3, 0x1000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 44
    invoke-static {v1, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 45
    invoke-static {v1, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 46
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 47
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 49
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 50
    .local v0, connManager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v3
.end method
