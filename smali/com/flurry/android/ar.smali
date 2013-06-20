.class final Lcom/flurry/android/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/flurry/android/ar;->a:Z

    .line 11
    iput-boolean p2, p0, Lcom/flurry/android/ar;->b:Z

    .line 12
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/flurry/android/ar;->a:Z

    return v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/flurry/android/ar;->b:Z

    return v0
.end method
