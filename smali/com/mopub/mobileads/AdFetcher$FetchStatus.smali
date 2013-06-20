.class final enum Lcom/mopub/mobileads/AdFetcher$FetchStatus;
.super Ljava/lang/Enum;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FetchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/AdFetcher$FetchStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/AdFetcher$FetchStatus;

.field public static final enum CLEAR_AD_TYPE:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

.field public static final enum FETCH_CANCELLED:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

.field public static final enum INVALID_SERVER_RESPONSE_BACKOFF:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

.field public static final enum INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

.field public static final enum NOT_SET:Lcom/mopub/mobileads/AdFetcher$FetchStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    const-string v1, "NOT_SET"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->NOT_SET:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    .line 84
    new-instance v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    const-string v1, "FETCH_CANCELLED"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->FETCH_CANCELLED:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    .line 85
    new-instance v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    const-string v1, "INVALID_SERVER_RESPONSE_BACKOFF"

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    .line 86
    new-instance v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    const-string v1, "INVALID_SERVER_RESPONSE_NOBACKOFF"

    invoke-direct {v0, v1, v5}, Lcom/mopub/mobileads/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    .line 87
    new-instance v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    const-string v1, "CLEAR_AD_TYPE"

    invoke-direct {v0, v1, v6}, Lcom/mopub/mobileads/AdFetcher$FetchStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->CLEAR_AD_TYPE:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    sget-object v1, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->NOT_SET:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->FETCH_CANCELLED:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_BACKOFF:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->INVALID_SERVER_RESPONSE_NOBACKOFF:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->CLEAR_AD_TYPE:Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->$VALUES:[Lcom/mopub/mobileads/AdFetcher$FetchStatus;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher$FetchStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    const-class v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/AdFetcher$FetchStatus;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/mopub/mobileads/AdFetcher$FetchStatus;->$VALUES:[Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/AdFetcher$FetchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/AdFetcher$FetchStatus;

    return-object v0
.end method
