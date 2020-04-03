.class public Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;
.super Landroid/widget/TextView;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$1;,
        Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;,
        Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$3;,
        Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;
    }
.end annotation


# static fields
.field private static final AUTOHIDE_THRESHOLD_KILOBITS:J = 0xaL

.field private static final AUTOHIDE_THRESHOLD_KILOBYTES:J = 0x8L

.field private static final AUTOHIDE_THRESHOLD_MEGABITS:J = 0x64L

.field private static final AUTOHIDE_THRESHOLD_MEGABYTES:J = 0x50L

.field private static final MESSAGE_TYPE_PERIODIC_REFRESH:I = 0x0

.field private static final MESSAGE_TYPE_UPDATE_VIEW:I = 0x1

.field private static final MODE_DISABLED:I = 0x0

.field private static final MODE_DOWNSTREAM_ONLY:I = 0x2

.field private static final MODE_UPSTREAM_AND_DOWNSTREAM:I = 0x3

.field private static final MODE_UPSTREAM_ONLY:I = 0x1

.field private static final REFRESH_INTERVAL:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NetworkTraffic"

.field private static final UNITS_KILOBITS:I = 0x0

.field private static final UNITS_KILOBYTES:I = 0x2

.field private static final UNITS_MEGABITS:I = 0x1

.field private static final UNITS_MEGABYTES:I = 0x3


# instance fields
.field private mAutoHide:Z

.field private mAutoHideThreshold:J

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconTint:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRxBytesTotal:J

.field private mLastTxBytesTotal:J

.field private mLastUpdateTime:J

.field private mMode:I

.field private mNetworkTrafficIsVisible:Z

.field private mObserver:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;

.field private mRxKbps:J

.field private mShowUnits:Z

.field private mTextSizeMulti:I

.field private mTextSizeSingle:I

.field private mTrafficHandler:Landroid/os/Handler;

.field private mTxKbps:J

.field private mUnits:I

.field private mVisibilityReceiver:Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$VisibilityReceiver;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mAutoHide:Z

    return v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    return-wide v0
.end method

