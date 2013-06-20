.class Lcom/mopub/mobileads/MillennialAdapter$1;
.super Ljava/lang/Object;
.source "MillennialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MillennialAdapter;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MillennialAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MillennialAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mopub/mobileads/MillennialAdapter$1;->this$0:Lcom/mopub/mobileads/MillennialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter$1;->this$0:Lcom/mopub/mobileads/MillennialAdapter;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MillennialAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Millennial failed. Trying another"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/MillennialAdapter$1;->this$0:Lcom/mopub/mobileads/MillennialAdapter;

    iget-object v0, v0, Lcom/mopub/mobileads/MillennialAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl()V

    goto :goto_0
.end method
