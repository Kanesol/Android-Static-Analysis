.class public Lcom/trck8/app/util/Converter;
.super Ljava/lang/Object;
.source "Converter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static androidId2Key(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "androidId"

    .prologue
    const/4 v7, 0x0

    .line 16
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    .line 42
    :goto_0
    return-object v5

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 20
    .local v1, data:[B
    array-length v4, v1

    .line 21
    .local v4, n:I
    new-array v3, v4, [B

    .line 22
    .local v3, keyData:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v4, :cond_2

    .line 42
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 23
    :cond_2
    aget-byte v0, v1, v2

    .line 25
    .local v0, b:B
    const/16 v5, 0x30

    if-gt v5, v0, :cond_3

    const/16 v5, 0x39

    if-gt v0, v5, :cond_3

    .line 26
    add-int/lit8 v5, v0, -0x30

    xor-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aget-byte v5, v5, v7

    aput-byte v5, v3, v2

    .line 22
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 30
    :cond_3
    const/16 v5, 0x41

    if-gt v5, v0, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    .line 31
    add-int/lit8 v5, v0, -0x41

    add-int/lit8 v5, v5, 0xa

    xor-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aget-byte v5, v5, v7

    aput-byte v5, v3, v2

    goto :goto_2

    .line 35
    :cond_4
    const/16 v5, 0x61

    if-gt v5, v0, :cond_5

    const/16 v5, 0x66

    if-gt v0, v5, :cond_5

    .line 36
    add-int/lit8 v5, v0, -0x61

    add-int/lit8 v5, v5, 0xa

    xor-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aget-byte v5, v5, v7

    aput-byte v5, v3, v2

    goto :goto_2

    .line 39
    :cond_5
    aput-byte v0, v3, v2

    goto :goto_2
.end method
