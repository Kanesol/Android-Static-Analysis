.class public Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;
.super Ljava/lang/Object;
.source "BFSOvermindSimpleRequest.java"


# static fields
.field private static final THE_OVERMIND:Ljava/lang/String; = "https://backflip-overmind.appspot.com"


# instance fields
.field private m_nonce:J

.field private m_post:Lorg/apache/http/client/methods/HttpPost;

.field private m_signature:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "endpoint"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_post:Lorg/apache/http/client/methods/HttpPost;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_nonce:J

    .line 35
    iput-object v2, p0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_signature:[B

    .line 39
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://backflip-overmind.appspot.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_post:Lorg/apache/http/client/methods/HttpPost;

    .line 40
    return-void
.end method


# virtual methods
.method public setParameters(Ljava/util/Map;)V
    .locals 26
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
    .line 45
    .local p1, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v16, payload:Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 48
    .local v12, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 49
    .local v8, count:I
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 50
    .local v11, key:Ljava/lang/String;
    if-lez v8, :cond_0

    .line 51
    const/16 v22, 0x26

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/16 v22, 0x3d

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 59
    .end local v11           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "UTF-8"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    .line 61
    .local v17, payloadBytes:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v20, v22, v24

    .line 62
    .local v20, seconds:J
    new-instance v22, Ljava/security/SecureRandom;

    invoke-direct/range {v22 .. v22}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual/range {v22 .. v22}, Ljava/security/SecureRandom;->nextInt()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 63
    .local v18, random:J
    const/16 v22, 0x20

    shl-long v22, v20, v22

    or-long v22, v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_nonce:J

    .line 64
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_nonce:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 65
    .local v15, nonceString:Ljava/lang/String;
    const-string v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 67
    .local v14, nonceBytes:[B
    const-string v22, "SHA-1"

    invoke-static/range {v22 .. v22}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    .line 68
    .local v13, md:Ljava/security/MessageDigest;
    invoke-virtual {v13, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 69
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 70
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_signature:[B

    .line 72
    invoke-static/range {v17 .. v17}, Lcom/backflipstudios/android/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, base64Payload:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_signature:[B

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/backflipstudios/android/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, base64Signature:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v3, actualBody:Ljava/lang/StringBuffer;
    const-string v22, "H="

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const/16 v22, 0x26

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    const-string v22, "P="

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const/16 v22, 0x26

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    const-string v22, "N="

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, bodyString:Ljava/lang/String;
    const-string v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 88
    .local v4, actualBodyBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_post:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v22, v0

    new-instance v23, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .end local v3           #actualBody:Ljava/lang/StringBuffer;
    .end local v4           #actualBodyBytes:[B
    .end local v5           #base64Payload:Ljava/lang/String;
    .end local v6           #base64Signature:Ljava/lang/String;
    .end local v7           #bodyString:Ljava/lang/String;
    .end local v8           #count:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13           #md:Ljava/security/MessageDigest;
    .end local v14           #nonceBytes:[B
    .end local v15           #nonceString:Ljava/lang/String;
    .end local v16           #payload:Ljava/lang/StringBuilder;
    .end local v17           #payloadBytes:[B
    .end local v18           #random:J
    .end local v20           #seconds:J
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v9

    .line 90
    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    const-string v22, "bfsplatform"

    const-string v23, "BFSOvermindSimpleRequest.setParameters()"

    invoke-static/range {v22 .. v23}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    .end local v9           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v9

    .line 92
    .local v9, e:Ljava/io/UnsupportedEncodingException;
    const-string v22, "bfsplatform"

    const-string v23, "BFSOvermindSimpleRequest.setParameters()"

    invoke-static/range {v22 .. v23}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public synchronousRequest()Lorg/json/JSONObject;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException;,
            Lcom/backflipstudios/android/overmind/BFSOvermindServerException;,
            Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v15, 0x0

    .line 101
    .local v15, retVal:Lorg/json/JSONObject;
    :try_start_0
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 102
    .local v8, httpclient:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_post:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 103
    .local v14, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 104
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 105
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_0

    .line 106
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, json:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 108
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .local v9, jo:Lorg/json/JSONObject;
    const-string v18, "errorcode"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, error:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v18, "0"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 111
    const-string v18, "errormsg"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, errormessage:Ljava/lang/String;
    new-instance v18, Lcom/backflipstudios/android/overmind/BFSOvermindServerException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "BFSOvermindSimpleRequest.synchronousRequest(): Server Error ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/backflipstudios/android/overmind/BFSOvermindServerException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/backflipstudios/android/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 138
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #error:Ljava/lang/String;
    .end local v6           #errormessage:Ljava/lang/String;
    .end local v8           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v9           #jo:Lorg/json/JSONObject;
    .end local v10           #json:Ljava/lang/String;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    .line 139
    .local v3, e:Lorg/json/JSONException;
    const-string v18, "bfsplatform"

    const-string v19, "BFSOvermindSimpleRequest.synchronousRequest()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v3           #e:Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-object v15

    .line 114
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #error:Ljava/lang/String;
    .restart local v8       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v9       #jo:Lorg/json/JSONObject;
    .restart local v10       #json:Ljava/lang/String;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_1
    const-string v18, "sig"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 115
    .local v16, sig:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/backflipstudios/android/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v17

    .line 117
    .local v17, sigBytes:[B
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_nonce:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_nonce:J

    .line 118
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_nonce:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 119
    .local v13, nonceString:Ljava/lang/String;
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 121
    .local v12, nonceBytes:[B
    const-string v18, "SHA-1"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 122
    .local v11, md:Ljava/security/MessageDigest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/backflipstudios/android/overmind/BFSOvermindSimpleRequest;->m_signature:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 123
    invoke-virtual {v11, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 125
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 127
    .local v7, hashBytes:[B
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 128
    move-object v15, v9

    goto :goto_0

    .line 130
    :cond_2
    new-instance v18, Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException;

    const-string v19, "Integrity check failed"

    invoke-direct/range {v18 .. v19}, Lcom/backflipstudios/android/overmind/BFSOvermindSecurityException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/backflipstudios/android/util/Base64DecoderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 140
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #error:Ljava/lang/String;
    .end local v7           #hashBytes:[B
    .end local v8           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v9           #jo:Lorg/json/JSONObject;
    .end local v10           #json:Ljava/lang/String;
    .end local v11           #md:Ljava/security/MessageDigest;
    .end local v12           #nonceBytes:[B
    .end local v13           #nonceString:Ljava/lang/String;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #sig:Ljava/lang/String;
    .end local v17           #sigBytes:[B
    :catch_1
    move-exception v3

    .line 141
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v18, "bfsplatform"

    const-string v19, "BFSOvermindSimpleRequest.synchronousRequest()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v8       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_2
    new-instance v18, Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Non-200 HTTP Resonse: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/backflipstudios/android/util/Base64DecoderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 142
    .end local v8           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v3

    .line 143
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    const-string v18, "bfsplatform"

    const-string v19, "BFSOvermindSimpleRequest.synchronousRequest()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 144
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v3

    .line 145
    .local v3, e:Lcom/backflipstudios/android/util/Base64DecoderException;
    const-string v18, "bfsplatform"

    const-string v19, "BFSOvermindSimpleRequest.synchronousRequest()"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 146
    .end local v3           #e:Lcom/backflipstudios/android/util/Base64DecoderException;
    :catch_4
    move-exception v3

    .line 147
    .local v3, e:Ljava/io/IOException;
    new-instance v18, Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/backflipstudios/android/overmind/BFSOvermindNetworkException;-><init>(Ljava/lang/String;)V

    throw v18
.end method
