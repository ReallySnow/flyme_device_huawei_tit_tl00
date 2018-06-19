.class Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;
.super Landroid/os/Handler;
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
    .line 139
    iput-object p1, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private formatOutput(J)Ljava/lang/String;
    .locals 7
    .param p1, "kbps"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 207
    iget-object v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get14(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 225
    const-string/jumbo v1, "unknown"

    .line 226
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v0, "unknown"

    .line 230
    .local v0, "unit":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get9(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 209
    .end local v0    # "unit":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1    # "value":Ljava/lang/String;
    iget-object v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x3f06007f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "unit":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0    # "unit":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    long-to-float v4, p1

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1    # "value":Ljava/lang/String;
    iget-object v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x3f060080

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "unit":Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v0    # "unit":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .restart local v1    # "value":Ljava/lang/String;
    iget-object v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x3f060081

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "unit":Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v0    # "unit":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v2, "%.2f"

    new-array v3, v3, [Ljava/lang/Object;

    long-to-float v4, p1

    const/high16 v5, 0x45fa0000    # 8000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "value":Ljava/lang/String;
    iget-object v2, p0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    invoke-static {v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x3f060082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "unit":Ljava/lang/String;
    goto/16 :goto_0

    .line 233
    :cond_0
    return-object v1

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 143
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get5(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v18

    sub-long v14, v6, v18

    .line 144
    .local v14, "timeDelta":J
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 145
    long-to-float v0, v14

    move/from16 v18, v0

    const v19, 0x44ed8000    # 1900.0f

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-set2(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J

    .line 148
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get4(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v20

    sub-long v16, v18, v20

    .line 149
    .local v16, "txBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get3(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v20

    sub-long v8, v18, v20

    .line 150
    .local v8, "rxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x41000000    # 8.0f

    mul-float v19, v19, v20

    long-to-float v0, v14

    move/from16 v20, v0

    const/high16 v21, 0x447a0000    # 1000.0f

    div-float v20, v20, v21

    div-float v19, v19, v20

    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-set5(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    long-to-float v0, v8

    move/from16 v19, v0

    const/high16 v20, 0x41000000    # 8.0f

    mul-float v19, v19, v20

    long-to-float v0, v14

    move/from16 v20, v0

    const/high16 v21, 0x447a0000    # 1000.0f

    div-float v20, v20, v21

    div-float v19, v19, v20

    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-set4(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get4(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v20

    add-long v20, v20, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-set1(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get3(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v20

    add-long v20, v20, v8

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-set0(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;J)J

    .line 156
    .end local v8    # "rxBytes":J
    .end local v16    # "txBytes":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get6(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-wrap0(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Z

    move-result v4

    .line 158
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get6(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get6(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    :cond_1
    const/4 v12, 0x1

    .line 160
    .local v12, "showUpstream":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get6(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get6(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    :cond_2
    const/4 v11, 0x1

    .line 161
    .local v11, "showDownstream":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get0(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get13(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get1(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_b

    .line 162
    :cond_3
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get8(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get1(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_a

    :cond_4
    const/4 v10, 0x1

    .line 164
    .local v10, "shouldHide":Z
    :goto_3
    if-eqz v4, :cond_5

    if-eqz v10, :cond_c

    .line 165
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->setVisibility(I)V

    .line 197
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get12(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get7(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get12(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v18

    .line 200
    const-wide/16 v20, 0x7d0

    .line 199
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    :cond_6
    return-void

    .line 156
    .end local v10    # "shouldHide":Z
    .end local v11    # "showDownstream":Z
    .end local v12    # "showUpstream":Z
    :cond_7
    const/4 v4, 0x0

    .local v4, "enabled":Z
    goto/16 :goto_0

    .line 158
    .end local v4    # "enabled":Z
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "showUpstream":Z
    goto/16 :goto_1

    .line 160
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "showDownstream":Z
    goto/16 :goto_2

    .line 162
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "shouldHide":Z
    goto :goto_3

    .line 161
    .end local v10    # "shouldHide":Z
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "shouldHide":Z
    goto :goto_3

    .line 169
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v5, "output":Ljava/lang/StringBuilder;
    if-eqz v12, :cond_d

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get13(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->formatOutput(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_d
    if-eqz v12, :cond_10

    if-eqz v11, :cond_10

    .line 177
    const-string/jumbo v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get10(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I

    move-result v13

    .line 184
    .local v13, "textSize":I
    :goto_5
    if-eqz v11, :cond_e

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get8(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->formatOutput(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->setTextSize(IF)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->setVisibility(I)V

    goto/16 :goto_4

    .line 180
    .end local v13    # "textSize":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic$2;->this$0:Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;->-get11(Lorg/cyanogenmod/internal/statusbar/NetworkTraffic;)I

    move-result v13

    .restart local v13    # "textSize":I
    goto :goto_5
.end method
