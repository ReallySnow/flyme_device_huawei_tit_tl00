.class Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTraffic.java"


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
    .line 238
    iput-object p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$3;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v1}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-wrap2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)V

    .line 240
    :cond_0
    return-void
.end method
