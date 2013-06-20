.class Lcom/mopub/mobileads/MraidStateProperty;
.super Lcom/mopub/mobileads/MraidProperty;
.source "MraidProperty.java"


# instance fields
.field private final mViewState:Lcom/mopub/mobileads/MraidView$ViewState;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidView$ViewState;)V
    .locals 0
    .parameter "viewState"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidProperty;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/mopub/mobileads/MraidStateProperty;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 61
    return-void
.end method

.method public static createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/MraidStateProperty;
    .locals 1
    .parameter "viewState"

    .prologue
    .line 64
    new-instance v0, Lcom/mopub/mobileads/MraidStateProperty;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MraidStateProperty;-><init>(Lcom/mopub/mobileads/MraidView$ViewState;)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MraidStateProperty;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView$ViewState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
