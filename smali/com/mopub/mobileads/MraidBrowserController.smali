.class Lcom/mopub/mobileads/MraidBrowserController;
.super Lcom/mopub/mobileads/MraidAbstractController;
.source "MraidBrowserController.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MraidBrowserController"


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MraidAbstractController;-><init>(Lcom/mopub/mobileads/MraidView;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected open(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 16
    const-string v3, "MraidBrowserController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening in-app browser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidBrowserController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    .line 19
    .local v2, view:Lcom/mopub/mobileads/MraidView;
    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getOnOpenListener()Lcom/mopub/mobileads/MraidView$OnOpenListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getOnOpenListener()Lcom/mopub/mobileads/MraidView$OnOpenListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/mopub/mobileads/MraidView$OnOpenListener;->onOpen(Lcom/mopub/mobileads/MraidView;)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidBrowserController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/mopub/mobileads/MraidBrowser;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v1, i:Landroid/content/Intent;
    const-string v3, "extra_url"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
