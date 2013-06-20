.class final Lcom/flurry/android/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/be;


# direct methods
.method constructor <init>(Lcom/flurry/android/be;)V
    .locals 0
    .parameter

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/flurry/android/f;->a:Lcom/flurry/android/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/flurry/android/f;->a:Lcom/flurry/android/be;

    const-string v1, "/postAdLog.do"

    invoke-virtual {v0, v1}, Lcom/flurry/android/be;->e(Ljava/lang/String;)V

    .line 1128
    return-void
.end method
