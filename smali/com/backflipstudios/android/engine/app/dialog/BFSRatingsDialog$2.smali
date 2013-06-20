.class final Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$2;
.super Ljava/lang/Object;
.source "BFSRatingsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog;->showRateDialog(Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 99
    return-void
.end method
