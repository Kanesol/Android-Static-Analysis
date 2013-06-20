.class abstract Lcom/flurry/android/o;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/flurry/android/be;

.field b:Lcom/flurry/android/bb;

.field c:Lcom/flurry/android/AdUnit;

.field d:I

.field private e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1, v0, v0}, Lcom/flurry/android/o;->a(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;)V

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/o;->a(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;)V

    .line 23
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/flurry/android/o;->e:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/flurry/android/o;->a:Lcom/flurry/android/be;

    .line 35
    iput-object p3, p0, Lcom/flurry/android/o;->b:Lcom/flurry/android/bb;

    .line 36
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ViewGroup;Lcom/flurry/android/t;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    iget-object v0, p0, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 106
    invoke-virtual {p2, v0}, Lcom/flurry/android/t;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/flurry/android/o;->e:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/flurry/android/y;->b(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/flurry/android/o;->e:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/flurry/android/y;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 117
    aget-object v2, v0, v5

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    :cond_3
    :goto_1
    aget-object v2, v0, v6

    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    :cond_4
    :goto_2
    invoke-virtual {p2, v1}, Lcom/flurry/android/t;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 121
    :cond_5
    aget-object v2, v0, v5

    const-string v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 125
    :cond_6
    aget-object v2, v0, v5

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 135
    :cond_7
    aget-object v2, v0, v6

    const-string v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 137
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 139
    :cond_8
    aget-object v0, v0, v6

    const-string v2, "r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2
.end method

.method final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppSpotBannerView.onEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/flurry/android/o;->a:Lcom/flurry/android/be;

    iget-object v1, p0, Lcom/flurry/android/o;->b:Lcom/flurry/android/bb;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/flurry/android/be;->a(Lcom/flurry/android/bb;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    .line 72
    iget-object v0, p0, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    if-eqz v0, :cond_0

    .line 74
    iget-object v7, p0, Lcom/flurry/android/o;->a:Lcom/flurry/android/be;

    new-instance v0, Lcom/flurry/android/ba;

    iget-object v3, p0, Lcom/flurry/android/o;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    iget-object v5, p0, Lcom/flurry/android/o;->b:Lcom/flurry/android/bb;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/ba;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;I)V

    iget-object v1, p0, Lcom/flurry/android/o;->a:Lcom/flurry/android/be;

    invoke-virtual {v7, v0, v1, v6}, Lcom/flurry/android/be;->a(Lcom/flurry/android/ba;Lcom/flurry/android/ai;I)V

    .line 78
    :cond_0
    return-void
.end method

.method a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "takeover"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract initLayout(Landroid/content/Context;)V
.end method
