.class public Landroid/content/ContentProviderOperation$Builder;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExpectedCount:Ljava/lang/Integer;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSelectionArgsBackReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;

.field private mValuesBackReferences:Landroid/content/ContentValues;

.field private mYieldAllowed:Z


# direct methods
.method static synthetic -get0(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get1(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/content/ContentProviderOperation$Builder;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/content/ContentProviderOperation$Builder;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Landroid/content/ContentProviderOperation$Builder;)I
    .locals 1

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    return v0
.end method

.method static synthetic -get5(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get6(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic -get7(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic -get8(Landroid/content/ContentProviderOperation$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return v0
.end method

.method private constructor <init>(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    if-nez p2, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    iput p1, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 493
    iput-object p2, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    .line 488
    return-void
.end method

.method synthetic constructor <init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/content/ContentProviderOperation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 498
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 499
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 501
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_2
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 505
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 506
    :cond_3
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 507
    :cond_4
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_5
    new-instance v0, Landroid/content/ContentProviderOperation;

    invoke-direct {v0, p0, v2}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation;)V

    return-object v0
.end method

.method public withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 660
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 662
    const-string/jumbo v1, "only updates, deletes, and asserts can have expected counts"

    .line 661
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    .line 665
    return-object p0
.end method

.method public withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 639
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 641
    const-string/jumbo v1, "only updates, deletes, and asserts can have selections"

    .line 640
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    .line 644
    if-nez p2, :cond_1

    .line 645
    iput-object v3, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    .line 650
    :goto_0
    return-object p0

    .line 647
    :cond_1
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    .line 648
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p1, "selectionArgIndex"    # I
    .param p2, "previousResult"    # I

    .prologue
    .line 558
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 559
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only updates, deletes, and asserts can have selection back-references"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    .line 565
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    return-object p0
.end method

.method public withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 598
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only inserts and updates can have values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    .line 602
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 604
    :cond_1
    if-nez p2, :cond_2

    .line 605
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 627
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 606
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 607
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 608
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 609
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_0

    .line 610
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 611
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_0

    .line 612
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 613
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 614
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 615
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 616
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 617
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 618
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 619
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 620
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 621
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 622
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p2, [B

    if-eqz v0, :cond_b

    .line 623
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 625
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "previousResult"    # I

    .prologue
    .line 540
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 542
    const-string/jumbo v1, "only inserts, updates, and asserts can have value back-references"

    .line 541
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    .line 545
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 547
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    return-object p0
.end method

.method public withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .param p1, "backReferences"    # Landroid/content/ContentValues;

    .prologue
    .line 524
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 526
    const-string/jumbo v1, "only inserts, updates, and asserts can have value back-references"

    .line 525
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 529
    return-object p0
.end method

.method public withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 577
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 578
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 579
    const-string/jumbo v1, "only inserts, updates, and asserts can have values"

    .line 578
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    if-nez v0, :cond_1

    .line 582
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 584
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 585
    return-object p0
.end method

.method public withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 0
    .param p1, "yieldAllowed"    # Z

    .prologue
    .line 675
    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    .line 676
    return-object p0
.end method
