.class abstract Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
.super Ljava/lang/Object;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AdFetchResult"
.end annotation


# instance fields
.field mWeakAdView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/AdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdView;)V
    .locals 1
    .parameter "adView"

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;->mWeakAdView:Ljava/lang/ref/WeakReference;

    .line 414
    return-void
.end method


# virtual methods
.method abstract cleanup()V
.end method

.method abstract execute()V
.end method
