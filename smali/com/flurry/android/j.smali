.class final Lcom/flurry/android/j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/android/be;


# direct methods
.method constructor <init>(Lcom/flurry/android/be;)V
    .locals 0
    .parameter

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/flurry/android/j;->a:Lcom/flurry/android/be;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/flurry/android/j;->a:Lcom/flurry/android/be;

    invoke-static {v0}, Lcom/flurry/android/be;->a(Lcom/flurry/android/be;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1569
    const/4 v2, 0x0

    .line 1572
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/j;->a:Lcom/flurry/android/be;

    invoke-static {v1}, Lcom/flurry/android/be;->a(Lcom/flurry/android/be;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1573
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1577
    const v2, 0xb5fa

    if-ne v0, v2, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/flurry/android/j;->a:Lcom/flurry/android/be;

    invoke-virtual {v0, v1}, Lcom/flurry/android/be;->a(Ljava/io/DataInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1583
    :cond_0
    invoke-static {v1}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V

    .line 1597
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/j;->a:Lcom/flurry/android/be;

    invoke-static {v0}, Lcom/flurry/android/be;->b(Lcom/flurry/android/be;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1599
    iget-object v0, p0, Lcom/flurry/android/j;->a:Lcom/flurry/android/be;

    invoke-static {v0}, Lcom/flurry/android/be;->a(Lcom/flurry/android/be;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 1600
    if-nez v0, :cond_1

    .line 1614
    :cond_1
    :goto_1
    return-object p1

    .line 1586
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1588
    :goto_2
    :try_start_3
    sget-object v2, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v3, "Error when loading persistent file"

    invoke-static {v2, v3, v0}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1592
    invoke-static {v1}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V

    throw v0

    .line 1610
    :catch_1
    move-exception v0

    .line 1612
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1592
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1586
    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1562
    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/flurry/android/j;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
