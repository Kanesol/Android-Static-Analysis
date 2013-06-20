.class Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;->fireFinishLoad()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface$1;->this$1:Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface$1;->this$1:Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;

    iget-object v0, v0, Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;->this$0:Lcom/mopub/mobileads/AdView;

    #calls: Lcom/mopub/mobileads/AdView;->adDidLoad()V
    invoke-static {v0}, Lcom/mopub/mobileads/AdView;->access$100(Lcom/mopub/mobileads/AdView;)V

    .line 162
    return-void
.end method
