.class Lcom/mopub/mobileads/MraidAdapter$2;
.super Ljava/lang/Object;
.source "MraidAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MraidView$OnExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidAdapter;->initMraidListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mopub/mobileads/MraidAdapter$2;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand(Lcom/mopub/mobileads/MraidView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$2;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$2;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidAdapter$2;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    iget-object v1, v1, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAutorefreshEnabled()Z

    move-result v1

    #setter for: Lcom/mopub/mobileads/MraidAdapter;->mPreviousAutorefreshSetting:Z
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MraidAdapter;->access$002(Lcom/mopub/mobileads/MraidAdapter;Z)Z

    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$2;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$2;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adPresentedOverlay()V

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$2;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->registerClick()V

    .line 91
    :cond_0
    return-void
.end method
