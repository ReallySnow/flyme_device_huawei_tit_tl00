.class Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$1;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"

# interfaces
.implements Lorg/cyanogenmod/internal/statusbar/CMStatusBarItem$VisibilityReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get7(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 112
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v0, p1}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-set3(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;Z)Z

    .line 113
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$1;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-wrap2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)V

    .line 110
    :cond_0
    return-void
.end method
