.class final Lcom/flurry/android/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/content/Context;

.field final d:Lcom/flurry/android/AdUnit;

.field final e:Lcom/flurry/android/bb;

.field final f:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/flurry/android/AdUnit;",
            "Lcom/flurry/android/bb;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/flurry/android/ba;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/flurry/android/ba;->b:Ljava/util/Map;

    .line 20
    iput-object p3, p0, Lcom/flurry/android/ba;->c:Landroid/content/Context;

    .line 21
    iput-object p4, p0, Lcom/flurry/android/ba;->d:Lcom/flurry/android/AdUnit;

    .line 22
    iput-object p5, p0, Lcom/flurry/android/ba;->e:Lcom/flurry/android/bb;

    .line 23
    iput p6, p0, Lcom/flurry/android/ba;->f:I

    .line 24
    return-void
.end method
