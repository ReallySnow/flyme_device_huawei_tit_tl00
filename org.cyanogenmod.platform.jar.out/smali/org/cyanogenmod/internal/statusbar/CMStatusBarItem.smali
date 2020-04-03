.class public Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem;
.super Ljava/lang/Object;
.source "CMStatusBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$Manager;,
        Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$VisibilityReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findManager(Landroid/view/View;)Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$Manager;
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 36
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    .line 37
    return-object v2

    .line 38
    :cond_0
    instance-of v1, v0, Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$Manager;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$Manager;

    .end local v0    # "parent":Landroid/view/ViewParent;
    return-object v0

    .line 40
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 41
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0}, Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem;->findManager(Landroid/view/View;)Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$Manager;

    move-result-object v1

    return-object v1

    .line 43
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_2
    return-object v2
.end method
