.class Lcom/mopub/mobileads/MraidDisplayController$3;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Lcom/mopub/mobileads/MraidView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidDisplayController;->expand(Ljava/lang/String;IIZZ)V
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
    .line 263
    iput-object p1, p0, Lcom/mopub/mobileads/MraidDisplayController$3;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ViewState;)V
    .locals 1
    .parameter "view"
    .parameter "newViewState"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController$3;->this$0:Lcom/mopub/mobileads/MraidDisplayController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidDisplayController;->close()V

    .line 266
    return-void
.end method
