.class Lcom/mopub/mobileads/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/BaseActivity;->showInterstitialCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/BaseActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mopub/mobileads/BaseActivity$1;->this$0:Lcom/mopub/mobileads/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/BaseActivity$1;->this$0:Lcom/mopub/mobileads/BaseActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseActivity;->finish()V

    .line 52
    return-void
.end method
