.class Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 249
    iput-object p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    .line 250
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 249
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 254
    iget-object v1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v1}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 256
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "network_traffic_mode"

    .line 255
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 259
    const-string/jumbo v1, "network_traffic_autohide"

    .line 258
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 262
    const-string/jumbo v1, "network_traffic_units"

    .line 261
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 265
    const-string/jumbo v1, "network_traffic_show_units"

    .line 264
    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 253
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-wrap1(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)V

    .line 274
    return-void
.end method

.method unobserve()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$SettingsObserver;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 269
    return-void
.end method
