.class Lcom/mopub/mobileads/MraidDisplayController;
.super Lcom/mopub/mobileads/MraidAbstractController;
.source "MraidDisplayController.java"


# static fields
.field private static final CLOSE_BUTTON_SIZE_DP:I = 0x32

.field private static final LOGTAG:Ljava/lang/String; = "MraidDisplayController"

.field private static final VIEWABILITY_TIMER_MILLIS:J = 0xbb8L


# instance fields
.field private mAdWantsCustomCloseButton:Z

.field private mCheckViewabilityTask:Ljava/lang/Runnable;

.field private mCloseButton:Landroid/widget/ImageView;

.field protected mDensity:F

.field private final mExpansionStyle:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewable:Z

.field private final mNativeCloseButtonStyle:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

.field private mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mOriginalRequestedOrientation:I

.field mPlaceholderView:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

.field private mViewIndexInParent:I

.field private mViewState:Lcom/mopub/mobileads/MraidView$ViewState;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;)V
    .locals 3
    .parameter "view"
    .parameter "expStyle"
    .parameter "buttonStyle"

    .prologue
    const/4 v1, -0x1

    .line 120
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MraidAbstractController;-><init>(Lcom/mopub/mobileads/MraidView;)V

    .line 43
    sget-object v2, Lcom/mopub/mobileads/MraidView$ViewState;->HIDDEN:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 61
    new-instance v2, Lcom/mopub/mobileads/MraidDisplayController$1;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidDisplayController$1;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    .line 74
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v2, Lcom/mopub/mobileads/MraidDisplayController$2;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidDisplayController$2;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenWidth:I

    .line 109
    iput v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenHeight:I

    .line 121
    iput-object p2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mExpansionStyle:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    .line 122
    iput-object p3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    .line 124
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, context:Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOriginalRequestedOrientation:I

    .line 129
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->initialize()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MraidDisplayController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mIsViewable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/MraidDisplayController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mIsViewable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MraidDisplayController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/MraidDisplayController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MraidDisplayController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MraidDisplayController;->onOrientationChanged(I)V

    return-void
.end method

.method private createExpansionViewContainer(Landroid/view/View;II)Landroid/view/ViewGroup;
    .locals 8
    .parameter "expansionContentView"
    .parameter "expandWidth"
    .parameter "expandHeight"

    .prologue
    const/4 v7, -0x1

    .line 308
    const/high16 v5, 0x4248

    iget v6, p0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 309
    .local v1, closeButtonSize:I
    if-ge p2, v1, :cond_0

    move p2, v1

    .line 310
    :cond_0
    if-ge p3, v1, :cond_1

    move p3, v1

    .line 312
    :cond_1
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 313
    .local v3, expansionLayout:Landroid/widget/RelativeLayout;
    const/16 v5, 0x65

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 315
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 316
    .local v2, dimmingView:Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 317
    new-instance v5, Lcom/mopub/mobileads/MraidDisplayController$4;

    invoke-direct {v5, p0}, Lcom/mopub/mobileads/MraidDisplayController$4;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 323
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, adContainerLayout:Landroid/widget/FrameLayout;
    const/16 v5, 0x66

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 329
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 333
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 334
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-object v3
.end method

