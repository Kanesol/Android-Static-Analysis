.class public final Lcom/backflipstudios/android/engine/io/BFSDataFile;
.super Ljava/lang/Object;
.source "BFSDataFile.java"


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x4000

.field private static m_dataLocation:Ljava/lang/String;


# instance fields
.field private m_mode:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_rFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_dataLocation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_path:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    .line 30
    const-string v0, "r"

    iput-object v0, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_mode:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static createDirectoryAtPath(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, retVal:Z
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->getAbsolutePathInDataDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 70
    :goto_0
    return v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    const-string v2, "bfsplatform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BFSDataFile.createDirectoryAtPath: Unable to create directory, a file already exists with the same name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static deletFileAtPath(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, retVal:Z
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->getAbsolutePathInDataDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    const/4 v1, 0x1

    .line 105
    :goto_0
    return v1

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    const-string v2, "bfsplatform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BFSFiles.deletFileAtPath: Unable to delete file, the provided path is a directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static directoryExistsAtPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, retVal:Z
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->getAbsolutePathInDataDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 53
    :cond_0
    return v1
.end method

.method public static getAbsolutePathInDataDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 267
    sget-object v2, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_dataLocation:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 268
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 269
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_dataLocation:Ljava/lang/String;

    .line 271
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    sget-object v2, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_dataLocation:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, newpath:Ljava/lang/String;
    return-object v1
.end method

.method public static getFilesInDirectoryAtPath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->getAbsolutePathInDataDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-static {v0, v1}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->listAllFiles(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 82
    :cond_0
    const/4 v2, 0x0

    .line 83
    .local v2, retVal:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 84
    .local v3, size:I
    if-lez v3, :cond_1

    .line 85
    new-array v2, v3, [Ljava/lang/String;

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    :cond_1
    return-object v2
.end method

.method private static listAllFiles(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "directory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, children:[Ljava/io/File;
    array-length v1, v0

    .line 112
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 113
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    aget-object v3, v0, v2

    invoke-static {v3, p1}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->listAllFiles(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 112
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_1
    return-void
.end method

.method private static readAllOfFile(Ljava/io/RandomAccessFile;)[B
    .locals 10
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 277
    const/4 v5, 0x0

    .line 279
    .local v5, read:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 281
    .local v2, bais:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x4000

    new-array v3, v6, [B

    .line 282
    .local v3, buffer:[B
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 285
    .local v0, available:J
    :cond_0
    cmp-long v6, v0, v8

    if-lez v6, :cond_1

    .line 286
    invoke-virtual {p0, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v5

    .line 287
    if-lez v5, :cond_1

    .line 288
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 289
    int-to-long v6, v5

    sub-long/2addr v0, v6

    .line 292
    :cond_1
    cmp-long v6, v0, v8

    if-lez v6, :cond_2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 294
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 297
    .local v4, bytes:[B
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-object v4

    .line 298
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static readContentsOfFile(Ljava/lang/String;)[B
    .locals 3
    .parameter "path"

    .prologue
    .line 38
    new-instance v1, Lcom/backflipstudios/android/engine/io/BFSDataFile;

    invoke-direct {v1}, Lcom/backflipstudios/android/engine/io/BFSDataFile;-><init>()V

    .line 39
    .local v1, file:Lcom/backflipstudios/android/engine/io/BFSDataFile;
    const-string v2, "r"

    invoke-virtual {v1, p0, v2}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->getData()[B

    move-result-object v0

    .line 41
    .local v0, bytes:[B
    return-object v0
.end method


# virtual methods
.method public appendData([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 244
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->appendData([BII)V

    .line 245
    return-void
.end method

.method public appendData([BII)V
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 236
    iget-object v1, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "bfsplatform"

    const-string v2, "BFSDataFile.appendData"

    invoke-static {v1, v2, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    .line 154
    :cond_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public getData()[B
    .locals 5

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 194
    .local v0, bytes:[B
    :try_start_0
    iget-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 195
    iget-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->readAllOfFile(Ljava/io/RandomAccessFile;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "bfsplatform"

    const-string v3, "BFSDataFile.getData"

    invoke-static {v2, v3, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 208
    .local v1, size:I
    :try_start_0
    iget-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "bfsplatform"

    const-string v3, "BFSDataFile.getSize"

    invoke-static {v2, v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "mode"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_path:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_mode:Ljava/lang/String;

    .line 131
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_path:Ljava/lang/String;

    invoke-static {v2}, Lcom/backflipstudios/android/engine/io/BFSDataFile;->getAbsolutePathInDataDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_mode:Ljava/lang/String;

    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 139
    :cond_0
    :goto_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_mode:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    .line 143
    .end local v1           #file:Ljava/io/File;
    :goto_1
    return-void

    .line 136
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    const-string v2, "bfsplatform"

    const-string v3, "BFSDataFile.open: Unable to open file, file not found."

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "bfsplatform"

    const-string v3, "BFSDataFile.open"

    invoke-static {v2, v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public read(I)[B
    .locals 9
    .parameter "maxNumBytesToRead"

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 177
    .local v0, bytes:[B
    :try_start_0
    iget-object v7, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    .line 178
    .local v5, totalLength:J
    iget-object v7, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 179
    .local v2, pos:J
    sub-long v7, v5, v2

    long-to-int v7, v7

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 180
    .local v4, toRead:I
    new-array v0, v4, [B

    .line 181
    iget-object v7, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v2           #pos:J
    .end local v4           #toRead:I
    .end local v5           #totalLength:J
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "bfsplatform"

    const-string v8, "BFSDataFile.read"

    invoke-static {v7, v8, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public seek(I)Z
    .locals 5
    .parameter "pos"

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, retVal:Z
    :try_start_0
    iget-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v1, 0x1

    .line 165
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "bfsplatform"

    const-string v3, "BFSDataFile.seek"

    invoke-static {v2, v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setData([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 225
    iget-object v1, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 226
    iget-object v1, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "bfsplatform"

    const-string v2, "BFSDataFile.setData"

    invoke-static {v1, v2, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public truncate()V
    .locals 4

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/backflipstudios/android/engine/io/BFSDataFile;->m_rFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "bfsplatform"

    const-string v2, "BFSDataFile"

    invoke-static {v1, v2, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
