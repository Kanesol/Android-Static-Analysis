.class public Lcom/link/uranai/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "values"

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .local v0, sb:Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 14
    :cond_0
    aget-object v1, p0, v2

    .line 15
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Lcom/link/uranai/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static decodeToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    .line 37
    invoke-static {p0}, Lcom/link/uranai/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 60
    .end local p0
    .local v0, buffer:[B
    .local v1, bytes:[B
    .local v4, input:Ljava/lang/String;
    .local v5, str:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 40
    .end local v0           #buffer:[B
    .end local v1           #bytes:[B
    .end local v4           #input:Ljava/lang/String;
    .end local v5           #str:Ljava/lang/String;
    .restart local p0
    :cond_0
    move-object v4, p0

    .restart local v4       #input:Ljava/lang/String;
    move-object v0, v7

    .line 41
    check-cast v0, [B

    .restart local v0       #buffer:[B
    move-object v1, v7

    .line 42
    check-cast v1, [B

    .line 43
    .restart local v1       #bytes:[B
    const/4 v5, 0x0

    .line 45
    .restart local v5       #str:Ljava/lang/String;
    move-object v4, p0

    .line 46
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    new-array v0, v7, [B

    .line 47
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 51
    array-length v7, v0

    div-int/lit8 v7, v7, 0x2

    new-array v1, v7, [B

    .line 52
    const/4 v3, 0x0

    :goto_2
    array-length v7, v1

    if-lt v3, v7, :cond_2

    .line 56
    new-instance v6, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v5           #str:Ljava/lang/String;
    .local v6, str:Ljava/lang/String;
    move-object v5, v6

    .end local v3           #i:I
    .end local v6           #str:Ljava/lang/String;
    .restart local v5       #str:Ljava/lang/String;
    :goto_3
    move-object p0, v5

    .line 60
    goto :goto_0

    .line 48
    .restart local v3       #i:I
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v7

    aput-byte v7, v0, v3

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    :cond_2
    mul-int/lit8 v7, v3, 0x2

    aget-byte v7, v0, v7

    mul-int/lit8 v7, v7, 0x10

    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v0, v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 57
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 58
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 6
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 9
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/link/uranai/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    .end local p0
    :goto_0
    return-object p0

    .line 27
    .restart local p0
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 31
    .local v0, chr:C
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