.method private getDisplayRotation()I
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 172
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    return v1
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 133
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->LOADING:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 134
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->initializeScreenMetrics()V

    .line 135
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->initializeViewabilityTimer()V

    .line 136
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method private initializeScreenMetrics()V
    .locals 19

    .prologue
    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 142
    .local v4, context:Landroid/content/Context;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    .local v6, metrics:Landroid/util/DisplayMetrics;
    const-string v13, "window"

    invoke-virtual {v4, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 144
    .local v12, wm:Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    iget v13, v6, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    .line 147
    const/4 v8, 0x0

    .local v8, statusBarHeight:I
    const/4 v9, 0x0

    .line 148
    .local v9, titleBarHeight:I
    instance-of v13, v4, Landroid/app/Activity;

    if-eqz v13, :cond_0

    move-object v2, v4

    .line 149
    check-cast v2, Landroid/app/Activity;

    .line 150
    .local v2, activity:Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 151
    .local v11, window:Landroid/view/Window;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 153
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 154
    const v13, 0x1020002

    invoke-virtual {v11, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    .line 155
    .local v3, contentViewTop:I
    sub-int v9, v3, v8

    .line 158
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #contentViewTop:I
    .end local v7           #rect:Landroid/graphics/Rect;
    .end local v11           #window:Landroid/view/Window;
    :cond_0
    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 159
    .local v10, widthPixels:I
    iget v13, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v13, v8

    sub-int v5, v13, v9

    .line 160
    .local v5, heightPixels:I
    int-to-double v13, v10

    const-wide/high16 v15, 0x4064

    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    mul-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenWidth:I

    .line 161
    int-to-double v13, v5

    const-wide/high16 v15, 0x4064

    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    mul-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenHeight:I

    .line 162
    return-void
.end method

.method private initializeViewabilityTimer()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 3
    .parameter "currentRotation"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->initializeScreenMetrics()V

    .line 177
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/mopub/mobileads/MraidScreenSizeProperty;->createWithSize(II)Lcom/mopub/mobileads/MraidScreenSizeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    .line 179
    return-void
.end method

.method private resetViewToDefaultState()V
    .locals 5

    .prologue
    .line 224
    iget-object v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 226
    .local v0, adContainerLayout:Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 229
    .local v1, expansionLayout:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    .line 230
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 231
    iget-object v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/MraidView;->requestLayout()V

    .line 235
    iget-object v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 236
    .local v2, parent:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v3

    iget v4, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewIndexInParent:I

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 237
    iget-object v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 239
    return-void
.end method

.method private setOrientationLockEnabled(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 341
    .local v2, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 343
    .local v1, activity:Landroid/app/Activity;
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 344
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v4, v5, Landroid/content/res/Configuration;->orientation:I

    .line 347
    .local v4, requestedOrientation:I
    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 351
    .end local v4           #requestedOrientation:I
    :goto_1
    return-void

    .line 344
    :cond_0
    iget v4, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOriginalRequestedOrientation:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v3

    .line 349
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v5, "MraidDisplayController"

    const-string v6, "Unable to modify device orientation."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private swapViewWithPlaceholderView()V
    .locals 7

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 290
    .local v2, parent:Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 304
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    .line 295
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 296
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 297
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 300
    :cond_1
    iput v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewIndexInParent:I

    .line 301
    iget-object v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/MraidView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/mobileads/MraidView;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 303
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 296
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected checkViewable()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method protected close()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->EXPANDED:Lcom/mopub/mobileads/MraidView$ViewState;

    if-ne v0, v1, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->resetViewToDefaultState()V

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MraidDisplayController;->setOrientationLockEnabled(Z)V

    .line 210
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->DEFAULT:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 211
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v1}, Lcom/mopub/mobileads/MraidStateProperty;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    .line 218
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getOnCloseListener()Lcom/mopub/mobileads/MraidView$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->getOnCloseListener()Lcom/mopub/mobileads/MraidView$OnCloseListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-interface {v0, v1, v2}, Lcom/mopub/mobileads/MraidView$OnCloseListener;->onClose(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ViewState;)V

    .line 221
    :cond_1
    return-void

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->DEFAULT:Lcom/mopub/mobileads/MraidView$ViewState;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setVisibility(I)V

    .line 214
    sget-object v0, Lcom/mopub/mobileads/MraidView$ViewState;->HIDDEN:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 215
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v1}, Lcom/mopub/mobileads/MraidStateProperty;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mOrientationBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    throw v0
.end method

.method protected expand(Ljava/lang/String;IIZZ)V
    .locals 8
    .parameter "url"
    .parameter "width"
    .parameter "height"
    .parameter "shouldUseCustomClose"
    .parameter "shouldLockOrientation"

    .prologue
    const/4 v7, -0x1

    .line 243
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mExpansionStyle:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v3, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    if-ne v2, v3, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    const-string v3, "expand"

    const-string v4, "URL passed to expand() was invalid."

    invoke-virtual {v2, v3, v4}, Lcom/mopub/mobileads/MraidView;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    .line 255
    invoke-virtual {p0, p4}, Lcom/mopub/mobileads/MraidDisplayController;->useCustomClose(Z)V

    .line 256
    invoke-direct {p0, p5}, Lcom/mopub/mobileads/MraidDisplayController;->setOrientationLockEnabled(Z)V

    .line 257
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidDisplayController;->swapViewWithPlaceholderView()V

    .line 259
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    .line 260
    .local v0, expansionContentView:Landroid/view/View;
    if-eqz p1, :cond_3

    .line 261
    new-instance v2, Lcom/mopub/mobileads/MraidView;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v5, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v6, Lcom/mopub/mobileads/MraidView$PlacementType;->INLINE:Lcom/mopub/mobileads/MraidView$PlacementType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mopub/mobileads/MraidView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)V

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

    .line 263
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

    new-instance v3, Lcom/mopub/mobileads/MraidDisplayController$3;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/MraidDisplayController$3;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/MraidView;->setOnCloseListener(Lcom/mopub/mobileads/MraidView$OnCloseListener;)V

    .line 268
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v2, p1}, Lcom/mopub/mobileads/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mTwoPartExpansionView:Lcom/mopub/mobileads/MraidView;

    .line 272
    :cond_3
    int-to-float v2, p2

    iget v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p3

    iget v4, p0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v0, v2, v3}, Lcom/mopub/mobileads/MraidDisplayController;->createExpansionViewContainer(Landroid/view/View;II)Landroid/view/ViewGroup;

    move-result-object v1

    .line 274
    .local v1, expansionViewContainer:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v3, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    if-eq v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v3, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    if-eq v2, v3, :cond_5

    .line 280
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    .line 283
    :cond_5
    sget-object v2, Lcom/mopub/mobileads/MraidView$ViewState;->EXPANDED:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 284
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v3}, Lcom/mopub/mobileads/MraidStateProperty;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/MraidStateProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    .line 285
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getOnExpandListener()Lcom/mopub/mobileads/MraidView$OnExpandListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/MraidView;->getOnExpandListener()Lcom/mopub/mobileads/MraidView$OnExpandListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mopub/mobileads/MraidView$OnExpandListener;->onExpand(Lcom/mopub/mobileads/MraidView;)V

    goto/16 :goto_0
