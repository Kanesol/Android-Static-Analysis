.class public Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog;
.super Ljava/lang/Object;
.source "BFSRatingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;
    }
.end annotation


# static fields
.field private static final MAX_PROMPT_COUNT:I = 0x3

.field private static final PROMPT_COUNT:Ljava/lang/String; = "pref_ratings_prompt_count"

.field private static final RATED_YES:Ljava/lang/String; = "pref_rated_yes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static showRateDialog(Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;)Z
    .locals 19
    .parameter "storeFront"

    .prologue
    .line 34
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;

    .line 35
    .local v5, app:Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
    invoke-virtual {v5}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getApplicationPreferences()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 36
    .local v12, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_rated_yes"

    const/4 v4, 0x0

    invoke-interface {v12, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 37
    const/4 v2, 0x0

    .line 109
    :goto_0
    return v2

    .line 39
    :cond_0
    const-string v2, "pref_ratings_prompt_count"

    const/4 v4, 0x0

    invoke-interface {v12, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1

    .line 40
    const/4 v2, 0x0

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/backflipstudios/android/engine/app/BFSEngineActivity;

    .line 44
    .local v6, activity:Lcom/backflipstudios/android/engine/app/BFSEngineActivity;
    if-nez v6, :cond_2

    .line 45
    const-string v2, "BFSRatingsDialog"

    const-string v4, "Error: BFSRuntimeStore.getMainActivityInstance() is NULL.  Cannot show ratings dialog."

    invoke-static {v2, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x0

    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 50
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_ratings_prompt_count"

    const-string v4, "pref_ratings_prompt_count"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 55
    .local v7, dialog:Landroid/app/Dialog;
    sget v2, Lcom/backflipstudios/android/engine/R$string;->rate_title:I

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 57
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v9, layout:Landroid/widget/LinearLayout;
    const/16 v2, 0x14

    const/16 v4, 0x14

    const/16 v17, 0x14

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v2, v4, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v13, tv:Landroid/widget/TextView;
    sget v2, Lcom/backflipstudios/android/engine/R$string;->rate_message:I

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const/4 v2, 0x2

    const/high16 v4, 0x41b0

    invoke-virtual {v13, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v14, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v14, tvparams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x32

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v2, v4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {v9, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 69
    .local v15, yesButton:Landroid/widget/Button;
    sget v2, Lcom/backflipstudios/android/engine/R$string;->button_yes:I

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setText(I)V

    .line 70
    const/4 v2, 0x2

    const/high16 v4, 0x41b0

    invoke-virtual {v15, v2, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 71
    new-instance v2, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$1;-><init>(Landroid/content/SharedPreferences$Editor;Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;Lcom/backflipstudios/android/engine/app/BFSEngineApplication;Lcom/backflipstudios/android/engine/app/BFSEngineActivity;Landroid/app/Dialog;)V

    invoke-virtual {v15, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v16, yesparams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 93
    .local v10, noButton:Landroid/widget/Button;
    sget v2, Lcom/backflipstudios/android/engine/R$string;->button_no:I

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setText(I)V

    .line 94
    const/4 v2, 0x2

    const/high16 v4, 0x41b0

    invoke-virtual {v10, v2, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 95
    new-instance v2, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$2;

    invoke-direct {v2, v7}, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v11, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v11, noparams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x2

    invoke-direct {v8, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 106
    .local v8, dialogparams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v9, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 109
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
