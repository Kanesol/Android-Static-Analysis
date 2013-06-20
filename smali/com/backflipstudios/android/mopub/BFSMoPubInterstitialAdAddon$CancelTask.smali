.class Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;
.super Ljava/util/TimerTask;
.source "BFSMoPubInterstitialAdAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelTask"
.end annotation


# instance fields
.field private m_ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;)V
    .locals 1
    .parameter "ad"

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;->m_ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    .line 317
    iput-object p1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;->m_ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    .line 318
    return-void
.end method

.method static synthetic access$300(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;)Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;->m_ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    .line 324
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask$1;

    invoke-direct {v1, p0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask$1;-><init>(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method
