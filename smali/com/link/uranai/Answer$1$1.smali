.class Lcom/link/uranai/Answer$1$1;
.super Ljava/lang/Object;
.source "Answer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/link/uranai/Answer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/link/uranai/Answer$1;


# direct methods
.method constructor <init>(Lcom/link/uranai/Answer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/link/uranai/Answer$1$1;->this$1:Lcom/link/uranai/Answer$1;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 75
    iget-object v8, p0, Lcom/link/uranai/Answer$1$1;->this$1:Lcom/link/uranai/Answer$1;

    #getter for: Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;
    invoke-static {v8}, Lcom/link/uranai/Answer$1;->access$0(Lcom/link/uranai/Answer$1;)Lcom/link/uranai/Answer;

    move-result-object v8

    const v9, 0x7f050003

    invoke-virtual {v8, v9}, Lcom/link/uranai/Answer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 76
    .local v7, textView:Landroid/widget/TextView;
    const-string v2, "\u30a2\u30c9\u30ec\u30b9\u5e33\u306b\u4f55\u3082\u767b\u9332\u3055\u308c\u3066\u306a\u3044\u3088\uff5e"

    .line 77
    .local v2, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/link/uranai/Answer$1$1;->this$1:Lcom/link/uranai/Answer$1;

    #getter for: Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;
    invoke-static {v8}, Lcom/link/uranai/Answer$1;->access$0(Lcom/link/uranai/Answer$1;)Lcom/link/uranai/Answer;

    move-result-object v8

    #getter for: Lcom/link/uranai/Answer;->mapList:Ljava/util/List;
    invoke-static {v8}, Lcom/link/uranai/Answer;->access$3(Lcom/link/uranai/Answer;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 78
    iget-object v8, p0, Lcom/link/uranai/Answer$1$1;->this$1:Lcom/link/uranai/Answer$1;

    #getter for: Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;
    invoke-static {v8}, Lcom/link/uranai/Answer$1;->access$0(Lcom/link/uranai/Answer$1;)Lcom/link/uranai/Answer;

    move-result-object v8

    #getter for: Lcom/link/uranai/Answer;->mapList:Ljava/util/List;
    invoke-static {v8}, Lcom/link/uranai/Answer;->access$3(Lcom/link/uranai/Answer;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 79
    .local v5, size:I
    if-eqz v5, :cond_0

    .line 81
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 82
    .local v4, ran:Ljava/util/Random;
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 83
    .local v3, r:I
    iget-object v8, p0, Lcom/link/uranai/Answer$1$1;->this$1:Lcom/link/uranai/Answer$1;

    #getter for: Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;
    invoke-static {v8}, Lcom/link/uranai/Answer$1;->access$0(Lcom/link/uranai/Answer$1;)Lcom/link/uranai/Answer;

    move-result-object v8

    #getter for: Lcom/link/uranai/Answer;->mapList:Ljava/util/List;
    invoke-static {v8}, Lcom/link/uranai/Answer;->access$3(Lcom/link/uranai/Answer;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 86
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "telNo"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 89
    .local v6, telNo:Ljava/lang/String;
    const-string v8, "mailAddress"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, mailAddress:Ljava/lang/String;
    const-string v8, "name"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #name:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 93
    .restart local v2       #name:Ljava/lang/String;
    iget-object v8, p0, Lcom/link/uranai/Answer$1$1;->this$1:Lcom/link/uranai/Answer$1;

    #getter for: Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;
    invoke-static {v8}, Lcom/link/uranai/Answer$1;->access$0(Lcom/link/uranai/Answer$1;)Lcom/link/uranai/Answer;

    move-result-object v8

    #calls: Lcom/link/uranai/Answer;->reachTelNo(Ljava/lang/String;)V
    invoke-static {v8, v6}, Lcom/link/uranai/Answer;->access$4(Lcom/link/uranai/Answer;Ljava/lang/String;)V

    .line 96
    .end local v0           #mailAddress:Ljava/lang/String;
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #r:I
    .end local v4           #ran:Ljava/util/Random;
    .end local v5           #size:I
    .end local v6           #telNo:Ljava/lang/String;
    :cond_0
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v8, p0, Lcom/link/uranai/Answer$1$1;->this$1:Lcom/link/uranai/Answer$1;

    #getter for: Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;
    invoke-static {v8}, Lcom/link/uranai/Answer$1;->access$0(Lcom/link/uranai/Answer$1;)Lcom/link/uranai/Answer;

    move-result-object v8

    #calls: Lcom/link/uranai/Answer;->closeProgressDialog()V
    invoke-static {v8}, Lcom/link/uranai/Answer;->access$5(Lcom/link/uranai/Answer;)V

    .line 98
    return-void
.end method
