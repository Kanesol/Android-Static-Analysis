.class Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BFSSecureDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/data/BFSSecureDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/data/BFSSecureDataStore;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/data/BFSSecureDataStore;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;->this$0:Lcom/backflipstudios/android/data/BFSSecureDataStore;

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->getDatabaseVersion()I

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 169
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 174
    invoke-static {}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/backflipstudios/android/data/BFSSecureDataStore$DatabaseHelper;->this$0:Lcom/backflipstudios/android/data/BFSSecureDataStore;

    invoke-virtual {v0, p1}, Lcom/backflipstudios/android/data/BFSSecureDataStore;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 176
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 181
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 184
    :cond_0
    return-void
.end method
