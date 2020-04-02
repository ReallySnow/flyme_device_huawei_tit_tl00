.class public Lcom/android/internal/telephony/MT6753;
.super Lcom/android/internal/telephony/RIL;
.source "MT6753.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final REFRESH_SESSION_RESET:I = 0x6

.field private static final RIL_REQUEST_EMERGENCY_DIAL:I = 0x827

.field private static final RIL_REQUEST_MODEM_POWEROFF:I = 0x7da

.field private static final RIL_REQUEST_MODEM_POWERON:I = 0x7ec

.field private static final RIL_REQUEST_RESUME_REGISTRATION:I = 0x811

.field private static final RIL_REQUEST_SET_CALL_INDICATION:I = 0x826

.field private static final RIL_REQUEST_SET_ECC_LIST:I = 0x829

.field private static final RIL_REQUEST_SET_ECC_SERVICE_CATEGORY:I = 0x828

.field private static final RIL_UNSOL_CALL_INFO_INDICATION:I = 0xbe9

.field private static final RIL_UNSOL_INCOMING_CALL_INDICATION:I = 0xbe2

.field private static final RIL_UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED:I = 0xbc7

.field private static final RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED:I = 0xbd0

.field private static final RIL_UNSOL_SET_ATTACH_APN:I = 0xc01


