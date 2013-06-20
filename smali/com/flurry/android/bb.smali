.class final Lcom/flurry/android/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private final b:I

.field private final c:J

.field private final d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/an;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/flurry/android/bb;->a:I

    return-void
.end method

.method constructor <init>(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget v0, Lcom/flurry/android/bb;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/flurry/android/bb;->a:I

    iput v0, p0, Lcom/flurry/android/bb;->b:I

    .line 20
    iput-wide p1, p0, Lcom/flurry/android/bb;->c:J

    .line 21
    iput-object p3, p0, Lcom/flurry/android/bb;->d:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/bb;->e:Ljava/util/List;

    .line 24
    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/bb;->b:I

    .line 29
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/bb;->c:J

    .line 30
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/bb;->d:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/bb;->e:Ljava/util/List;

    .line 32
    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v1

    .line 33
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 35
    iget-object v2, p0, Lcom/flurry/android/bb;->e:Ljava/util/List;

    new-instance v3, Lcom/flurry/android/an;

    invoke-direct {v3, p1}, Lcom/flurry/android/an;-><init>(Ljava/io/DataInput;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/flurry/android/bb;->b:I

    return v0
.end method

.method final a(Lcom/flurry/android/an;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flurry/android/bb;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method final a(Ljava/io/DataOutput;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/flurry/android/bb;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 46
    iget-wide v0, p0, Lcom/flurry/android/bb;->c:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 47
    iget-object v0, p0, Lcom/flurry/android/bb;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/flurry/android/bb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 49
    iget-object v0, p0, Lcom/flurry/android/bb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/an;

    .line 51
    invoke-virtual {v0, p1}, Lcom/flurry/android/an;->a(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flurry/android/bb;->d:Ljava/lang/String;

    return-object v0
.end method

.method final c()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/flurry/android/bb;->c:J

    return-wide v0
.end method

.method final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/an;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flurry/android/bb;->e:Ljava/util/List;

    return-object v0
.end method
