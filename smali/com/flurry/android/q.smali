.class final Lcom/flurry/android/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/android/o;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcom/flurry/android/AdUnit;


# direct methods
.method constructor <init>(Lcom/flurry/android/o;ZZLcom/flurry/android/AdUnit;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/o;",
            "ZZ",
            "Lcom/flurry/android/AdUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/flurry/android/q;->a:Lcom/flurry/android/o;

    .line 17
    iput-boolean p2, p0, Lcom/flurry/android/q;->b:Z

    .line 18
    iput-boolean p3, p0, Lcom/flurry/android/q;->c:Z

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/q;->d:I

    .line 21
    iput-object p4, p0, Lcom/flurry/android/q;->e:Lcom/flurry/android/AdUnit;

    .line 22
    return-void
.end method


# virtual methods
.method final a()Lcom/flurry/android/AdUnit;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/android/q;->e:Lcom/flurry/android/AdUnit;

    return-object v0
.end method

.method final b()Lcom/flurry/android/o;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/flurry/android/q;->a:Lcom/flurry/android/o;

    return-object v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/flurry/android/q;->b:Z

    return v0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/flurry/android/q;->c:Z

    return v0
.end method
