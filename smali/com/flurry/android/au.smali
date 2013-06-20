.class final Lcom/flurry/android/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/flurry/android/au;->a:I

    .line 19
    iput-wide p2, p0, Lcom/flurry/android/au;->b:J

    .line 20
    iput-object p4, p0, Lcom/flurry/android/au;->c:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/flurry/android/au;->d:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/flurry/android/au;->e:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 6

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 37
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :try_start_1
    iget v0, p0, Lcom/flurry/android/au;->a:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 41
    iget-wide v3, p0, Lcom/flurry/android/au;->b:J

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 42
    iget-object v0, p0, Lcom/flurry/android/au;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/flurry/android/au;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/flurry/android/au;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 48
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 57
    invoke-static {v1}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V

    .line 60
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    invoke-static {v1}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/y;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 53
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flurry/android/au;->c:Ljava/lang/String;

    return-object v0
.end method
