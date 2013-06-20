.class public Lcom/backflipstudios/android/androidiab/BFSBillingService$LocalBinder;
.super Landroid/os/Binder;
.source "BFSBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$LocalBinder;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/backflipstudios/android/androidiab/BFSBillingService;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService$LocalBinder;->this$0:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    return-object v0
.end method
