.class Lcom/link/uranai/Answer$2;
.super Ljava/lang/Object;
.source "Answer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/link/uranai/Answer;->reachTelNo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/link/uranai/Answer;

.field private final synthetic val$telNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/link/uranai/Answer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/link/uranai/Answer$2;->this$0:Lcom/link/uranai/Answer;

    iput-object p2, p0, Lcom/link/uranai/Answer$2;->val$telNo:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 131
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tel:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/link/uranai/Answer$2;->val$telNo:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/link/uranai/util/StringUtil;->addString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/link/uranai/Answer$2;->this$0:Lcom/link/uranai/Answer;

    invoke-virtual {v2, v0}, Lcom/link/uranai/Answer;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method
