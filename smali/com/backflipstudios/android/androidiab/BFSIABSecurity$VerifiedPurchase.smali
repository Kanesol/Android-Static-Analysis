.class public Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;
.super Ljava/lang/Object;
.source "BFSIABSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSIABSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedPurchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "purchaseState"
    .parameter "notificationId"
    .parameter "productId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->purchaseState:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    .line 68
    iput-object p2, p0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 71
    iput-wide p5, p0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->purchaseTime:J

    .line 72
    iput-object p7, p0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 73
    return-void
.end method
