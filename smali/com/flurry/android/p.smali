.class final Lcom/flurry/android/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/a;


# direct methods
.method constructor <init>(Lcom/flurry/android/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/flurry/android/p;->a:Lcom/flurry/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/flurry/android/p;->a:Lcom/flurry/android/a;

    iget-object v0, v0, Lcom/flurry/android/a;->b:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/p;->a:Lcom/flurry/android/a;

    iget-object v1, v1, Lcom/flurry/android/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V

    .line 1512
    return-void
.end method
