.class Lcom/trck8/app/Startup$1;
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
.field private final synthetic val$param:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/trck8/app/Startup$1;->val$param:Ljava/util/Map;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/trck8/app/Startup$1;->val$param:Ljava/util/Map;

    invoke-static {v0}, Lcom/trck8/app/util/HttpRequest;->execute(Ljava/util/Map;)Ljava/lang/String;

    .line 104
    return-void
.end method
