.class public Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
.super Lcom/backflipstudios/android/data/BFSSecureDataStore;
.source "BFSSimpleSecureDataStore.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x1

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = null

.field private static final SQL_DROP_TABLE:Ljava/lang/String; = null

.field private static final STRING_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TABLE_NAME:Ljava/lang/String; = "properties"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    .line 29
    const-string v0, "CREATE TABLE %s (%s TEXT, %s BLOB)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "properties"

    aput-object v2, v1, v3

    sget-object v2, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    sget-object v2, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->SQL_CREATE_TABLE:Ljava/lang/String;

    .line 32
    const-string v0, "DROP TABLE IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "properties"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->SQL_DROP_TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "name"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/data/BFSSecureDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private readBytes(Ljava/lang/String;)[B
    .locals 11
    .parameter "key"

    .prologue
    .line 225
    const/4 v10, 0x0

    .line 226
    .local v10, data:[B
    const/4 v9, 0x0

    .line 228
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "properties"

    sget-object v2, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 229
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 232
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There shouldn\'t ever be more than one result returned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    .line 237
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 236
    :cond_2
    if-eqz v9, :cond_3

    .line 237
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_3
    return-object v10
.end method

.method private writeBytes(Ljava/lang/String;[B)V
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 209
    if-eqz p2, :cond_1

    .line 210
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 212
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "properties"

    const-string v3, "%s = ?"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 213
    sget-object v1, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "properties"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 220
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->m_dirty:Z

    .line 221
    return-void

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "properties"

    const-string v3, "%s = ?"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 280
    sget-object v0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->SQL_CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected generateHash()[B
    .locals 14

    .prologue
    .line 247
    const/4 v12, 0x0

    .line 248
    .local v12, hash:[B
    const/4 v10, 0x0

    .line 250
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    .line 252
    .local v13, md:Ljava/security/MessageDigest;
    iget-object v0, p0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "properties"

    sget-object v2, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 253
    if-eqz v10, :cond_1

    .line 254
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 256
    .local v9, bytes:[B
    const/4 v0, 0x0

    array-length v1, v9

    invoke-virtual {v13, v9, v0, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v9           #bytes:[B
    .end local v13           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v11

    .line 261
    .local v11, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    const-string v0, "bfsplatform"

    const-string v1, "BFSSecureDataStore.updateHash()"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    if-eqz v10, :cond_0

    .line 264
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 267
    .end local v11           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_1
    return-object v12

    .line 259
    .restart local v13       #md:Ljava/security/MessageDigest;
    :cond_1
    :try_start_2
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    .line 263
    if-eqz v10, :cond_0

    .line 264
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 263
    .end local v13           #md:Ljava/security/MessageDigest;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 264
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected getDatabaseVersion()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public readData(Ljava/lang/String;)[B
    .locals 1
    .parameter "key"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 4
    .parameter "key"

    .prologue
    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, retVal:Ljava/lang/Float;
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 159
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    .line 160
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 163
    new-instance v2, Ljava/lang/Float;

    .end local v2           #retVal:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 165
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .restart local v2       #retVal:Ljava/lang/Float;
    :cond_0
    return-object v2
.end method

.method public readInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "key"

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, retVal:Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 145
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    .line 146
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 147
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 149
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #retVal:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 151
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .restart local v2       #retVal:Ljava/lang/Integer;
    :cond_0
    return-object v2
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "key"

    .prologue
    .line 177
    const/4 v6, 0x0

    .line 179
    .local v6, retVal:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 180
    .local v4, ois:Ljava/io/ObjectInputStream;
    const/4 v0, 0x0

    .line 183
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readData(Ljava/lang/String;)[B

    move-result-object v2

    .line 184
    .local v2, data:[B
    if-eqz v2, :cond_0

    .line 185
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 187
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .local v5, ois:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v6

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .line 193
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .end local v6           #retVal:Ljava/lang/Object;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 194
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 198
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 199
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 204
    .end local v2           #data:[B
    :cond_2
    :goto_1
    return-object v6

    .line 189
    .restart local v6       #retVal:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 190
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v7, "bfsplatform"

    const-string v8, "BFSSimpleSecureDataStore.readObject()"

    invoke-static {v7, v8, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    if-eqz v4, :cond_3

    .line 194
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 198
    :cond_3
    :goto_3
    if-eqz v0, :cond_2

    .line 199
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 201
    :catch_1
    move-exception v7

    goto :goto_1

    .line 192
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 193
    :goto_4
    if-eqz v4, :cond_4

    .line 194
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 198
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 199
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 201
    :cond_5
    :goto_6
    throw v7

    .line 196
    .end local v6           #retVal:Ljava/lang/Object;
    .restart local v2       #data:[B
    :catch_2
    move-exception v7

    goto :goto_0

    .line 201
    :catch_3
    move-exception v7

    goto :goto_1

    .line 196
    .end local v2           #data:[B
    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v6       #retVal:Ljava/lang/Object;
    :catch_4
    move-exception v7

    goto :goto_3

    .end local v3           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v8

    goto :goto_5

    .line 201
    :catch_6
    move-exception v8

    goto :goto_6

    .line 192
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #data:[B
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 189
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_8
    move-exception v3

    move-object v0, v1

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, retVal:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 130
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #retVal:Ljava/lang/String;
    .local v2, retVal:Ljava/lang/String;
    move-object v1, v2

    .line 137
    .end local v2           #retVal:Ljava/lang/String;
    .restart local v1       #retVal:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected resetData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 273
    sget-object v0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->SQL_DROP_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->SQL_CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method protected upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"

    .prologue
    .line 287
    return-void
.end method

.method public writeData(Ljava/lang/String;[B)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeBytes(Ljava/lang/String;[B)V

    .line 94
    return-void
.end method

.method public writeFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, bytes:[B
    if-eqz p2, :cond_0

    .line 52
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 57
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeBytes(Ljava/lang/String;[B)V

    .line 58
    return-void
.end method

.method public writeInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, bytes:[B
    if-eqz p2, :cond_0

    .line 66
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 71
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeBytes(Ljava/lang/String;[B)V

    .line 72
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "object"

    .prologue
    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, oos:Ljava/io/ObjectOutputStream;
    const/4 v0, 0x0

    .line 103
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 105
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .local v5, oos:Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 107
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 108
    .local v2, data:[B
    invoke-virtual {p0, p1, v2}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeData(Ljava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 113
    if-eqz v5, :cond_0

    .line 114
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 118
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 119
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 123
    .end local v2           #data:[B
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 121
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #data:[B
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v6

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 122
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 109
    .end local v2           #data:[B
    :catch_1
    move-exception v3

    .line 110
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v6, "bfsplatform"

    const-string v7, "BFSSimpleSecureDataStore.writeObject()"

    invoke-static {v6, v7, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    if-eqz v4, :cond_3

    .line 114
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 118
    :cond_3
    :goto_3
    if-eqz v0, :cond_2

    .line 119
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 121
    :catch_2
    move-exception v6

    goto :goto_1

    .line 112
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 113
    :goto_4
    if-eqz v4, :cond_4

    .line 114
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 118
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 119
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 121
    :cond_5
    :goto_6
    throw v6

    .line 116
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #data:[B
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v6

    goto :goto_0

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #data:[B
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v6

    goto :goto_3

    .end local v3           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v7

    goto :goto_5

    .line 121
    :catch_6
    move-exception v7

    goto :goto_6

    .line 112
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 109
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v3

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 80
    .local v0, bytes:[B
    if-eqz p2, :cond_0

    .line 81
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeBytes(Ljava/lang/String;[B)V

    .line 88
    return-void

    .line 83
    :catch_0
    move-exception v1

    goto :goto_0
.end method