# instance fields
.field private dataCallCids:[I

.field private mContext:Landroid/content/Context;

.field private mEccList:Lcom/android/internal/telephony/MtkEccList;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 62
    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MT6753;->dataCallCids:[I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, -0x1

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 62
    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MT6753;->dataCallCids:[I

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/MT6753;->mContext:Landroid/content/Context;

    .line 76
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/MT6753;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/MtkEccList;

    invoke-direct {v0}, Lcom/android/internal/telephony/MtkEccList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MT6753;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    .line 73
    return-void
.end method

.method private fetchCidFromDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 492
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 494
    .local v1, "ret":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    if-ltz v2, :cond_0

    .line 495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/internal/telephony/MT6753;->dataCallCids:[I

    aget v2, v2, v0

    if-gez v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/android/internal/telephony/MT6753;->dataCallCids:[I

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    aput v3, v2, v0

    .line 502
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 495
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fixupPSBearerDataRegistration(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x3

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 481
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 482
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 484
    const-string/jumbo v1, "15"

    aput-object v1, v0, v3

    .line 487
    :cond_0
    return-object v0
.end method

.method private static localRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 83
    sparse-switch p0, :sswitch_data_0

    .line 91
    const-string/jumbo v0, "<unknown response>"

    return-object v0

    .line 84
    :sswitch_0
    const-string/jumbo v0, "RIL_REQUEST_RESUME_REGISTRATION"

    return-object v0

    .line 85
    :sswitch_1
    const-string/jumbo v0, "RIL_REQUEST_SET_CALL_INDICATION"

    return-object v0

    .line 86
    :sswitch_2
    const-string/jumbo v0, "RIL_REQUEST_EMERGENCY_DIAL"

    return-object v0

    .line 87
    :sswitch_3
    const-string/jumbo v0, "RIL_REQUEST_SET_ECC_SERVICE_CATEGORY"

    return-object v0

    .line 88
    :sswitch_4
    const-string/jumbo v0, "RIL_REQUEST_SET_ECC_LIST"

    return-object v0

    .line 89
    :sswitch_5
    const-string/jumbo v0, "RIL_REQUEST_MODEM_POWEROFF"

    return-object v0

    .line 90
    :sswitch_6
    const-string/jumbo v0, "RIL_REQUEST_MODEM_POWERON"

    return-object v0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x7da -> :sswitch_5
        0x7ec -> :sswitch_6
        0x811 -> :sswitch_0
        0x826 -> :sswitch_1
        0x827 -> :sswitch_2
        0x828 -> :sswitch_3
        0x829 -> :sswitch_4
    .end sparse-switch
.end method

.method private refreshEmergencyList()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/MT6753;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MT6753;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    invoke-static {}, Lcom/android/internal/telephony/MtkEccList;->updateEmergencyNumbersProperty()V

    .line 361
    :cond_0
    return-void
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/MT6753;->dataCallCids:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/MT6753;->dataCallCids:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 318
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->deactivateDataCall(IILandroid/os/Message;)V

    .line 311
    return-void

    .line 312
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 324
    iget-object v2, p0, Lcom/android/internal/telephony/MT6753;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    invoke-static {p1}, Lcom/android/internal/telephony/MtkEccList;->isEmergencyNumberExt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/MT6753;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    invoke-static {p1}, Lcom/android/internal/telephony/MtkEccList;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v1

    .line 327
    .local v1, "serviceCategory":I
    const/16 v2, 0x828

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 329
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6753;->localRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    const-string/jumbo v3, " "

    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MT6753;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 338
    const/16 v2, 0x827

    invoke-static {v2, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 339
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    if-nez p3, :cond_0

    .line 344
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6753;->localRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MT6753;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 323
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v1    # "serviceCategory":I
    :goto_1
    return-void

    .line 346
    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v1    # "serviceCategory":I
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 357
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v1    # "serviceCategory":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .prologue
    .line 509
    const/16 v0, 0xc0

    if-ne p1, v0, :cond_0

    if-nez p6, :cond_0

    .line 510
    const-string/jumbo v0, "MT6753"

    const-string/jumbo v1, "Override the size for the COMMAND_GET_RESPONSE 0 => 15"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/16 p6, 0xf

    .line 513
    :cond_0
    invoke-super/range {p0 .. p10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 508
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 399
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 400
    .local v4, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 402
    .local v1, "error":I
    const/4 v3, 0x0

    .line 405
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v8, p0, Lcom/android/internal/telephony/MT6753;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v8

    .line 406
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/MT6753;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/RILRequest;

    .line 407
    .local v6, "tr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v6, :cond_1

    iget v7, v6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v7, v4, :cond_1

    .line 408
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-lez v7, :cond_1

    .line 409
    :cond_0
    :try_start_1
    iget v7, v6, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v7, :sswitch_data_0

    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    :goto_0
    monitor-exit v8

    .line 432
    if-nez v3, :cond_3

    .line 434
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 437
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    return-object v7

    .line 416
    .restart local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_0
    move-object v3, v6

    .line 417
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0

    .line 419
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/MT6753;->refreshEmergencyList()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v5

    .line 422
    .local v5, "thr":Ljava/lang/Throwable;
    :try_start_3
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_2

    .line 423
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v9, 0x0

    invoke-static {v7, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 424
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit v8

    .line 426
    return-object v6

    .line 405
    .end local v5    # "thr":Ljava/lang/Throwable;
    .end local v6    # "tr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 441
    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v6    # "tr":Lcom/android/internal/telephony/RILRequest;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MT6753;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 443
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_4

    .line 444
    return-object v3

    .line 447
    :cond_4
    const/4 v2, 0x0

    .line 449
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_6

    .line 450
    :cond_5
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v7, :sswitch_data_1

    .line 457
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Shouldn\'t be here: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 451
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6753;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 462
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_6
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/MT6753;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 463
    const-string/jumbo v8, " "

    .line 462
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 463
    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8, v2}, Lcom/android/internal/telephony/MT6753;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 462
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 465
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_7

    .line 466
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 467
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 470
    :cond_7
    return-object v3

    .line 452
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6753;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 453
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MT6753;->fixupPSBearerDataRegistration(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 454
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MT6753;->fetchCidFromDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 455
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6753;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    iget-object v7, p0, Lcom/android/internal/telephony/MT6753;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v9, v9, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 409
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x15 -> :sswitch_0
        0x1b -> :sswitch_0
        0x7b -> :sswitch_0
        0x827 -> :sswitch_0
        0x828 -> :sswitch_0
    .end sparse-switch

    .line 450
    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_4
        0x1b -> :sswitch_5
        0x7b -> :sswitch_6
        0x827 -> :sswitch_2
        0x828 -> :sswitch_3
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 101
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .local v2, "response":I
    sparse-switch v2, :sswitch_data_0

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 115
    return-void

    .line 104
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6753;->responseRegSuspended(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    .local v3, "ret":Ljava/lang/Object;
    :goto_0
    sparse-switch v2, :sswitch_data_1

    .line 98
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 105
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6753;->responseIncomingCallIndication(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 106
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6753;->responseCallProgress(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 107
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6753;->responseSetAttachApn(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 108
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6753;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 109
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6753;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 119
    :sswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/MT6753;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 120
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 119
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 123
    :sswitch_7
    if-nez v3, :cond_0

    .line 124
    iget-object v4, p0, Lcom/android/internal/telephony/MT6753;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 125
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    :sswitch_8
    move-object v1, v3

    .line 129
    check-cast v1, [Ljava/lang/String;

    .line 131
    .local v1, "resp":[Ljava/lang/String;
    array-length v4, v1

    if-ge v4, v5, :cond_1

    .line 132
    new-array v1, v5, [Ljava/lang/String;

    .line 133
    check-cast v3, [Ljava/lang/String;

    .end local v3    # "ret":Ljava/lang/Object;
    aget-object v4, v3, v7

    aput-object v4, v1, v7

    .line 134
    const/4 v4, 0x1

    aput-object v6, v1, v4

    .line 136
    :cond_1
    aget-object v4, v1, v7

    if-eqz v4, :cond_2

    .line 137
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v5, :cond_2

    .line 138
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_2

    .line 140
    const-string/jumbo v4, "0"

    aput-object v4, v1, v7

    .line 143
    :cond_2
    aget-object v4, v1, v7

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/MT6753;->unsljLogMore(ILjava/lang/String;)V

    .line 144
    iget-object v4, p0, Lcom/android/internal/telephony/MT6753;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/android/internal/telephony/MT6753;->mUSSDRegistrant:Landroid/os/Registrant;

    .line 146
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 145
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 150
    .end local v1    # "resp":[Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/Object;
    :sswitch_9
    check-cast v3, [I

    .end local v3    # "ret":Ljava/lang/Object;
    aget v4, v3, v7

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 151
    iget-object v4, p0, Lcom/android/internal/telephony/MT6753;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 152
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 151
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x3ee -> :sswitch_4
        0xbc7 -> :sswitch_5
        0xbd0 -> :sswitch_0
        0xbe2 -> :sswitch_1
        0xbe9 -> :sswitch_2
        0xc01 -> :sswitch_3
    .end sparse-switch

    .line 117
    :sswitch_data_1
    .sparse-switch
        0x3ee -> :sswitch_8
        0xbc7 -> :sswitch_9
        0xbe2 -> :sswitch_6
        0xbe9 -> :sswitch_7
    .end sparse-switch
.end method

.method protected responseCallProgress(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 211
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string/jumbo v2, "129"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v1, 0x0

    return-object v1

    .line 215
    :cond_0
    return-object v0
.end method

.method protected responseIncomingCallIndication(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x3

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "response":[Ljava/lang/String;
    const/16 v2, 0x826

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 193
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6753;->localRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 195
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6753;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 201
    return-object v0
.end method

.method protected responseRegSuspended(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 168
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    const/16 v4, 0x811

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 174
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/MT6753;->localRequestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    const-string/jumbo v5, " sessionId "

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    aget v5, v2, v6

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 177
    iget-object v4, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v4, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6753;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 182
    return-object v2
.end method

.method protected responseSetAttachApn(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 248
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MT6753;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 249
    return-object v6
.end method

.method protected responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x2

    .line 255
    new-instance v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 257
    .local v1, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "rawefId":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 262
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-le v2, v4, :cond_0

    .line 263
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 264
    iput v4, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 270
    :cond_0
    :goto_1
    return-object v1

    .line 259
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 266
    :cond_2
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    goto :goto_1
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 221
    const/16 v2, 0x6f

    invoke-static {v2, v4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 223
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/MT6753;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/MT6753;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "operatorNumber":Ljava/lang/String;
    const-string/jumbo v2, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 226
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6753;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    const-string/jumbo v3, ", apn:"

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    const-string/jumbo v3, ", protocol:"

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    const-string/jumbo v3, ", authType:"

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string/jumbo v3, ", username:"

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string/jumbo v3, ", password:"

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    const-string/jumbo v3, ", operator:"

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6753;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 220
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 368
    iget-object v3, p0, Lcom/android/internal/telephony/MT6753;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 369
    const-string/jumbo v4, "airplane_mode_on"

    const/4 v5, 0x0

    .line 368
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 369
    const/4 v4, 0x1

    .line 368
    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 370
    .local v0, "isInApm":Z
    :goto_0
    const-string/jumbo v3, "persist.radio.airplane.mode.on"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 372
    .local v2, "wasInApm":Z
    const-string/jumbo v4, "persist.radio.airplane.mode.on"

    if-eqz v0, :cond_2

    const-string/jumbo v3, "true"

    :goto_1
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    .line 381
    :cond_0
    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    .line 382
    const-string/jumbo v3, "gsm.ril.eboot"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/16 v3, 0x7da

    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 385
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MT6753;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6753;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 367
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :goto_2
    return-void

    .line 368
    .end local v0    # "isInApm":Z
    .end local v2    # "wasInApm":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isInApm":Z
    goto :goto_0

    .line 372
    .restart local v2    # "wasInApm":Z
    :cond_2
    const-string/jumbo v3, "false"

    goto :goto_1

    .line 375
    :cond_3
    const-string/jumbo v3, "gsm.ril.eboot"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/16 v3, 0x7ec

    invoke-static {v3, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 378
    .restart local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MT6753;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6753;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_2

    .line 389
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_2
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 280
    .local v1, "interfaceId":I
    const/16 v3, 0x1b

    invoke-static {v3, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 282
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/MT6753;->dataCallCids:[I

    aget v3, v3, v0

    if-gez v3, :cond_1

    .line 295
    add-int/lit8 v1, v0, 0x1

    .line 299
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 302
    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MT6753;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 302
    const-string/jumbo v4, " "

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 302
    const-string/jumbo v4, " "

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    const-string/jumbo v4, " "

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    const-string/jumbo v4, " "

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    const-string/jumbo v4, " "

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    const-string/jumbo v4, " "

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    const-string/jumbo v4, " "

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    const-string/jumbo v4, " "

    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6753;->riljLog(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6753;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 277
    return-void

    .line 293
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
