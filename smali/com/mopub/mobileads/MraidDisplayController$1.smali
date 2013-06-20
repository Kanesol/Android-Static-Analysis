.class Lcom/mopub/mobileads/MraidDisplayController$1;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MraidDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mopub/mobileads/MraidDisplayController$1;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController$1;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidDisplayController;->checkViewable()Z

    move-result v0

    .line 64
    .local v0, currentViewable:Z
    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController$1;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    #getter for: Lcom/mopub/mobileads/MraidDisplayController;->mIsViewable:Z
    invoke-static {v1}, Lcom/mopub/mobileads/MraidDisplayController;->access$000(Lcom/mopub/mobileads/MraidDisplayController;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController$1;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    #setter for: Lcom/mopub/mobileads/MraidDisplayController;->mIsViewable:Z
    invoke-static {v1, v0}, Lcom/mopub/mobileads/MraidDisplayController;->access$002(Lcom/mopub/mobileads/MraidDisplayController;Z)Z

    .line 66
    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController$1;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController$1;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    #getter for: Lcom/mopub/mobileads/MraidDisplayController;->mIsViewable:Z
    invoke-static {v2}, Lcom/mopub/mobileads/MraidDisplayController;->access$000(Lcom/mopub/mobileads/MraidDisplayController;)Z

    move-result v2

    invoke-static {v2}, Lcom/mopub/mobileads/MraidViewableProperty;->createWithViewable(Z)Lcom/mopub/mobileads/MraidViewableProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController$1;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    #getter for: Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mopub/mobileads/MraidDisplayController;->access$100(Lcom/mopub/mobileads/MraidDisplayController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method
