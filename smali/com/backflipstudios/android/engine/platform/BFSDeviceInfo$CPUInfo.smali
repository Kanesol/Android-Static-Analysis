.class Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;
.super Ljava/lang/Object;
.source "BFSDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CPUInfo"
.end annotation


# instance fields
.field public m_coreCount:I

.field public m_name:Ljava/lang/String;

.field public m_speedInMhz:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const-string v7, ""

    iput-object v7, p0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_name:Ljava/lang/String;

    .line 357
    iput v8, p0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_coreCount:I

    .line 358
    iput v8, p0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_speedInMhz:I

    .line 362
    const/4 v5, 0x0

    .line 364
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->getCommandOutput()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, commandOutput:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 366
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 368
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 370
    .local v1, definedCores:I
    const/4 v3, 0x0

    .line 371
    .local v3, line:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 372
    invoke-direct {p0, v3}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->parseLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, params:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 374
    const-string v7, "Processor"

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 375
    const/4 v7, 0x1

    aget-object v7, v4, v7

    iput-object v7, p0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 392
    .end local v4           #params:[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 393
    .end local v0           #commandOutput:Ljava/lang/String;
    .end local v1           #definedCores:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v7, "bfsplatform"

    const-string v8, "BFSDeviceInfo$CPUInfo.CPUInfo()"

    invoke-static {v7, v8, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    if-eqz v5, :cond_1

    .line 397
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 401
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 376
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v0       #commandOutput:Ljava/lang/String;
    .restart local v1       #definedCores:I
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #params:[Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_4
    const-string v7, "processor"

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_3
    const-string v7, "BogoMIPS"

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 380
    const/4 v7, 0x1

    :try_start_5
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_speedInMhz:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 381
    :catch_1
    move-exception v7

    goto :goto_0

    .line 386
    .end local v4           #params:[Ljava/lang/String;
    :cond_4
    if-lez v1, :cond_6

    .line 387
    :try_start_6
    iput v1, p0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_coreCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v5, v6

    .line 395
    .end local v1           #definedCores:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_5
    :goto_3
    if-eqz v5, :cond_1

    .line 397
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 398
    :catch_2
    move-exception v7

    goto :goto_2

    .line 389
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v1       #definedCores:I
    .restart local v3       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_6
    const/4 v7, 0x1

    :try_start_8
    iput v7, p0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_coreCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 395
    .end local v0           #commandOutput:Ljava/lang/String;
    .end local v1           #definedCores:I
    .end local v3           #line:Ljava/lang/String;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_7

    .line 397
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 398
    :cond_7
    :goto_5
    throw v7

    .restart local v2       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v8

    goto :goto_5

    .line 395
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v0       #commandOutput:Ljava/lang/String;
    .restart local v1       #definedCores:I
    .restart local v3       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 392
    .end local v0           #commandOutput:Ljava/lang/String;
    .end local v1           #definedCores:I
    .end local v3           #line:Ljava/lang/String;
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private getCommandOutput()Ljava/lang/String;
    .locals 13

    .prologue
    .line 419
    const-string v9, ""

    .line 420
    .local v9, retVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 423
    .local v1, bais:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 425
    .end local v1           #bais:Ljava/io/ByteArrayOutputStream;
    .local v2, bais:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x2

    :try_start_1
    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/cat"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "/proc/cpuinfo"

    aput-object v12, v0, v11

    .line 426
    .local v0, args:[Ljava/lang/String;
    new-instance v4, Ljava/lang/ProcessBuilder;

    invoke-direct {v4, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 428
    .local v4, cmd:Ljava/lang/ProcessBuilder;
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 429
    .local v7, process:Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 430
    .local v6, in:Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v3, v11, [B

    .line 432
    .local v3, buffer:[B
    const/4 v8, 0x0

    .line 434
    .local v8, read:I
    :cond_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 435
    if-lez v8, :cond_1

    .line 436
    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 438
    :cond_1
    if-gtz v8, :cond_0

    .line 439
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 443
    .end local v9           #retVal:Ljava/lang/String;
    .local v10, retVal:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 445
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .line 449
    .end local v0           #args:[Ljava/lang/String;
    .end local v3           #buffer:[B
    .end local v4           #cmd:Ljava/lang/ProcessBuilder;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #process:Ljava/lang/Process;
    .end local v8           #read:I
    .end local v10           #retVal:Ljava/lang/String;
    .restart local v9       #retVal:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v9

    .line 446
    .end local v1           #bais:Ljava/io/ByteArrayOutputStream;
    .end local v9           #retVal:Ljava/lang/String;
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v2       #bais:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #cmd:Ljava/lang/ProcessBuilder;
    .restart local v6       #in:Ljava/io/InputStream;
    .restart local v7       #process:Ljava/lang/Process;
    .restart local v8       #read:I
    .restart local v10       #retVal:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #retVal:Ljava/lang/String;
    .restart local v9       #retVal:Ljava/lang/String;
    goto :goto_0

    .line 440
    .end local v0           #args:[Ljava/lang/String;
    .end local v3           #buffer:[B
    .end local v4           #cmd:Ljava/lang/ProcessBuilder;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #process:Ljava/lang/Process;
    .end local v8           #read:I
    :catch_1
    move-exception v5

    .line 441
    .local v5, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v11, "bfsplatform"

    const-string v12, "BFSDeviceInfo$CPUInfo.getCommandOutput()"

    invoke-static {v11, v12, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    if-eqz v1, :cond_2

    .line 445
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 446
    :catch_2
    move-exception v11

    goto :goto_0

    .line 443
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_2
    if-eqz v1, :cond_3

    .line 445
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 446
    :cond_3
    :goto_3
    throw v11

    :catch_3
    move-exception v12

    goto :goto_3

    .line 443
    .end local v1           #bais:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v11

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 440
    .end local v1           #bais:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v5

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v1           #bais:Ljava/io/ByteArrayOutputStream;
    .end local v9           #retVal:Ljava/lang/String;
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v2       #bais:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #cmd:Ljava/lang/ProcessBuilder;
    .restart local v6       #in:Ljava/io/InputStream;
    .restart local v7       #process:Ljava/lang/Process;
    .restart local v8       #read:I
    .restart local v10       #retVal:Ljava/lang/String;
    :cond_4
    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #retVal:Ljava/lang/String;
    .restart local v9       #retVal:Ljava/lang/String;
    goto :goto_0
.end method

.method private parseLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "line"

    .prologue
    const/4 v5, 0x0

    .line 405
    const/4 v2, 0x0

    .line 406
    .local v2, retVal:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 407
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 408
    .local v1, pos:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 409
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, name:Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, value:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .end local v2           #retVal:[Ljava/lang/String;
    aput-object v0, v2, v5

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 414
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #pos:I
    .end local v3           #value:Ljava/lang/String;
    .restart local v2       #retVal:[Ljava/lang/String;
    :cond_0
    return-object v2
.end method
