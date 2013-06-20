.class Lcom/mopub/mobileads/MraidDisplayController$5;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mopub/mobileads/MraidDisplayController$5;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController$5;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidDisplayController;->close()V

    .line 372
    return-void
.end method
