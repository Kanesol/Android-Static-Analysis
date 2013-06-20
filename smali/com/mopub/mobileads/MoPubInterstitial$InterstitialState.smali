.class final enum Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
.super Ljava/lang/Enum;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InterstitialState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

.field public static final enum HTML_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

.field public static final enum NATIVE_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

.field public static final enum NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    const-string v1, "HTML_AD_READY"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    const-string v1, "NATIVE_AD_READY"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->HTML_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NATIVE_AD_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->NOT_READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->$VALUES:[Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->$VALUES:[Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-object v0
.end method
