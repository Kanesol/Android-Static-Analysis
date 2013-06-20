.class public Lcom/flurry/android/GetAdAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/flurry/android/AdUnit;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/flurry/android/FlurryAdSize;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/flurry/android/bd;

.field private g:Lcom/flurry/android/be;

.field private h:Lcom/flurry/android/t;

.field private i:Lcom/flurry/android/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;Landroid/view/ViewGroup;Lcom/flurry/android/be;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->a:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/flurry/android/GetAdAsyncTask;->c:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/flurry/android/GetAdAsyncTask;->d:Lcom/flurry/android/FlurryAdSize;

    .line 30
    iput-object p4, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    .line 32
    iget-object v0, p5, Lcom/flurry/android/be;->d:Lcom/flurry/android/bd;

    iput-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->f:Lcom/flurry/android/bd;

    .line 33
    iput-object p5, p0, Lcom/flurry/android/GetAdAsyncTask;->g:Lcom/flurry/android/be;

    .line 34
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/flurry/android/AdUnit;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 72
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/android/y;->a(Landroid/content/Context;I)I

    move-result v2

    .line 75
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/android/y;->a(Landroid/content/Context;I)I

    move-result v3

    .line 78
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->g:Lcom/flurry/android/be;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/be;->d(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making ad request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",refresh:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->g:Lcom/flurry/android/be;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/android/GetAdAsyncTask;->d:Lcom/flurry/android/FlurryAdSize;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/flurry/android/be;->a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;J)V

    .line 89
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->g:Lcom/flurry/android/be;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/be;->d(Ljava/lang/String;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/flurry/android/GetAdAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/flurry/android/AdUnit;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/flurry/android/AdUnit;)V
    .locals 4
    .parameter

    .prologue
    .line 102
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->g:Lcom/flurry/android/be;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/android/be;->a(Landroid/content/Context;Lcom/flurry/android/AdUnit;)Lcom/flurry/android/q;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/flurry/android/q;->b()Lcom/flurry/android/o;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/flurry/android/q;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    invoke-virtual {v1}, Lcom/flurry/android/t;->removeAllViews()V

    .line 112
    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    invoke-virtual {v1}, Lcom/flurry/android/t;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/flurry/android/q;->b()Lcom/flurry/android/o;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    invoke-virtual {v1, v2, v3}, Lcom/flurry/android/o;->a(Landroid/view/ViewGroup;Lcom/flurry/android/t;)V

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    invoke-virtual {v0}, Lcom/flurry/android/q;->b()Lcom/flurry/android/o;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/android/t;->addView(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/t;->a(I)V

    .line 119
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->i:Lcom/flurry/android/t;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->i:Lcom/flurry/android/t;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->f:Lcom/flurry/android/bd;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/GetAdAsyncTask;->i:Lcom/flurry/android/t;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Lcom/flurry/android/t;)V

    .line 124
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->i:Lcom/flurry/android/t;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    invoke-virtual {v0}, Lcom/flurry/android/t;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    invoke-virtual {v0}, Lcom/flurry/android/t;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->f:Lcom/flurry/android/bd;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/t;)V

    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {v0}, Lcom/flurry/android/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/flurry/android/y;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 144
    :cond_6
    const-string v0, "FlurryAgent"

    const-string v1, "Unable to launch FlurryFullscreenTakeoverActivity. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/flurry/android/AdUnit;

    invoke-virtual {p0, p1}, Lcom/flurry/android/GetAdAsyncTask;->onPostExecute(Lcom/flurry/android/AdUnit;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->f:Lcom/flurry/android/bd;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/flurry/android/GetAdAsyncTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/flurry/android/t;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    .line 47
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->f:Lcom/flurry/android/bd;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->g:Lcom/flurry/android/be;

    iget-object v2, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/flurry/android/GetAdAsyncTask;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/android/GetAdAsyncTask;->d:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/bd;->a(Lcom/flurry/android/be;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/flurry/android/FlurryAdSize;)Lcom/flurry/android/t;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    .line 50
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->f:Lcom/flurry/android/bd;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/GetAdAsyncTask;->h:Lcom/flurry/android/t;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/bd;->b(Landroid/content/Context;Lcom/flurry/android/t;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->f:Lcom/flurry/android/bd;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/flurry/android/bd;->a(Landroid/view/ViewGroup;)Lcom/flurry/android/t;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->i:Lcom/flurry/android/t;

    .line 57
    iget-object v0, p0, Lcom/flurry/android/GetAdAsyncTask;->f:Lcom/flurry/android/bd;

    iget-object v1, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/GetAdAsyncTask;->e:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/flurry/android/GetAdAsyncTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 60
    iget-object v2, p0, Lcom/flurry/android/GetAdAsyncTask;->i:Lcom/flurry/android/t;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/flurry/android/GetAdAsyncTask;->f:Lcom/flurry/android/bd;

    iget-object v3, p0, Lcom/flurry/android/GetAdAsyncTask;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/flurry/android/bd;->a(Landroid/content/Context;Lcom/flurry/android/t;)V

    .line 63
    invoke-virtual {v0}, Lcom/flurry/android/t;->c()Landroid/view/ViewGroup;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 67
    :cond_2
    return-void
.end method
