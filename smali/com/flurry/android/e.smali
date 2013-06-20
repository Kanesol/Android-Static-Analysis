.class final Lcom/flurry/android/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Z

.field private synthetic c:Lcom/flurry/android/FlurryAgent;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/flurry/android/e;->c:Lcom/flurry/android/FlurryAgent;

    iput-object p2, p0, Lcom/flurry/android/e;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/flurry/android/e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/flurry/android/e;->c:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/flurry/android/e;->c:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/e;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/e;->c:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/e;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/flurry/android/e;->b:Z

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V

    .line 1423
    return-void
.end method
