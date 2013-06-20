.class Lcom/mopub/mobileads/MraidBrowser$6;
.super Ljava/lang/Object;
.source "MraidBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidBrowser;->initializeButtons(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidBrowser;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mopub/mobileads/MraidBrowser$6;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBrowser$6;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidBrowser;->finish()V

    .line 159
    return-void
.end method