.method static synthetic -get10(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTextSizeMulti:I

    return v0
.end method

.method static synthetic -get11(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTextSizeSingle:I

    return v0
.end method

.method static synthetic -get12(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get13(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTxKbps:J

    return-wide v0
.end method

.method static synthetic -get14(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mUnits:I

    return v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mLastRxBytesTotal:J

    return-wide v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mLastTxBytesTotal:J

    return-wide v0
.end method

.method static synthetic -get5(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic -get6(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mMode:I

    return v0
.end method

.method static synthetic -get7(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    return v0
.end method

.method static synthetic -get8(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J
    .locals 2

    iget-wide v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mRxKbps:J

    return-wide v0
.end method

.method static synthetic -get9(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mShowUnits:Z

    return v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mLastRxBytesTotal:J

    return-wide p1
.end method

.method static synthetic -set1(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mLastTxBytesTotal:J

    return-wide p1
.end method

.method static synthetic -set2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    return p1
.end method

.method static synthetic -set4(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mRxKbps:J

    return-wide p1
.end method

.method static synthetic -set5(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J
    .locals 1

    iput-wide p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTxKbps:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Z
    .locals 1

    invoke-direct {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->isConnectionAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->updateSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->updateViewState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mMode:I

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mIconTint:I

    .line 109
    new-instance v1, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$1;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$1;-><init>(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)V

    .line 108
    iput-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mVisibilityReceiver:Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$VisibilityReceiver;

    .line 139
    new-instance v1, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;-><init>(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)V

    iput-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    .line 238
    new-instance v1, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$3;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$3;-><init>(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)V

    iput-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    invoke-virtual {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "resources":Landroid/content/res/Resources;
    const/high16 v1, 0x3f080000    # 0.53125f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTextSizeSingle:I

    .line 101
    const v1, 0x3f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTextSizeMulti:I

    .line 103
    iput-boolean v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mNetworkTrafficIsVisible:Z

    .line 105
    new-instance v1, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;

    iget-object v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;-><init>(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mObserver:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;

    .line 96
    return-void
.end method

.method private clearHandlerCallbacks()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    return-void
.end method

.method private isConnectionAvailable()Z
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 282
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 286
    iget-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "network_traffic_mode"

    .line 288
    invoke-static {v0, v1, v3, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mMode:I

    .line 291
    const-string/jumbo v1, "network_traffic_autohide"

    .line 290
    invoke-static {v0, v1, v3, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mAutoHide:Z

    .line 293
    const-string/jumbo v1, "network_traffic_units"

    .line 292
    invoke-static {v0, v1, v2, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mUnits:I

    .line 296
    iget v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mUnits:I

    packed-switch v1, :pswitch_data_0

    .line 310
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    .line 315
    :goto_1
    const-string/jumbo v1, "network_traffic_show_units"

    .line 314
    invoke-static {v0, v1, v2, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_2
    iput-boolean v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mShowUnits:Z

    .line 318
    iget v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mMode:I

    if-eqz v1, :cond_0

    .line 319
    invoke-direct {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->updateTrafficDrawable()V

    .line 321
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->updateViewState()V

    .line 285
    return-void

    :cond_1
    move v1, v3

    .line 290
    goto :goto_0

    .line 298
    :pswitch_0
    const-wide/16 v4, 0xa

    iput-wide v4, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    goto :goto_1

    .line 301
    :pswitch_1
    const-wide/16 v4, 0x64

    iput-wide v4, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    goto :goto_1

    .line 304
    :pswitch_2
    const-wide/16 v4, 0x8

    iput-wide v4, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    goto :goto_1

    .line 307
    :pswitch_3
    const-wide/16 v4, 0x50

    iput-wide v4, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mAutoHideThreshold:J

    goto :goto_1

    :cond_2
    move v2, v3

    .line 314
    goto :goto_2

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateTrafficDrawable()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 335
    iget v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 336
    const v0, 0x3f02000c

    .line 344
    .local v0, "drawableResId":I
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 345
    iget-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v1, v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-direct {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->updateTrafficDrawableColor()V

    .line 333
    return-void

    .line 337
    .end local v0    # "drawableResId":I
    :cond_0
    iget v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 338
    const v0, 0x3f02000b

    .restart local v0    # "drawableResId":I
    goto :goto_0

    .line 339
    .end local v0    # "drawableResId":I
    :cond_1
    iget v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 340
    const v0, 0x3f02000a

    .restart local v0    # "drawableResId":I
    goto :goto_0

    .line 342
    .end local v0    # "drawableResId":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "drawableResId":I
    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 344
    goto :goto_1
.end method

.method private updateTrafficDrawableColor()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mIconTint:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 353
    :cond_0
    iget v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mIconTint:I

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->setTextColor(I)V

    .line 349
    return-void
.end method

.method private updateViewState()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mTrafficHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 123
    invoke-static {p0}, Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem;->findManager(Landroid/view/View;)Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$Manager;

    move-result-object v0

    .line 124
    .local v0, "manager":Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$Manager;
    iget-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mVisibilityReceiver:Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$VisibilityReceiver;

    invoke-interface {v0, v1}, Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$Manager;->addVisibilityReceiver(Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$VisibilityReceiver;)V

    .line 126
    iget-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mObserver:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;

    invoke-virtual {v1}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;->observe()V

    .line 129
    invoke-direct {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->updateSettings()V

    .line 119
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 135
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mObserver:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;

    invoke-virtual {v0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;->unobserve()V

    .line 133
    return-void
.end method

.method public setDarkIntensity(FII)V
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightModeFillColor"    # I
    .param p3, "darkModeFillColor"    # I

    .prologue
    .line 357
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    .line 358
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 357
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->mIconTint:I

    .line 359
    invoke-direct {p0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->updateTrafficDrawableColor()V

    .line 356
    return-void
.end method
