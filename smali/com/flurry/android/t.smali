.class final Lcom/flurry/android/t;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/android/be;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/flurry/android/FlurryAdSize;

.field private e:Landroid/view/ViewGroup;

.field private f:I

.field private g:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/be;Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/flurry/android/t;->a:Lcom/flurry/android/be;

    .line 30
    iput-object p2, p0, Lcom/flurry/android/t;->b:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/flurry/android/t;->c:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/flurry/android/t;->e:Landroid/view/ViewGroup;

    .line 33
    iput v0, p0, Lcom/flurry/android/t;->f:I

    .line 34
    iput-boolean v0, p0, Lcom/flurry/android/t;->g:Z

    .line 35
    iput-object p5, p0, Lcom/flurry/android/t;->d:Lcom/flurry/android/FlurryAdSize;

    .line 36
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/flurry/android/t;->f:I

    return v0
.end method

.method final a(J)Lcom/flurry/android/ar;
    .locals 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v5, 0x0

    .line 41
    .line 44
    iget-object v0, p0, Lcom/flurry/android/t;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/android/t;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/android/y;->a(Landroid/content/Context;I)I

    move-result v3

    iget-object v0, p0, Lcom/flurry/android/t;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/android/t;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/android/y;->a(Landroid/content/Context;I)I

    move-result v4

    iget-object v0, p0, Lcom/flurry/android/t;->a:Lcom/flurry/android/be;

    iget-object v1, p0, Lcom/flurry/android/t;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/t;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/flurry/android/t;->d:Lcom/flurry/android/FlurryAdSize;

    move-wide v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/flurry/android/be;->a(Landroid/content/Context;Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;J)Lcom/flurry/android/q;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/flurry/android/q;->a()Lcom/flurry/android/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/flurry/android/q;->a()Lcom/flurry/android/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/flurry/android/q;->a()Lcom/flurry/android/AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    :cond_0
    invoke-virtual {v1}, Lcom/flurry/android/q;->b()Lcom/flurry/android/o;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/flurry/android/q;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/flurry/android/t;->removeAllViews()V

    .line 56
    invoke-virtual {p0}, Lcom/flurry/android/t;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {v1}, Lcom/flurry/android/q;->b()Lcom/flurry/android/o;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/t;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, p0}, Lcom/flurry/android/o;->a(Landroid/view/ViewGroup;Lcom/flurry/android/t;)V

    .line 61
    :cond_1
    invoke-virtual {v1}, Lcom/flurry/android/q;->b()Lcom/flurry/android/o;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iput v5, p0, Lcom/flurry/android/t;->f:I

    .line 79
    :goto_0
    new-instance v0, Lcom/flurry/android/ar;

    invoke-direct {v0, v9, v5}, Lcom/flurry/android/ar;-><init>(ZZ)V

    return-object v0

    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/flurry/android/q;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/flurry/android/t;->b:Landroid/content/Context;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/flurry/android/t;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    iget-object v1, p0, Lcom/flurry/android/t;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    move v11, v9

    move v9, v5

    move v5, v11

    .line 77
    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "FlurryAgent"

    const-string v1, "Unable to launch FlurryFullscreenTakeoverActivity. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v9, v5

    goto :goto_0
.end method

.method final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/flurry/android/t;->f:I

    .line 85
    return-void
.end method

.method final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/flurry/android/t;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 133
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p2, :cond_1

    .line 134
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    invoke-virtual {p0}, Lcom/flurry/android/t;->requestLayout()V

    .line 138
    :cond_1
    return-void
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/flurry/android/t;->g:Z

    .line 95
    return-void
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/flurry/android/t;->g:Z

    return v0
.end method

.method final c()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/flurry/android/t;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/android/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method final e()Lcom/flurry/android/o;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/flurry/android/t;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    move-object v0, v1

    .line 153
    :goto_0
    return-object v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/t;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 149
    :try_start_0
    check-cast v0, Lcom/flurry/android/o;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
