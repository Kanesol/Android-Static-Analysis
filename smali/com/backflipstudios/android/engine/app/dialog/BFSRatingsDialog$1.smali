.class final Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;
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
.field final synthetic val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

.field final synthetic val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$storeFront:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences$Editor;Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;Lcom/backflipstudios/android/engine/app/BFSEngineApplication;Lcom/backflipstudios/android/engine/app/BFSEngineActivity;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p2, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$storeFront:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    iput-object p3, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    iput-object p4, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    iput-object p5, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/high16 v4, 0x1000

    .line 74
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_rated_yes"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$storeFront:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    sget-object v2, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->Amazon:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    if-ne v1, v2, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    invoke-virtual {v3}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-virtual {v1, v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 87
    return-void

    .line 82
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    invoke-virtual {v3}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;->val$activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    invoke-virtual {v1, v0}, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
