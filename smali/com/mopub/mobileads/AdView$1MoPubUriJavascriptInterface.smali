.class final Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;
.super Ljava/lang/Object;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdView;->addMoPubUriJavascriptInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MoPubUriJavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AdView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/mopub/mobileads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fireFinishLoad()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/mopub/mobileads/AdView;

    new-instance v1, Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface$1;-><init>(Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;)V

    #calls: Lcom/mopub/mobileads/AdView;->postHandlerRunnable(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/mopub/mobileads/AdView;->access$200(Lcom/mopub/mobileads/AdView;Ljava/lang/Runnable;)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method
