.class final Lcom/flurry/android/aj;
.super Lcom/flurry/android/o;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/flurry/android/ai;


# instance fields
.field e:Lcom/flurry/android/AdUnit;

.field f:I

.field g:Lcom/flurry/android/bb;

.field private final h:Ljava/lang/String;

.field private i:Landroid/app/ProgressDialog;

.field private j:Lcom/flurry/android/at;

.field private k:Landroid/webkit/WebView;

.field private l:Landroid/app/AlertDialog;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/bb;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/content/Context;

.field private r:Lcom/flurry/android/be;

.field private s:Lcom/flurry/android/w;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdUnit;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/o;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/aj;->h:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/flurry/android/aj;->t:Z

    .line 68
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flurry/android/aj;->u:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    .line 188
    iput-object p4, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    .line 189
    iput p5, p0, Lcom/flurry/android/aj;->f:I

    .line 190
    iput-object p3, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    .line 192
    iget-object v2, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    .line 195
    iget-object v2, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/aj;->n:Z

    .line 197
    iget-boolean v0, p0, Lcom/flurry/android/aj;->n:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/aj;->p:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/aj;->o:Ljava/util/Map;

    .line 201
    iget-object v0, p0, Lcom/flurry/android/aj;->p:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/flurry/android/bb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v2, p0, Lcom/flurry/android/aj;->o:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    iput-object p2, p0, Lcom/flurry/android/aj;->r:Lcom/flurry/android/be;

    .line 206
    iget-object v0, p0, Lcom/flurry/android/aj;->r:Lcom/flurry/android/be;

    iget-object v0, v0, Lcom/flurry/android/be;->c:Lcom/flurry/android/w;

    iput-object v0, p0, Lcom/flurry/android/aj;->s:Lcom/flurry/android/w;

    .line 207
    iget-object v0, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iput-object v0, p0, Lcom/flurry/android/o;->c:Lcom/flurry/android/AdUnit;

    .line 208
    iget-object v0, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iput-object v0, p0, Lcom/flurry/android/o;->b:Lcom/flurry/android/bb;

    .line 209
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/aj;->v:Ljava/util/List;

    .line 212
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 195
    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/aj;Ljava/lang/String;)Lcom/flurry/android/AdUnit;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/flurry/android/aj;->b(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/flurry/android/bb;
    .locals 2
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lcom/flurry/android/aj;->p:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 788
    const/4 v0, 0x0

    .line 797
    :cond_0
    :goto_0
    return-object v0

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/aj;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/bb;

    .line 792
    if-nez v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/flurry/android/aj;->r:Lcom/flurry/android/be;

    invoke-static {v0, p1}, Lcom/flurry/android/y;->a(Lcom/flurry/android/be;Ljava/lang/String;)Lcom/flurry/android/bb;

    move-result-object v0

    .line 795
    iget-object v1, p0, Lcom/flurry/android/aj;->p:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    const-string v0, "\'{\"adComponents\":["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 756
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdUnit;

    .line 760
    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/y;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 766
    :cond_1
    const-string v0, "]}\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, Lcom/flurry/android/aj;->s:Lcom/flurry/android/w;

    iget-object v1, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/flurry/android/w;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 773
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdUnit;

    .line 775
    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 777
    iget-object v4, p0, Lcom/flurry/android/aj;->o:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/AdFrame;

    invoke-virtual {v1}, Lcom/flurry/android/AdFrame;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 780
    :cond_1
    return-object v2
.end method

.method static synthetic a(Lcom/flurry/android/aj;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/flurry/android/AdUnit;
    .locals 1
    .parameter

    .prologue
    .line 802
    iget-object v0, p0, Lcom/flurry/android/aj;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 804
    const/4 v0, 0x0

    .line 807
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/aj;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdUnit;

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/android/aj;Ljava/lang/String;)Lcom/flurry/android/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/flurry/android/aj;->a(Ljava/lang/String;)Lcom/flurry/android/bb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/aj;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/flurry/android/aj;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/flurry/android/aj;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/android/aj;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/aj;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/android/aj;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/aj;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/android/aj;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/flurry/android/aj;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 279
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 280
    const-string v1, "adClosed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget v5, p0, Lcom/flurry/android/aj;->f:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught class cast exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/aj;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_0

    .line 296
    :try_start_1
    check-cast v0, Landroid/view/ViewGroup;

    .line 297
    iget-object v1, p0, Lcom/flurry/android/aj;->r:Lcom/flurry/android/be;

    iget-object v2, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v3}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/be;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 300
    :catch_1
    move-exception v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to remove view from holder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic g(Lcom/flurry/android/aj;)Lcom/flurry/android/at;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    iget v1, p0, Lcom/flurry/android/aj;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/flurry/android/u;Lcom/flurry/android/be;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iget-object v0, p1, Lcom/flurry/android/u;->a:Ljava/lang/String;

    .line 407
    iget-object v3, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    .line 408
    iget-object v4, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    .line 410
    const/16 v1, 0xa

    if-le p3, v1, :cond_1

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum depth for event/action loop exceeded when performing action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",triggered by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performAction(action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",triggering event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    const-string v1, "nextAdUnit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/android/aj;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 423
    if-eqz v0, :cond_2

    .line 425
    const/16 v2, 0x1e

    .line 426
    iget-object v1, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v3, "delay"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1a

    .line 430
    :try_start_1
    iget-object v1, p1, Lcom/flurry/android/u;->b:Ljava/util/Map;

    const-string v3, "delay"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 434
    :goto_1
    mul-int/lit16 v1, v1, 0x3e8

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/flurry/android/t;->a(I)V

    .line 438
    iget-object v1, p0, Lcom/flurry/android/aj;->a:Lcom/flurry/android/be;

    iget-object v1, v1, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    invoke-virtual {v1, v0}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/t;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 632
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/aj;->v:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v1, v1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:flurryadapter.callComplete(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v2, v2, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/aj;->v:Ljava/util/List;

    iget-object v1, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v1, v1, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 432
    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_1

    .line 441
    :catch_1
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    .line 444
    invoke-direct {p0}, Lcom/flurry/android/aj;->f()V

    goto :goto_2

    .line 447
    :cond_3
    const-string v1, "nextFrame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 449
    iget v0, p0, Lcom/flurry/android/aj;->f:I

    add-int/lit8 v1, v0, 0x1

    .line 450
    const-string v0, "offset"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    if-eqz v0, :cond_4

    .line 453
    const-string v2, "next"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 455
    iget v0, p0, Lcom/flurry/android/aj;->f:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 473
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/flurry/android/aj;->n:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/flurry/android/aj;->f:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {p0}, Lcom/flurry/android/aj;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "takeover"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/aj;->r:Lcom/flurry/android/be;

    iget-object v2, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    invoke-virtual {v0, v2}, Lcom/flurry/android/be;->b(Lcom/flurry/android/bb;)V

    iget-object v0, p0, Lcom/flurry/android/aj;->r:Lcom/flurry/android/be;

    iget-object v2, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0, v2}, Lcom/flurry/android/be;->a(Lcom/flurry/android/AdUnit;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "frameIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 457
    :cond_5
    const-string v2, "current"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    move v1, v0

    .line 470
    goto :goto_3

    .line 467
    :catch_2
    move-exception v0

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    .line 473
    :cond_6
    iput v1, p0, Lcom/flurry/android/aj;->f:I

    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/flurry/android/aj;->initLayout(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    const-string v2, "guid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/flurry/android/aj;->b(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v0, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    iget-object v0, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->e:Lcom/flurry/android/bb;

    iput-object v0, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    invoke-virtual {p0}, Lcom/flurry/android/aj;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "takeover"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flurry/android/aj;->r:Lcom/flurry/android/be;

    iget-object v2, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v0, v2}, Lcom/flurry/android/be;->a(Lcom/flurry/android/AdUnit;)V

    iget-object v0, p0, Lcom/flurry/android/aj;->r:Lcom/flurry/android/be;

    iget-object v2, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    invoke-virtual {v0, v2}, Lcom/flurry/android/be;->b(Lcom/flurry/android/bb;)V

    :cond_8
    iput v1, p0, Lcom/flurry/android/aj;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/aj;->n:Z

    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/flurry/android/aj;->initLayout(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 475
    :cond_9
    const-string v1, "closeAd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 477
    invoke-direct {p0}, Lcom/flurry/android/aj;->f()V

    goto/16 :goto_2

    .line 479
    :cond_a
    const-string v1, "notifyUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 481
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    const-string v0, "message"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "message"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 483
    :goto_4
    const-string v0, "confirmDisplay"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "confirmDisplay"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 484
    :goto_5
    const-string v0, "cancelDisplay"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "cancelDisplay"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    :goto_6
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/flurry/android/ao;

    invoke-direct {v4, p0, v3, p3}, Lcom/flurry/android/ao;-><init>(Lcom/flurry/android/aj;Lcom/flurry/android/ba;I)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/al;

    invoke-direct {v2, p0, v3, p3}, Lcom/flurry/android/al;-><init>(Lcom/flurry/android/aj;Lcom/flurry/android/ba;I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 516
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/aj;->l:Landroid/app/AlertDialog;

    .line 518
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/flurry/android/aj;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 520
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {v0}, Lcom/flurry/android/at;->pause()V

    .line 522
    :cond_b
    iget-object v0, p0, Lcom/flurry/android/aj;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 482
    :cond_c
    const-string v0, "Are you sure?"

    move-object v1, v0

    goto :goto_4

    .line 483
    :cond_d
    const-string v0, "Yes"

    move-object v2, v0

    goto :goto_5

    .line 484
    :cond_e
    const-string v0, "No"

    goto :goto_6

    .line 524
    :cond_f
    const-string v1, "loadAdComponents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 526
    const/4 v1, 0x1

    const/4 v0, 0x3

    .line 527
    const-string v2, "min"

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "max"

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 531
    :try_start_4
    const-string v0, "min"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 532
    const-string v0, "max"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    .line 541
    :cond_10
    :goto_7
    iget-object v2, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/flurry/android/aj;->a(II)Ljava/util/List;

    move-result-object v0

    .line 542
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 544
    iget-object v1, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/AdUnit;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/aj;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 545
    iget-object v2, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:(function() {var multiadwraps=document.getElementsByClassName(\'multiAdWrap\');if(multiadwraps.length>0){var template=document.getElementsByClassName(\'multiAdWrap\')[0];var compiled=Hogan.compile(template.innerHTML);template.innerHTML=\'\';template.innerHTML=compiled.render(JSON.parse("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "));}})();"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    const-string v2, "javascript:flurryadapter.callComplete();"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 549
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/android/AdUnit;

    .line 551
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 552
    const-string v1, "guid"

    invoke-virtual {v3}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v1, "rendered"

    invoke-virtual {v3}, Lcom/flurry/android/AdUnit;->c()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/aj;->a(Ljava/lang/String;)Lcom/flurry/android/bb;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    goto :goto_8

    .line 534
    :catch_3
    move-exception v0

    .line 536
    const/4 v1, 0x1

    .line 537
    const/4 v0, 0x3

    goto/16 :goto_7

    .line 558
    :cond_11
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/aj;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/aj;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 565
    :cond_12
    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget v5, p0, Lcom/flurry/android/aj;->f:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    goto/16 :goto_2

    .line 568
    :cond_13
    const-string v1, "doExpand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 570
    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;)I

    move-result v1

    .line 571
    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/y;->b(Landroid/content/Context;)I

    move-result v0

    .line 572
    iget-object v2, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v2, v2, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    const-string v3, "width"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v2, v2, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    const-string v3, "height"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 575
    :try_start_5
    iget-object v0, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 576
    iget-object v0, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v0

    move v2, v1

    move v1, v0

    .line 587
    :goto_9
    :try_start_6
    invoke-virtual {p0}, Lcom/flurry/android/aj;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 588
    if-eqz v0, :cond_14

    .line 590
    invoke-virtual {v0, v2, v1}, Lcom/flurry/android/t;->a(II)V

    .line 592
    :cond_14
    iget-object v0, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 594
    iget-object v0, p1, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    iget-object v0, v0, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/aj;->u:Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/flurry/android/aj;->initLayout(Landroid/content/Context;)V

    .line 597
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/aj;->t:Z
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 599
    :catch_4
    move-exception v0

    .line 601
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    goto/16 :goto_2

    .line 578
    :catch_5
    move-exception v0

    .line 580
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;)I

    move-result v1

    .line 582
    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/y;->b(Landroid/content/Context;)I

    move-result v0

    move v2, v1

    move v1, v0

    goto :goto_9

    .line 604
    :cond_16
    const-string v1, "doCollapse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 607
    iget-object v0, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    iget v1, p0, Lcom/flurry/android/aj;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 608
    iget-object v0, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    iget v2, p0, Lcom/flurry/android/aj;->f:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 610
    iget-object v2, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/flurry/android/y;->b(Landroid/content/Context;I)I

    move-result v1

    .line 611
    iget-object v2, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/flurry/android/y;->b(Landroid/content/Context;I)I

    move-result v2

    .line 612
    iget-object v0, p0, Lcom/flurry/android/aj;->u:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/aj;->u:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/flurry/android/aj;->initLayout(Landroid/content/Context;)V

    .line 619
    :cond_17
    :try_start_7
    invoke-virtual {p0}, Lcom/flurry/android/aj;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 620
    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/t;->a(II)V
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_6

    .line 626
    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/aj;->t:Z

    goto/16 :goto_2

    .line 622
    :catch_6
    move-exception v0

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action doCollapse failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_a

    .line 630
    :cond_18
    iget-object v0, p0, Lcom/flurry/android/aj;->a:Lcom/flurry/android/be;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/be;->a(Lcom/flurry/android/u;Lcom/flurry/android/be;I)V

    goto/16 :goto_2

    :cond_19
    move v2, v1

    move v1, v0

    goto/16 :goto_9

    :cond_1a
    move v1, v2

    goto/16 :goto_1
.end method

.method final a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
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
            ">;",
            "Lcom/flurry/android/AdUnit;",
            "Lcom/flurry/android/bb;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireEvent(event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    iget-object v7, p0, Lcom/flurry/android/aj;->a:Lcom/flurry/android/be;

    new-instance v0, Lcom/flurry/android/ba;

    iget-object v3, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/ba;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;I)V

    invoke-virtual {v7, v0, p0, p6}, Lcom/flurry/android/be;->a(Lcom/flurry/android/ba;Lcom/flurry/android/ai;I)V

    .line 702
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/flurry/android/aj;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/flurry/android/aj;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 686
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {v0}, Lcom/flurry/android/at;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {v0}, Lcom/flurry/android/at;->stopPlayback()V

    .line 695
    :cond_1
    return-void
.end method

.method final c()I
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    iget v1, p0, Lcom/flurry/android/aj;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    iget v1, p0, Lcom/flurry/android/aj;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/flurry/android/aj;->m:Ljava/util/List;

    iget v1, p0, Lcom/flurry/android/aj;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/AdFrame;->d()Lcom/flurry/android/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/AdSpaceLayout;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final initLayout(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/flurry/android/aj;->removeAllViews()V

    .line 320
    invoke-virtual {p0}, Lcom/flurry/android/aj;->c()I

    move-result v1

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/aj;->q:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/flurry/android/aj;->setFocusable(Z)V

    .line 322
    invoke-virtual {p0, v3}, Lcom/flurry/android/aj;->setFocusableInTouchMode(Z)V

    .line 324
    invoke-virtual {p0}, Lcom/flurry/android/aj;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 399
    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget v5, p0, Lcom/flurry/android/aj;->f:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    .line 401
    :goto_1
    return-void

    .line 320
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    goto :goto_0

    .line 327
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Lcom/flurry/android/at;

    invoke-direct {v0, p1}, Lcom/flurry/android/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    .line 330
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {v0, p0}, Lcom/flurry/android/at;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 331
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {v0, p0}, Lcom/flurry/android/at;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 332
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {v0, p0}, Lcom/flurry/android/at;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 333
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->setMediaController(Landroid/widget/MediaController;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-direct {p0}, Lcom/flurry/android/aj;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->setVideoURI(Landroid/net/Uri;)V

    .line 337
    iget-object v0, p0, Lcom/flurry/android/aj;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/flurry/android/aj;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/at;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {p0, v0}, Lcom/flurry/android/aj;->addView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {v0}, Lcom/flurry/android/at;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 343
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    .line 344
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 345
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 347
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 348
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_1

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    .line 357
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    .line 358
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/flurry/android/aq;

    invoke-direct {v1, p0}, Lcom/flurry/android/aq;-><init>(Lcom/flurry/android/aj;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 359
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/aj;->c()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 377
    iget-object v0, p0, Lcom/flurry/android/aj;->u:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/aj;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 392
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 383
    :cond_4
    invoke-direct {p0}, Lcom/flurry/android/aj;->g()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 387
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/aj;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 389
    iget-object v0, p0, Lcom/flurry/android/aj;->k:Landroid/webkit/WebView;

    const-string v1, "base://url/"

    invoke-direct {p0}, Lcom/flurry/android/aj;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "base://url/"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter

    .prologue
    .line 649
    const-string v1, "videoCompleted"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget v5, p0, Lcom/flurry/android/aj;->f:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    .line 650
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 672
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 676
    :cond_0
    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget v5, p0, Lcom/flurry/android/aj;->f:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    .line 678
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {p0, v0}, Lcom/flurry/android/aj;->removeView(Landroid/view/View;)V

    .line 679
    return v6
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onkey,keycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 829
    const-string v1, "adWillClose"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget v5, p0, Lcom/flurry/android/aj;->f:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    .line 830
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 831
    const/4 v6, 0x1

    .line 833
    :cond_0
    return v6
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/flurry/android/aj;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 657
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/flurry/android/aj;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/aj;->l:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/aj;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/aj;->j:Lcom/flurry/android/at;

    invoke-virtual {v0}, Lcom/flurry/android/at;->start()V

    .line 665
    :cond_2
    const-string v1, "rendered"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget v5, p0, Lcom/flurry/android/aj;->f:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    .line 666
    const-string v1, "videoStart"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget v5, p0, Lcom/flurry/android/aj;->f:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    .line 668
    :cond_3
    return-void
.end method
