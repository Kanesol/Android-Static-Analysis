.class Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;
.super Ljava/util/TimerTask;
.source "BFSMoPubBannerAdAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowBannerTask"
.end annotation


# instance fields
.field private m_banner:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;)V
    .locals 1
    .parameter "banner"

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;->m_banner:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 379
    iput-object p1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;->m_banner:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 380
    return-void
.end method

.method static synthetic access$300(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;)Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;->m_banner:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    return-object v0
.end method

.method static synthetic access$302(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;)Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;->m_banner:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    .line 386
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask$1;

    invoke-direct {v1, p0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask$1;-><init>(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method
