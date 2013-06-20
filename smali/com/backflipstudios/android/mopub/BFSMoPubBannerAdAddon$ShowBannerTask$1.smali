.class Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask$1;
.super Ljava/lang/Object;
.source "BFSMoPubBannerAdAddon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;


# direct methods
.method constructor <init>(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask$1;->this$0:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask$1;->this$0:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;

    #getter for: Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;->m_banner:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    invoke-static {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;->access$300(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;)Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    move-result-object v0

    #calls: Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->doShow()V
    invoke-static {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->access$400(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;)V

    .line 392
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask$1;->this$0:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;

    const/4 v1, 0x0

    #setter for: Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;->m_banner:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    invoke-static {v0, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;->access$302(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;)Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 393
    return-void
.end method
