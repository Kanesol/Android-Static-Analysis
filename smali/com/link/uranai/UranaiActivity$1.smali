.class Lcom/link/uranai/UranaiActivity$1;
.super Ljava/lang/Object;
.source "UranaiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/link/uranai/UranaiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/link/uranai/UranaiActivity;


# direct methods
.method constructor <init>(Lcom/link/uranai/UranaiActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/link/uranai/UranaiActivity$1;->this$0:Lcom/link/uranai/UranaiActivity;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/link/uranai/UranaiActivity$1;->this$0:Lcom/link/uranai/UranaiActivity;

    const-class v2, Lcom/link/uranai/Answer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/link/uranai/UranaiActivity$1;->this$0:Lcom/link/uranai/UranaiActivity;

    invoke-virtual {v1, v0}, Lcom/link/uranai/UranaiActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
