.class final Lcom/flurry/android/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/flurry/android/ba;

.field private synthetic b:I

.field private synthetic c:Lcom/flurry/android/aj;


# direct methods
.method constructor <init>(Lcom/flurry/android/aj;Lcom/flurry/android/ba;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/flurry/android/ao;->c:Lcom/flurry/android/aj;

    iput-object p2, p0, Lcom/flurry/android/ao;->a:Lcom/flurry/android/ba;

    iput p3, p0, Lcom/flurry/android/ao;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 491
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 492
    const-string v0, "sourceEvent"

    iget-object v1, p0, Lcom/flurry/android/ao;->a:Lcom/flurry/android/ba;

    iget-object v1, v1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/flurry/android/ao;->c:Lcom/flurry/android/aj;

    const-string v1, "userConfirmed"

    iget-object v3, p0, Lcom/flurry/android/ao;->c:Lcom/flurry/android/aj;

    iget-object v3, v3, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/ao;->c:Lcom/flurry/android/aj;

    iget-object v4, v4, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget-object v5, p0, Lcom/flurry/android/ao;->c:Lcom/flurry/android/aj;

    iget v5, v5, Lcom/flurry/android/aj;->f:I

    iget v6, p0, Lcom/flurry/android/ao;->b:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    .line 494
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 495
    iget-object v0, p0, Lcom/flurry/android/ao;->c:Lcom/flurry/android/aj;

    invoke-static {v0}, Lcom/flurry/android/aj;->g(Lcom/flurry/android/aj;)Lcom/flurry/android/at;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ao;->c:Lcom/flurry/android/aj;

    invoke-virtual {v0}, Lcom/flurry/android/aj;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/flurry/android/ao;->c:Lcom/flurry/android/aj;

    invoke-static {v0}, Lcom/flurry/android/aj;->g(Lcom/flurry/android/aj;)Lcom/flurry/android/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/at;->start()V

    .line 499
    :cond_0
    return-void
.end method
