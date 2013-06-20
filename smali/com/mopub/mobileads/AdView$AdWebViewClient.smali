.class Lcom/mopub/mobileads/AdView$AdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/AdView;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/AdView;Lcom/mopub/mobileads/AdView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView$AdWebViewClient;-><init>(Lcom/mopub/mobileads/AdView;)V

    return-void
.end method

.method private urlWithClickTrackingRedirect(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "adView"
    .parameter "url"

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdView;->getClickthroughUrl()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, clickthroughUrl:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 248
    .end local p2
    :goto_0
    return-object p2

    .line 247
    .restart local p2
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, encodedUrl:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 234
    move-object v0, p1

    check-cast v0, Lcom/mopub/mobileads/AdView;

    .line 235
    .local v0, adView:Lcom/mopub/mobileads/AdView;
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->getRedirectUrl()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, redirectUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-direct {p0, v0, p2}, Lcom/mopub/mobileads/AdView$AdWebViewClient;->urlWithClickTrackingRedirect(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 238
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 239
    iget-object v2, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    #calls: Lcom/mopub/mobileads/AdView;->showBrowserForUrl(Ljava/lang/String;)V
    invoke-static {v2, p2}, Lcom/mopub/mobileads/AdView;->access$500(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 178
    move-object v1, p1

    check-cast v1, Lcom/mopub/mobileads/AdView;

    .line 181
    .local v1, adView:Lcom/mopub/mobileads/AdView;
    const-string v9, "mopub://"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 182
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 183
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, host:Ljava/lang/String;
    const-string v9, "finishLoad"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    #calls: Lcom/mopub/mobileads/AdView;->adDidLoad()V
    invoke-static {v1}, Lcom/mopub/mobileads/AdView;->access$100(Lcom/mopub/mobileads/AdView;)V

    .line 228
    .end local v3           #host:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return v8

    .line 186
    .restart local v3       #host:Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_1
    const-string v9, "close"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    #calls: Lcom/mopub/mobileads/AdView;->adDidClose()V
    invoke-static {v1}, Lcom/mopub/mobileads/AdView;->access$300(Lcom/mopub/mobileads/AdView;)V

    goto :goto_0

    .line 187
    :cond_2
    const-string v9, "failLoad"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdView;->loadFailUrl()V

    goto :goto_0

    .line 188
    :cond_3
    const-string v9, "custom"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    #calls: Lcom/mopub/mobileads/AdView;->handleCustomIntentFromUri(Landroid/net/Uri;)V
    invoke-static {v1, v7}, Lcom/mopub/mobileads/AdView;->access$400(Lcom/mopub/mobileads/AdView;Landroid/net/Uri;)V

    goto :goto_0

    .line 192
    .end local v3           #host:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_4
    const-string v9, "tel:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "voicemail:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "sms:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "mailto:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "geo:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "google.streetview:"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 195
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 196
    .local v4, intent:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    :try_start_0
    iget-object v9, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v9}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    iget-object v9, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v9}, Lcom/mopub/mobileads/AdView;->registerClick()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "MoPub"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not handle intent with URI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Is this intent unsupported on your phone?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    const-string v9, "market://"

    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 209
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v9}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 211
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    move v5, v8

    .line 215
    .local v5, isIntentSafe:Z
    :cond_7
    if-nez v5, :cond_8

    .line 216
    const-string v9, "MoPub"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not handle market action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Perhaps you\'re running in the emulator, which does not have "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "the Android Market?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 223
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #isIntentSafe:Z
    .end local v6           #packageManager:Landroid/content/pm/PackageManager;
    :cond_8
    invoke-direct {p0, v1, p2}, Lcom/mopub/mobileads/AdView$AdWebViewClient;->urlWithClickTrackingRedirect(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 224
    const-string v9, "MoPub"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ad clicked. Click URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v9, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    iget-object v9, v9, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v9}, Lcom/mopub/mobileads/MoPubView;->adClicked()V

    .line 227
    iget-object v9, p0, Lcom/mopub/mobileads/AdView$AdWebViewClient;->this$0:Lcom/mopub/mobileads/AdView;

    #calls: Lcom/mopub/mobileads/AdView;->showBrowserForUrl(Ljava/lang/String;)V
    invoke-static {v9, p2}, Lcom/mopub/mobileads/AdView;->access$500(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
