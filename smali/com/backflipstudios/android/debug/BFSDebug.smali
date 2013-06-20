.class public Lcom/backflipstudios/android/debug/BFSDebug;
.super Ljava/lang/Object;
.source "BFSDebug.java"


# static fields
.field public static LOG_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 72
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "text"
    .parameter "throwable"

    .prologue
    .line 79
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 16
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "text"
    .parameter "throwable"

    .prologue
    .line 23
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 30
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "text"
    .parameter "throwable"

    .prologue
    .line 37
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static final setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 11
    sput-boolean p0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    .line 12
    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 58
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "text"
    .parameter "throwable"

    .prologue
    .line 65
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_0
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "text"

    .prologue
    .line 44
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "text"
    .parameter "throwable"

    .prologue
    .line 51
    sget-boolean v0, Lcom/backflipstudios/android/debug/BFSDebug;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_0
    return-void
.end method
