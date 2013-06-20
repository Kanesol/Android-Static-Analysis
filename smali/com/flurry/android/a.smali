.class final Lcom/flurry/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/flurry/android/FlurryAgent;

.field private synthetic c:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/flurry/android/a;->b:Lcom/flurry/android/FlurryAgent;

    iput-boolean p2, p0, Lcom/flurry/android/a;->c:Z

    iput-object p3, p0, Lcom/flurry/android/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/flurry/android/a;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;)V

    .line 1503
    iget-object v0, p0, Lcom/flurry/android/a;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->c(Lcom/flurry/android/FlurryAgent;)V

    .line 1504
    iget-boolean v0, p0, Lcom/flurry/android/a;->c:Z

    if-nez v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/flurry/android/a;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->d(Lcom/flurry/android/FlurryAgent;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/p;

    invoke-direct {v1, p0}, Lcom/flurry/android/p;-><init>(Lcom/flurry/android/a;)V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1516
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    const-string v0, "FlurryAgent"

    const-string v1, "Attempting to persist AdLogs"

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, p0, Lcom/flurry/android/a;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->e(Lcom/flurry/android/FlurryAgent;)Lcom/flurry/android/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/be;->k()V

    .line 1521
    :cond_1
    return-void
.end method
