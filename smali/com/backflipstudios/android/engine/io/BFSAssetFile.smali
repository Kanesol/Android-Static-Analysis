.class public final Lcom/backflipstudios/android/engine/io/BFSAssetFile;
.super Ljava/lang/Object;
.source "BFSAssetFile.java"


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x4000


# instance fields
.field private m_path:Ljava/lang/String;

.field private m_pos:I

.field private m_size:I

.field private m_stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_path:Ljava/lang/String;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_size:I

    .line 26
    iput-object v1, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_pos:I

    .line 31
    return-void
.end method

.method private static readAllOfStream(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "istream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x4000

    const/4 v5, 0x0

    .line 189
    const/4 v3, 0x0

    .line 191
    .local v3, read:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    .local v0, bais:Ljava/io/ByteArrayOutputStream;
    new-array v1, v6, [B

    .line 195
    .local v1, buffer:[B
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 196
    invoke-virtual {p0, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 197
    if-lez v3, :cond_0

    .line 198
    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 205
    .local v2, bytes:[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    return-object v2

    .line 206
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static readContentsOfFile(Ljava/lang/String;)[B
    .locals 3
    .parameter "path"

    .prologue
    .line 35
    new-instance v1, Lcom/backflipstudios/android/engine/io/BFSAssetFile;

    invoke-direct {v1}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;-><init>()V

    .line 36
    .local v1, file:Lcom/backflipstudios/android/engine/io/BFSAssetFile;
    const-string v2, "r"

    invoke-virtual {v1, p0, v2}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->getData()[B

    move-result-object v0

    .line 38
    .local v0, bytes:[B
    return-object v0
.end method

.method private static readPartOfStream(Ljava/io/InputStream;I)[B
    .locals 3
    .parameter "istream"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v0, v1, [B

    .line 183
    .local v0, bytes:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 184
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    .line 80
    :cond_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getData()[B
    .locals 7

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, bytes:[B
    const/4 v3, 0x0

    .line 137
    .local v3, localStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    if-eqz v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 139
    iget-object v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->readAllOfStream(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    if-eqz v3, :cond_0

    .line 154
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 160
    :cond_0
    :goto_1
    return-object v0

    .line 141
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v1

    .line 142
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v5, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_path:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    invoke-static {v3}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->readAllOfStream(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_2
    const-string v4, "bfsplatform"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BFSAssetFile.getData: File not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 149
    .end local v1           #context:Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 150
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "bfsplatform"

    const-string v5, "BFSAssetFile.getData"

    invoke-static {v4, v5, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    if-eqz v3, :cond_0

    .line 154
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 155
    :catch_1
    move-exception v4

    goto :goto_1

    .line 152
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 154
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 156
    :cond_3
    :goto_2
    throw v4

    .line 155
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 165
    iget v1, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_size:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->getData()[B

    move-result-object v0

    .line 167
    .local v0, bytes:[B
    if-eqz v0, :cond_1

    .line 168
    array-length v1, v0

    iput v1, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_size:I

    .line 173
    .end local v0           #bytes:[B
    :cond_0
    :goto_0
    iget v1, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_size:I

    return v1

    .line 170
    .restart local v0       #bytes:[B
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_size:I

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "mode"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_path:Ljava/lang/String;

    .line 50
    :try_start_0
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 51
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget-object v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_path:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 52
    .local v2, stream:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 55
    iput-object v2, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    .line 69
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #stream:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 57
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #stream:Ljava/io/InputStream;
    :cond_0
    const-string v3, "bfsplatform"

    const-string v4, "BFSAssetFile.open: Random access read unsupported."

    invoke-static {v3, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v3

    goto :goto_0

    .line 64
    :cond_1
    :try_start_2
    const-string v3, "bfsplatform"

    const-string v4, "BFSAssetFile.open: Unable to open file, file not found."

    invoke-static {v3, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 66
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "bfsplatform"

    const-string v4, "BFSAssetFile.open"

    invoke-static {v3, v4, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public read(I)[B
    .locals 7
    .parameter "length"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, bytes:[B
    const/4 v3, 0x0

    .line 101
    .local v3, localStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    if-eqz v4, :cond_2

    .line 102
    iget-object v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 103
    iget-object v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    iget v5, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_pos:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    .line 104
    iget-object v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_stream:Ljava/io/InputStream;

    invoke-static {v4, p1}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->readPartOfStream(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 115
    :goto_0
    if-eqz v0, :cond_0

    .line 116
    iget v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_pos:I

    array-length v5, v0

    add-int/2addr v4, v5

    iput v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    if-eqz v3, :cond_1

    .line 123
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 129
    :cond_1
    :goto_1
    return-object v0

    .line 106
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v1

    .line 107
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v5, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_path:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_3

    .line 109
    iget v4, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_pos:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 110
    invoke-static {v3, p1}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->readPartOfStream(Ljava/io/InputStream;I)[B

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_3
    const-string v4, "bfsplatform"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BFSAssetFile.getData: File not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 118
    .end local v1           #context:Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "bfsplatform"

    const-string v5, "BFSAssetFile.getData"

    invoke-static {v4, v5, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    if-eqz v3, :cond_1

    .line 123
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 124
    :catch_1
    move-exception v4

    goto :goto_1

    .line 121
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 123
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 125
    :cond_4
    :goto_2
    throw v4

    .line 124
    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    goto :goto_2
.end method

.method public seek(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->getSize()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 85
    iput p1, p0, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->m_pos:I

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
