.class final Lcom/flurry/android/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/bc;->a:Z

    .line 10
    const/4 v0, 0x5

    sput v0, Lcom/flurry/android/bc;->b:I

    .line 20
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    sget-boolean v0, Lcom/flurry/android/bc;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flurry/android/bc;->b:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    sget-boolean v0, Lcom/flurry/android/bc;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flurry/android/bc;->b:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method static a()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/bc;->a:Z

    .line 27
    return-void
.end method

.method static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 52
    sput p0, Lcom/flurry/android/bc;->b:I

    .line 53
    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    sget-boolean v0, Lcom/flurry/android/bc;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flurry/android/bc;->b:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    sget-boolean v0, Lcom/flurry/android/bc;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flurry/android/bc;->b:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/bc;->a:Z

    .line 34
    return-void
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    sget-boolean v0, Lcom/flurry/android/bc;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flurry/android/bc;->b:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    sget-boolean v0, Lcom/flurry/android/bc;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flurry/android/bc;->b:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
