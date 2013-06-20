.class Lcom/amazon/inapp/purchasing/PurchaseRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/inapp/purchasing/PurchaseRequest;->getRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/PurchaseRequest;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/PurchaseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchaseRequest$1;->this$0:Lcom/amazon/inapp/purchasing/PurchaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/PurchaseRequest$1;->this$0:Lcom/amazon/inapp/purchasing/PurchaseRequest;

    #getter for: Lcom/amazon/inapp/purchasing/PurchaseRequest;->_sku:Ljava/lang/String;
    invoke-static {v1}, Lcom/amazon/inapp/purchasing/PurchaseRequest;->access$000(Lcom/amazon/inapp/purchasing/PurchaseRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/PurchaseRequest$1;->this$0:Lcom/amazon/inapp/purchasing/PurchaseRequest;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/inapp/purchasing/RequestHandler;->sendPurchaseRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
