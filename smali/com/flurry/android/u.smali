.class final Lcom/flurry/android/u;
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

.field final c:Lcom/flurry/android/ba;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/ba;)V
    .locals 0
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
            "Lcom/flurry/android/ba;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/flurry/android/u;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/flurry/android/u;->b:Ljava/util/Map;

    .line 15
    iput-object p3, p0, Lcom/flurry/android/u;->c:Lcom/flurry/android/ba;

    .line 16
    return-void
.end method
