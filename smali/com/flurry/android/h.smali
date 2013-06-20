.class final Lcom/flurry/android/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Z

.field private synthetic e:Lcom/flurry/android/FlurryAdSize;

.field private synthetic f:Lcom/flurry/android/be;


# direct methods
.method constructor <init>(Lcom/flurry/android/be;Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/flurry/android/h;->f:Lcom/flurry/android/be;

    iput-object p2, p0, Lcom/flurry/android/h;->a:Ljava/lang/String;

    iput p3, p0, Lcom/flurry/android/h;->b:I

    iput p4, p0, Lcom/flurry/android/h;->c:I

    iput-boolean p5, p0, Lcom/flurry/android/h;->d:Z

    iput-object p6, p0, Lcom/flurry/android/h;->e:Lcom/flurry/android/FlurryAdSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 1210
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/h;->f:Lcom/flurry/android/be;

    iget-object v1, p0, Lcom/flurry/android/h;->a:Ljava/lang/String;

    iget v2, p0, Lcom/flurry/android/h;->b:I

    iget v3, p0, Lcom/flurry/android/h;->c:I

    iget-boolean v4, p0, Lcom/flurry/android/h;->d:Z

    iget-object v5, p0, Lcom/flurry/android/h;->e:Lcom/flurry/android/FlurryAdSize;

    const-string v6, "/v3/getAds.do"

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/be;->a(Ljava/lang/String;IIZLcom/flurry/android/FlurryAdSize;Ljava/lang/String;)V

    .line 1221
    return-void

    .line 1216
    :catch_0
    move-exception v0

    sget-object v0, Lcom/flurry/android/be;->a:Ljava/lang/String;

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/flurry/android/bc;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
