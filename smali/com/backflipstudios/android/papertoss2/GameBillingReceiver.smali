.class public Lcom/backflipstudios/android/papertoss2/GameBillingReceiver;
.super Lcom/backflipstudios/android/androidiab/BFSBillingReceiver;
.source "GameBillingReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/backflipstudios/android/androidiab/BFSBillingReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getServiceClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/backflipstudios/android/papertoss2/GameBillingService;

    return-object v0
.end method
