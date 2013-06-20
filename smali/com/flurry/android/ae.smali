.class final Lcom/flurry/android/ae;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private synthetic d:Lcom/flurry/android/be;


# direct methods
.method public constructor <init>(Lcom/flurry/android/be;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2163
    iput-object p1, p0, Lcom/flurry/android/ae;->d:Lcom/flurry/android/be;

    .line 2164
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/ae;->a:Ljava/lang/String;

    .line 2165
    iput-object p2, p0, Lcom/flurry/android/ae;->b:Landroid/content/Context;

    .line 2166
    iput-object p3, p0, Lcom/flurry/android/ae;->c:Ljava/lang/String;

    .line 2167
    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2173
    const/4 v0, 0x0

    move v1, v2

    .line 2176
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 2180
    iget-object v3, p0, Lcom/flurry/android/ae;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2182
    iget-object v3, p0, Lcom/flurry/android/ae;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/flurry/android/be;->c(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 2185
    iget-object v3, p0, Lcom/flurry/android/ae;->d:Lcom/flurry/android/be;

    invoke-static {v3}, Lcom/flurry/android/be;->c(Lcom/flurry/android/be;)Lcom/flurry/android/ax;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/ae;->c:Ljava/lang/String;

    const/16 v5, 0x2710

    const/16 v6, 0x3a98

    invoke-static {v3, v4, v5, v6, v2}, Lcom/flurry/android/y;->a(Lcom/flurry/android/ax;Ljava/lang/String;IIZ)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 2186
    if-eqz v3, :cond_2

    .line 2188
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 2189
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 2191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Redirect URL found for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/ae;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2192
    iget-object v0, p0, Lcom/flurry/android/ae;->c:Ljava/lang/String;

    .line 2236
    :cond_0
    :goto_1
    return-object v0

    .line 2195
    :cond_1
    const/16 v5, 0x12c

    if-lt v4, v5, :cond_3

    const/16 v5, 0x190

    if-ge v4, v5, :cond_3

    .line 2197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumRedirects: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2198
    const-string v4, "Location"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2200
    const-string v4, "Location"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/android/ae;->c:Ljava/lang/String;

    .line 2234
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2205
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Response status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 2214
    :cond_4
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2216
    :catch_0
    move-exception v3

    .line 2218
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 2225
    :cond_5
    iget-object v1, p0, Lcom/flurry/android/ae;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/ae;->c:Ljava/lang/String;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/be;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/flurry/android/ae;->c:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2155
    invoke-direct {p0}, Lcom/flurry/android/ae;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
