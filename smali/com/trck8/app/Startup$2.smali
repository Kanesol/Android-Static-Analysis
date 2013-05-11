.class Lcom/trck8/app/Startup$2;
.super Ljava/lang/Object;
.source "Startup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trck8/app/Startup;->execute(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$fileName:Ljava/lang/String;

.field private final synthetic val$param:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/trck8/app/Startup$2;->val$param:Ljava/util/Map;

    iput-object p2, p0, Lcom/trck8/app/Startup$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/trck8/app/Startup$2;->val$fileName:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 128
    iget-object v1, p0, Lcom/trck8/app/Startup$2;->val$param:Ljava/util/Map;

    invoke-static {v1}, Lcom/trck8/app/util/HttpRequest;->execute(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/trck8/app/Startup$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/trck8/app/Startup$2;->val$fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/trck8/app/Startup$2;->val$param:Ljava/util/Map;

    const-string v4, "key"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/trck8/app/util/LogFile;->createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    iget-object v1, p0, Lcom/trck8/app/Startup$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/trck8/app/Startup$2;->val$param:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/trck8/app/util/HttpRequest;->conversionBrowser(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Startup"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
