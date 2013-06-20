.class final Lcom/flurry/android/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/t;

.field private synthetic b:Lcom/flurry/android/bd;


# direct methods
.method constructor <init>(Lcom/flurry/android/bd;Lcom/flurry/android/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flurry/android/am;->b:Lcom/flurry/android/bd;

    iput-object p2, p0, Lcom/flurry/android/am;->a:Lcom/flurry/android/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flurry/android/am;->b:Lcom/flurry/android/bd;

    iget-object v1, p0, Lcom/flurry/android/am;->a:Lcom/flurry/android/t;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bd;->b(Lcom/flurry/android/t;)V

    .line 86
    iget-object v0, p0, Lcom/flurry/android/am;->a:Lcom/flurry/android/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/t;->a(Z)V

    .line 87
    return-void
.end method
