.class Lcom/mopub/mobileads/MraidAdapter$3;
.super Ljava/lang/Object;
.source "MraidAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MraidView$OnCloseListener;


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
    .line 94
    iput-object p1, p0, Lcom/mopub/mobileads/MraidAdapter$3;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ViewState;)V
    .locals 2
    .parameter "view"
    .parameter "newViewState"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$3;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$3;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidAdapter$3;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    #getter for: Lcom/mopub/mobileads/MraidAdapter;->mPreviousAutorefreshSetting:Z
    invoke-static {v1}, Lcom/mopub/mobileads/MraidAdapter;->access$000(Lcom/mopub/mobileads/MraidAdapter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$3;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adClosed()V

    .line 100
    :cond_0
    return-void
.end method
