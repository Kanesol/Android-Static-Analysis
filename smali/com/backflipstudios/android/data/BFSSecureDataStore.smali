.class public abstract Lcom/backflipstudios/android/data/BFSSecureDataStore;
.super Ljava/lang/Object;
.source "BFSSecureDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final COLUMN_KEY:Ljava/lang/String; = "com.backlfipstudios.android.data.metadata"

.field private static final CORE_DATABASE_VERSION:I = 0x1

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = null

.field private static final TABLE_NAME:Ljava/lang/String; = "header"


# instance fields
.field protected mDatabaseHelper:Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected m_dirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "st"

    aput-object v1, v0, v4

    const-string v1, "version"

    aput-object v1, v0, v5

    sput-object v0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    .line 24
    const-string v0, "CREATE TABLE %s (%s TEXT, %s BLOB, %s INTEGER)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "header"

    aput-object v2, v1, v3

    sget-object v2, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    sget-object v2, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    sget-object v2, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->SQL_CREATE_TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    iput-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDatabaseHelper:Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->m_dirty:Z

    .line 33
    new-instance v1, Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;

    invoke-direct {v1, p0, p1, p2}, Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;-><init>(Lcom/backflipstudios/android/data/BFSSecureDataStore;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDatabaseHelper:Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;

    .line 34
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDatabaseHelper:Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;

    invoke-virtual {v1}, Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    invoke-direct {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->verifyHash()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-direct {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->readVersion()Ljava/lang/Integer;

    move-result-object v0

    .line 39
    .local v0, version:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->getDatabaseVersion()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 40
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 45
    .end local v0           #version:Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->getDatabaseVersion()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->writeVersion(I)V

    .line 46
    return-void

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->resetData(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->SQL_CREATE_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method private readHash()[B
    .locals 11

    .prologue
    .line 132
    const/4 v10, 0x0

    .line 133
    .local v10, hash:[B
    const/4 v9, 0x0

    .line 135
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "header"

    sget-object v2, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.backlfipstudios.android.data.metadata"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 136
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 140
    :cond_0
    if-eqz v9, :cond_1

    .line 141
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return-object v10

    .line 140
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 141
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private readVersion()Ljava/lang/Integer;
    .locals 11

    .prologue
    .line 96
    const/4 v10, 0x0

    .line 97
    .local v10, version:Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 99
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "header"

    sget-object v2, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.backlfipstudios.android.data.metadata"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 100
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v10, Ljava/lang/Integer;

    .end local v10           #version:Ljava/lang/Integer;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .restart local v10       #version:Ljava/lang/Integer;
    :cond_0
    if-eqz v9, :cond_1

    .line 105
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_1
    return-object v10

    .line 104
    .end local v10           #version:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 105
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private updateHash()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->generateHash()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->writeHash([B)V

    .line 72
    return-void
.end method

.method private verifyHash()Z
    .locals 6

    .prologue
    .line 76
    const/4 v2, 0x1

    .line 79
    .local v2, retVal:Z
    :try_start_0
    invoke-direct {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->readHash()[B

    move-result-object v3

    .line 80
    .local v3, stored:[B
    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->generateHash()[B

    move-result-object v1

    .line 82
    .local v1, generated:[B
    invoke-static {v3, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    const-string v4, "bfsplatform"

    const-string v5, "BFSSecureDataStore.verifyHash(): Verification failed, nuking data."

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v2, 0x0

    .line 91
    .end local v1           #generated:[B
    .end local v3           #stored:[B
    :cond_0
    :goto_0
    return v2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "bfsplatform"

    const-string v5, "BFSSecureDataStore.verifyHash()"

    invoke-static {v4, v5}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeHash([B)V
    .locals 4
    .parameter "hash"

    .prologue
    const/4 v3, 0x0

    .line 122
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "com.backlfipstudios.android.data.metadata"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 125
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "header"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "header"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 128
    :cond_0
    return-void
.end method

.method private writeVersion(I)V
    .locals 4
    .parameter "version"

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "com.backlfipstudios.android.data.metadata"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/backflipstudios/android/data/BFSSecureDataStore;->COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "header"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "header"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public checkIntegrity()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->verifyHash()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->resetData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->flush()V

    .line 58
    iget-object v0, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->mDatabaseHelper:Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;

    invoke-virtual {v0}, Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;->close()V

    .line 59
    return-void
.end method

.method protected abstract createTables(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->m_dirty:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->updateHash()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore;->m_dirty:Z

    .line 67
    :cond_0
    return-void
.end method

.method protected abstract generateHash()[B
.end method

.method protected abstract getDatabaseVersion()I
.end method

.method public abstract readData(Ljava/lang/String;)[B
.end method

.method public abstract readFloat(Ljava/lang/String;)Ljava/lang/Float;
.end method

.method public abstract readInt(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract readObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract readString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract resetData(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected abstract upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;I)V
.end method

.method public abstract writeData(Ljava/lang/String;[B)V
.end method

.method public abstract writeFloat(Ljava/lang/String;Ljava/lang/Float;)V
.end method

.method public abstract writeInt(Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract writeObject(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/lang/String;)V
.end method
