.class Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask$1;
.super Ljava/lang/Object;
.source "BFSMoPubInterstitialAdAddon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask$1;->this$0:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask$1;->this$0:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;

    #getter for: Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;->m_ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    invoke-static {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;->access$300(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;)Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->cancel()V

    .line 330
    return-void
.end method