.end method

.method protected initializeJavaScriptState()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mopub/mobileads/MraidProperty;>;"
    iget v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/mopub/mobileads/MraidScreenSizeProperty;->createWithSize(II)Lcom/mopub/mobileads/MraidScreenSizeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-boolean v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mIsViewable:Z

    invoke-static {v1}, Lcom/mopub/mobileads/MraidViewableProperty;->createWithViewable(Z)Lcom/mopub/mobileads/MraidViewableProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperties(Ljava/util/ArrayList;)V

    .line 198
    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->DEFAULT:Lcom/mopub/mobileads/MraidView$ViewState;

    iput-object v1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    .line 199
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    invoke-static {v2}, Lcom/mopub/mobileads/MraidStateProperty;->createWithViewState(Lcom/mopub/mobileads/MraidView$ViewState;)Lcom/mopub/mobileads/MraidStateProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MraidView;->fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V

    .line 200
    return-void
.end method

.method protected isExpanded()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mopub/mobileads/MraidDisplayController;->mViewState:Lcom/mopub/mobileads/MraidView$ViewState;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ViewState;->EXPANDED:Lcom/mopub/mobileads/MraidView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setNativeCloseButtonEnabled(Z)V
    .locals 10
    .parameter "enabled"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 354
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    if-nez v5, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 359
    .local v0, adContainerLayout:Landroid/widget/FrameLayout;
    if-eqz p1, :cond_3

    .line 360
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    if-nez v5, :cond_2

    .line 361
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 362
    .local v3, states:Landroid/graphics/drawable/StateListDrawable;
    new-array v5, v9, [I

    const v6, -0x10100a7

    aput v6, v5, v8

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/mobileads/MraidView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mopub/mobileads/R$drawable;->close_button_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 364
    new-array v5, v9, [I

    const v6, 0x10100a7

    aput v6, v5, v8

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/mobileads/MraidView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mopub/mobileads/R$drawable;->close_button_pressed:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 366
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    .line 367
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/mopub/mobileads/MraidDisplayController$5;

    invoke-direct {v6, p0}, Lcom/mopub/mobileads/MraidDisplayController$5;-><init>(Lcom/mopub/mobileads/MraidDisplayController;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .end local v3           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    const/high16 v5, 0x4248

    iget v6, p0, Lcom/mopub/mobileads/MraidDisplayController;->mDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 377
    .local v2, buttonSize:I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x5

    invoke-direct {v1, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 379
    .local v1, buttonLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    .end local v1           #buttonLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v2           #buttonSize:I
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v4

    .line 385
    .local v4, view:Lcom/mopub/mobileads/MraidView;
    invoke-virtual {v4}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 386
    invoke-virtual {v4}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v5

    invoke-interface {v5, v4, p1}, Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/mopub/mobileads/MraidView;Z)V

    goto/16 :goto_0

    .line 381
    .end local v4           #view:Lcom/mopub/mobileads/MraidView;
    :cond_3
    iget-object v5, p0, Lcom/mopub/mobileads/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected useCustomClose(Z)V
    .locals 3
    .parameter "shouldUseCustomCloseButton"

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/mopub/mobileads/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    .line 393
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidDisplayController;->getView()Lcom/mopub/mobileads/MraidView;

    move-result-object v1

    .line 394
    .local v1, view:Lcom/mopub/mobileads/MraidView;
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 395
    .local v0, enabled:Z
    :goto_0
    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView;->getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/mopub/mobileads/MraidView;Z)V

    .line 398
    :cond_0
    return-void

    .line 394
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
