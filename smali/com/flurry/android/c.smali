.class final Lcom/flurry/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Z

.field private synthetic d:Lcom/flurry/android/be;


# direct methods
.method constructor <init>(Lcom/flurry/android/be;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/flurry/android/c;->d:Lcom/flurry/android/be;

    iput-object p2, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/c;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/flurry/android/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 698
    iget-object v0, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/flurry/android/c;->d:Lcom/flurry/android/be;

    iget-object v1, p0, Lcom/flurry/android/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/be;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 704
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/flurry/android/c;->b:Landroid/content/Context;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    const-string v1, "url"

    iget-object v2, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    iget-boolean v1, p0, Lcom/flurry/android/c;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/android/c;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 708
    iget-object v1, p0, Lcom/flurry/android/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 712
    :cond_2
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v1, "Unable to launch FlurryFullscreenTakeoverActivity, falling back to browser. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/flurry/android/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/android/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 719
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/android/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 720
    if-nez v0, :cond_0

    .line 723
    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to launch intent for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 730
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch intent for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    sget-object v1, Lcom/flurry/android/be;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/flurry/android/bc;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
