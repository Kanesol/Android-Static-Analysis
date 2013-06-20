.class public abstract Lcom/mopub/mobileads/BaseInterstitialAdapter;
.super Ljava/lang/Object;
.source "BaseInterstitialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;
    }
.end annotation


# static fields
.field private static final sInterstitialAdapterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

.field protected mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field protected mInvalidated:Z

.field protected mJsonParams:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->sInterstitialAdapterMap:Ljava/util/HashMap;

    .line 25
    sget-object v0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->sInterstitialAdapterMap:Ljava/util/HashMap;

    const-string v1, "mraid"

    const-string v2, "com.mopub.mobileads.MraidInterstitialAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->sInterstitialAdapterMap:Ljava/util/HashMap;

    const-string v1, "admob_full"

    const-string v2, "com.mopub.mobileads.GoogleAdMobInterstitialAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->sInterstitialAdapterMap:Ljava/util/HashMap;

    const-string v1, "millennial_full"

    const-string v2, "com.mopub.mobileads.MillennialInterstitialAdapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private static classForAdapterType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-static {p0}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->classStringForAdapterType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, className:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find a handler for this ad type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MoPub for Android does not support it at this time."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-object v2

    .line 83
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "class."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Make sure the project includes the adapter library for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from the extras folder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static classStringForAdapterType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 71
    sget-object v0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->sInterstitialAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getAdapterForType(Ljava/lang/String;)Lcom/mopub/mobileads/BaseInterstitialAdapter;
    .locals 8
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 54
    if-nez p0, :cond_0

    move-object v3, v4

    .line 66
    :goto_0
    return-object v3

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/mopub/mobileads/BaseInterstitialAdapter;->classForAdapterType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, adapterClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 60
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 61
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/BaseInterstitialAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v3, nativeAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;
    goto :goto_0

    .line 64
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #nativeAdapter:Lcom/mopub/mobileads/BaseInterstitialAdapter;
    :catch_0
    move-exception v2

    .line 65
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "MoPub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create native interstitial adapter for type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 66
    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;)V
    .locals 1
    .parameter "interstitial"
    .parameter "jsonParams"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 35
    iput-object p2, p0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->mJsonParams:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->mInvalidated:Z

    .line 37
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 41
    iput-object v0, p0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->mInvalidated:Z

    .line 43
    return-void
.end method

.method public isInvalidated()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->mInvalidated:Z

    return v0
.end method

.method public abstract loadInterstitial()V
.end method

.method public setAdapterListener(Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mopub/mobileads/BaseInterstitialAdapter;->mAdapterListener:Lcom/mopub/mobileads/BaseInterstitialAdapter$BaseInterstitialAdapterListener;

    .line 51
    return-void
.end method

.method public abstract showInterstitial()V
.end method
