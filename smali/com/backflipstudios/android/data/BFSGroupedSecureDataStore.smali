.class public Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;
.super Lcom/backflipstudios/android/data/BFSSecureDataStore;
.source "BFSGroupedSecureDataStore.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x1

.field private static final INDECES:[Ljava/lang/String; = null

.field private static final NULL_GROUP:Ljava/lang/String; = "_____null"

.field private static final SQL_CREATE_GROUP_INDEX:Ljava/lang/String; = null

.field private static final SQL_CREATE_KEY_INDEX:Ljava/lang/String; = null

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = null

.field private static final SQL_DROP_GROUP_INDEX:Ljava/lang/String; = null

.field private static final SQL_DROP_KEY_INDEX:Ljava/lang/String; = null

.field private static final SQL_DROP_TABLE:Ljava/lang/String; = null

.field private static final STRING_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TABLE_NAME:Ljava/lang/String; = "properties"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "keygroup"

    aput-object v1, v0, v3

    const-string v1, "keyname"

    aput-object v1, v0, v4

    const-string v1, "data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    .line 30
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "group_index"

    aput-object v1, v0, v3

    const-string v1, "key_index"

    aput-object v1, v0, v4

    sput-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->INDECES:[Ljava/lang/String;

    .line 32
    const-string v0, "CREATE TABLE %s (%s TEXT, %s TEXT, %s BLOB)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "properties"

    aput-object v2, v1, v3

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_CREATE_TABLE:Ljava/lang/String;

    .line 35
    const-string v0, "DROP TABLE IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "properties"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_DROP_TABLE:Ljava/lang/String;

    .line 38
    const-string v0, "CREATE INDEX %s ON %s (%s)"

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->INDECES:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    const-string v2, "properties"

    aput-object v2, v1, v4

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_CREATE_GROUP_INDEX:Ljava/lang/String;

    .line 41
    const-string v0, "CREATE INDEX %s ON %s (%s)"

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->INDECES:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    const-string v2, "properties"

    aput-object v2, v1, v4

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_CREATE_KEY_INDEX:Ljava/lang/String;

    .line 44
    const-string v0, "DROP INDEX IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->INDECES:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_DROP_GROUP_INDEX:Ljava/lang/String;

    .line 47
    const-string v0, "DROP INDEX IF EXISTS %s"

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->INDECES:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_DROP_KEY_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "name"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/data/BFSSecureDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private readBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .parameter "key"
    .parameter "group"

    .prologue
    .line 291
    const/4 v10, 0x0

    .line 292
    .local v10, data:[B
    const/4 v9, 0x0

    .line 294
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "properties"

    sget-object v2, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const-string v3, "%s = ? AND %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 295
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 299
    :cond_0
    if-eqz v9, :cond_1

    .line 300
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_1
    return-object v10

    .line 299
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 300
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private writeBytes(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 9
    .parameter "key"
    .parameter "group"
    .parameter "value"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 274
    if-eqz p3, :cond_1

    .line 275
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 277
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "properties"

    const-string v3, "%s = ? AND %s = ?"

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v7

    aput-object v5, v4, v7

    sget-object v5, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v7

    aput-object p1, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 278
    sget-object v1, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v1, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "properties"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 286
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->m_dirty:Z

    .line 287
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "properties"

    const-string v3, "%s = ? AND %s = ?"

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v7

    aput-object v5, v4, v7

    sget-object v5, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v7

    aput-object p1, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 348
    sget-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_CREATE_KEY_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_CREATE_GROUP_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method protected generateHash()[B
    .locals 18

    .prologue
    .line 310
    const/4 v13, 0x0

    .line 311
    .local v13, hash:[B
    const/4 v11, 0x0

    .line 313
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 315
    .local v14, md:Ljava/security/MessageDigest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "properties"

    sget-object v3, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s, %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v16, v16, v17

    aput-object v16, v9, v15

    const/4 v15, 0x1

    sget-object v16, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v16, v16, v17

    aput-object v16, v9, v15

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 316
    if-eqz v11, :cond_1

    .line 317
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 319
    .local v10, bytes:[B
    const/4 v1, 0x0

    array-length v2, v10

    invoke-virtual {v14, v10, v1, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v10           #bytes:[B
    .end local v14           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v12

    .line 324
    .local v12, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    const-string v1, "bfsplatform"

    const-string v2, "BFSSecureDataStore.updateHash()"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    if-eqz v11, :cond_0

    .line 327
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 330
    .end local v12           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_1
    return-object v13

    .line 322
    .restart local v14       #md:Ljava/security/MessageDigest;
    :cond_1
    :try_start_2
    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v13

    .line 326
    if-eqz v11, :cond_0

    .line 327
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 326
    .end local v14           #md:Ljava/security/MessageDigest;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_2

    .line 327
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method protected getDatabaseVersion()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public readData(Ljava/lang/String;)[B
    .locals 1
    .parameter "key"

    .prologue
    .line 226
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter "key"
    .parameter "group"

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public readFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .parameter "key"

    .prologue
    .line 207
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readFloat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public readFloat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;
    .locals 4
    .parameter "key"
    .parameter "group"

    .prologue
    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, retVal:Ljava/lang/Float;
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 214
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    .line 215
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 216
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 218
    new-instance v2, Ljava/lang/Float;

    .end local v2           #retVal:Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 220
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .restart local v2       #retVal:Ljava/lang/Float;
    :cond_0
    return-object v2
.end method

.method public readInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "key"

    .prologue
    .line 188
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public readInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "key"
    .parameter "group"

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, retVal:Ljava/lang/Integer;
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 195
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    .line 196
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 199
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #retVal:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 201
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .restart local v2       #retVal:Ljava/lang/Integer;
    :cond_0
    return-object v2
.end method

.method public readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 237
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "key"
    .parameter "group"

    .prologue
    .line 242
    const/4 v6, 0x0

    .line 244
    .local v6, retVal:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 245
    .local v4, ois:Ljava/io/ObjectInputStream;
    const/4 v0, 0x0

    .line 248
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 249
    .local v2, data:[B
    if-eqz v2, :cond_0

    .line 250
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 252
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

    .line 258
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .end local v6           #retVal:Ljava/lang/Object;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 259
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 263
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 264
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 269
    .end local v2           #data:[B
    :cond_2
    :goto_1
    return-object v6

    .line 254
    .restart local v6       #retVal:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 255
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v7, "bfsplatform"

    const-string v8, "BFSGroupedSecureDataStore.readObject()"

    invoke-static {v7, v8, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    if-eqz v4, :cond_3

    .line 259
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 263
    :cond_3
    :goto_3
    if-eqz v0, :cond_2

    .line 264
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 266
    :catch_1
    move-exception v7

    goto :goto_1

    .line 257
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 258
    :goto_4
    if-eqz v4, :cond_4

    .line 259
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 263
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 264
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 266
    :cond_5
    :goto_6
    throw v7

    .line 261
    .end local v6           #retVal:Ljava/lang/Object;
    .restart local v2       #data:[B
    :catch_2
    move-exception v7

    goto :goto_0

    .line 266
    :catch_3
    move-exception v7

    goto :goto_1

    .line 261
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

    .line 266
    :catch_6
    move-exception v8

    goto :goto_6

    .line 257
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

    .line 254
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
    .locals 1
    .parameter "key"

    .prologue
    .line 168
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "group"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, retVal:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->readBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 175
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #retVal:Ljava/lang/String;
    .local v2, retVal:Ljava/lang/String;
    move-object v1, v2

    .line 182
    .end local v2           #retVal:Ljava/lang/String;
    .restart local v1       #retVal:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected resetData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 336
    sget-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_DROP_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_DROP_KEY_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_DROP_GROUP_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_CREATE_KEY_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->SQL_CREATE_GROUP_INDEX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method protected upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"

    .prologue
    .line 357
    return-void
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .parameter "key"
    .parameter "group"
    .parameter "value"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeBytes(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 129
    return-void
.end method

.method public writeData(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 123
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeData(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 124
    return-void
.end method

.method public writeFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 64
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeFloat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 65
    return-void
.end method

.method public writeFloat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .parameter "key"
    .parameter "group"
    .parameter "value"

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, bytes:[B
    if-eqz p3, :cond_0

    .line 72
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 77
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeBytes(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 78
    return-void
.end method

.method public writeInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 83
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    return-void
.end method

.method public writeInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .parameter "key"
    .parameter "group"
    .parameter "value"

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, bytes:[B
    if-eqz p3, :cond_0

    .line 91
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 96
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeBytes(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 97
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "object"

    .prologue
    .line 134
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter "group"
    .parameter "object"

    .prologue
    .line 139
    const/4 v4, 0x0

    .line 140
    .local v4, oos:Ljava/io/ObjectOutputStream;
    const/4 v0, 0x0

    .line 143
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 145
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .local v5, oos:Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 147
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 148
    .local v2, data:[B
    invoke-virtual {p0, p1, p2, v2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeData(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 153
    if-eqz v5, :cond_0

    .line 154
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 158
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 159
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 163
    .end local v2           #data:[B
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 161
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

    .line 162
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 149
    .end local v2           #data:[B
    :catch_1
    move-exception v3

    .line 150
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v6, "bfsplatform"

    const-string v7, "BFSGroupedSecureDataStore.writeObject()"

    invoke-static {v6, v7, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    if-eqz v4, :cond_3

    .line 154
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 158
    :cond_3
    :goto_3
    if-eqz v0, :cond_2

    .line 159
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 161
    :catch_2
    move-exception v6

    goto :goto_1

    .line 152
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 153
    :goto_4
    if-eqz v4, :cond_4

    .line 154
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 158
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 159
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 161
    :cond_5
    :goto_6
    throw v6

    .line 156
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

    .line 161
    :catch_6
    move-exception v7

    goto :goto_6

    .line 152
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

    .line 149
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
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 102
    const-string v0, "_____null"

    invoke-virtual {p0, p1, v0, p2}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "group"
    .parameter "value"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 110
    .local v0, bytes:[B
    if-eqz p3, :cond_0

    .line 111
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/backflipstudios/android/data/BFSGroupedSecureDataStore;->writeBytes(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 118
    return-void

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0
.end method
