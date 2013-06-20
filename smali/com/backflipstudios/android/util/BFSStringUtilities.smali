.class public Lcom/backflipstudios/android/util/BFSStringUtilities;
.super Ljava/lang/Object;
.source "BFSStringUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUTF32LEBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v2

    .line 39
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const/4 v2, 0x0

    .line 46
    .local v2, retVal:[B
    :try_start_0
    const-string v3, "UTF32le"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    :try_start_1
    const-string v3, "UTF32"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 50
    :catch_1
    move-exception v1

    .line 51
    .local v1, e2:Ljava/io/UnsupportedEncodingException;
    const-string v3, "bfsplatform"

    const-string v4, "BFSStringUtilities.getUTF32LEBytes(): Unable to get UTF32le bytes."

    invoke-static {v3, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final stringFromUTF32LEBytes([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v2, 0x0

    .line 12
    if-nez p0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-object v2

    .line 15
    :cond_1
    array-length v4, p0

    if-eqz v4, :cond_0

    .line 19
    const/4 v2, 0x0

    .line 22
    .local v2, retVal:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF32le"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #retVal:Ljava/lang/String;
    .local v3, retVal:Ljava/lang/String;
    move-object v2, v3

    .line 29
    .end local v3           #retVal:Ljava/lang/String;
    .restart local v2       #retVal:Ljava/lang/String;
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 25
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF32"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #retVal:Ljava/lang/String;
    .restart local v3       #retVal:Ljava/lang/String;
    move-object v2, v3

    .line 28
    .end local v3           #retVal:Ljava/lang/String;
    .restart local v2       #retVal:Ljava/lang/String;
    goto :goto_0

    .line 26
    :catch_1
    move-exception v1

    .line 27
    .local v1, e2:Ljava/io/UnsupportedEncodingException;
    const-string v4, "bfsplatform"

    const-string v5, "BFSStringUtilities.stringFromUTF32LEBytes(): Unable to get UTF32le bytes."

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
