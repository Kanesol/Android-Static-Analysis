.class Lcom/mopub/mobileads/MraidAdapter$4;
.super Ljava/lang/Object;
.source "MraidAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MraidView$OnFailureListener;


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
    .line 103
    iput-object p1, p0, Lcom/mopub/mobileads/MraidAdapter$4;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/mopub/mobileads/MraidView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$4;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter$4;->this$0:Lcom/mopub/mobileads/MraidAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl()V

    .line 106
    :cond_0
    return-void
.end method
