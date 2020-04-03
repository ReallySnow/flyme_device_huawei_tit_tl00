.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;,
        Lcom/android/server/net/NetworkPolicyManagerService$10;,
        Lcom/android/server/net/NetworkPolicyManagerService$11;,
        Lcom/android/server/net/NetworkPolicyManagerService$12;,
        Lcom/android/server/net/NetworkPolicyManagerService$13;,
        Lcom/android/server/net/NetworkPolicyManagerService$14;,
        Lcom/android/server/net/NetworkPolicyManagerService$1;,
        Lcom/android/server/net/NetworkPolicyManagerService$2;,
        Lcom/android/server/net/NetworkPolicyManagerService$3;,
        Lcom/android/server/net/NetworkPolicyManagerService$4;,
        Lcom/android/server/net/NetworkPolicyManagerService$5;,
        Lcom/android/server/net/NetworkPolicyManagerService$6;,
        Lcom/android/server/net/NetworkPolicyManagerService$7;,
        Lcom/android/server/net/NetworkPolicyManagerService$8;,
        Lcom/android/server/net/NetworkPolicyManagerService$9;,
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictType;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_REMOVE_INTERFACE_QUOTA:I = 0xb

.field private static final MSG_RESTRICT_BACKGROUND_BLACKLIST_CHANGED:I = 0xc

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RESTRICT_BACKGROUND_WHITELIST_CHANGED:I = 0x9

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SET_FIREWALL_RULES:I = 0xd

.field private static final MSG_UPDATE_INTERFACE_QUOTA:I = 0xa

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field private static final TYPE_RESTRICT_BACKGROUND:I = 0x1

.field private static final TYPE_RESTRICT_POWER:I = 0x2

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa


# instance fields
.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityListener:Landroid/net/INetworkPolicyListener;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworkRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field volatile mRestrictPower:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field private final mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

.field private final mTime:Landroid/util/TrustedTime;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkPolicyManagerService;IZZ)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z
    .param p3, "updateNow"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidUL(IZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/util/SparseIntArray;)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "blacklisted"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundBlacklistChanged(Landroid/net/INetworkPolicyListener;IZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "whitelisted"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundWhitelistChanged(Landroid/net/INetworkPolicyListener;IZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/net/NetworkPolicyManagerService;IZ)V
    .locals 0
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyNL()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 425
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 424
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 423
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p4, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p5, "time"    # Landroid/util/TrustedTime;
    .param p6, "systemDir"    # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"    # Z

    .prologue
    .line 432
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 314
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 315
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 326
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 328
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    .line 331
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 333
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 336
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 338
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 340
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 344
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 352
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 360
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 363
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 369
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 376
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 375
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 384
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 383
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 388
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 391
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 395
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 399
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 405
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 687
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 712
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 724
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    .line 735
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 755
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 776
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 811
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 829
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 843
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 857
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 886
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 931
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 930
    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1180
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 3277
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 435
    const-string/jumbo v1, "missing context"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 436
    const-string/jumbo v1, "missing activityManager"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 437
    const-string/jumbo v1, "missing networkStats"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/INetworkStatsService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 438
    const-string/jumbo v1, "missing networkManagement"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 440
    const-string/jumbo v1, "deviceidle"

    .line 439
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 441
    const-string/jumbo v1, "missing TrustedTime"

    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TrustedTime;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 442
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 443
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 445
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 447
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 449
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 451
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "netpolicy.xml"

    invoke-direct {v2, p6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 453
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 456
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 457
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;)V

    .line 456
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x1

    .line 507
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v7

    .line 508
    .local v7, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 509
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v0

    .line 510
    .local v0, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 511
    .local v2, "changed":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 512
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 518
    .local v5, "pkg":Ljava/lang/String;
    const/high16 v9, 0x100000

    :try_start_0
    invoke-virtual {v6, v5, v9, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 524
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v9

    if-nez v9, :cond_1

    .line 525
    const-string/jumbo v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 519
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 529
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 530
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 535
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 539
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v12}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 540
    const/4 v2, 0x1

    goto :goto_1

    .line 543
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v8    # "uid":I
    :cond_2
    return v2
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 3607
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue

    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const v1, #android:string@config_networkOverLimitComponent#t

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3618
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3620
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3621
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3622
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3611
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3612
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3613
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue

    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const v1, #android:string@config_dataUsageSummaryComponent#t

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3627
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3629
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3630
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3631
    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1168
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 1170
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1169
    invoke-interface {v2, v1, p1, v3, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1171
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 3640
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3641
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3642
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3639
    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .prologue
    .line 3239
    if-eqz p1, :cond_0

    .line 3241
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3238
    :cond_0
    :goto_0
    return-void

    .line 3242
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundBlacklistChanged(Landroid/net/INetworkPolicyListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "blacklisted"    # Z

    .prologue
    .line 3269
    if-eqz p1, :cond_0

    .line 3271
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundBlacklistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3268
    :cond_0
    :goto_0
    return-void

    .line 3272
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .prologue
    .line 3249
    if-eqz p1, :cond_0

    .line 3251
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3248
    :cond_0
    :goto_0
    return-void

    .line 3252
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchRestrictBackgroundWhitelistChanged(Landroid/net/INetworkPolicyListener;IZ)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "whitelisted"    # Z

    .prologue
    .line 3259
    if-eqz p1, :cond_0

    .line 3261
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundWhitelistChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3258
    :cond_0
    :goto_0
    return-void

    .line 3262
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .prologue
    .line 3229
    if-eqz p1, :cond_0

    .line 3231
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3228
    :cond_0
    :goto_0
    return-void

    .line 3232
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enableFirewallChainUL(IZ)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3554
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 3555
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 3557
    return-void

    .line 3559
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3561
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3553
    :goto_0
    return-void

    .line 3562
    :catch_0
    move-exception v1

    .line 3563
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem enable firewall chain"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3564
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 21
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    .line 1050
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v5

    .line 1051
    .local v5, "tag":Ljava/lang/String;
    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v11, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const-wide/16 v6, 0x0

    invoke-virtual {v11, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v4, #android:color@system_notification_accent_color#t

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1058
    .local v15, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    .line 1154
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1155
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [I

    .line 1156
    .local v8, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 1157
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    const/4 v6, 0x0

    .line 1158
    const/4 v9, -0x1

    move-object v4, v3

    .line 1156
    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "idReceived":[I
    :goto_1
    return-void

    .line 1060
    :pswitch_0
    const v2, #android:string@data_usage_warning_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1061
    .local v19, "title":Ljava/lang/CharSequence;
    const v2, #android:string@data_usage_warning_body#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "body":Ljava/lang/CharSequence;
    const v2, #android:drawable@stat_notify_error#t

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v18

    .line 1072
    .local v18, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    .line 1071
    move-object/from16 v0, v18

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1074
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v15, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v20

    .line 1076
    .local v20, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    .line 1075
    move-object/from16 v0, v20

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 1081
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v18    # "snoozeIntent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/CharSequence;
    .end local v20    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v2, #android:string@data_usage_limit_body#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .restart local v10    # "body":Ljava/lang/CharSequence;
    const v13, #android:drawable@stat_notify_disabled_data#t

    .local v13, "icon":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 1100
    const/16 v19, 0x0

    .line 1104
    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1105
    invoke-virtual {v11, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1106
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1107
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1108
    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1110
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v15, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v14

    .line 1112
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    .line 1111
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1087
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_2
    const v2, #android:string@data_usage_3g_limit_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1090
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v2, #android:string@data_usage_4g_limit_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1093
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v2, #android:string@data_usage_mobile_limit_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1096
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v2, #android:string@data_usage_wifi_limit_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    const v13, #android:drawable@stat_notify_error#t

    goto :goto_2

    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v13    # "icon":I
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v16, p3, v6

    .line 1117
    .local v16, "overBytes":J
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    const v4, #android:string@data_usage_limit_snoozed_body#t

    invoke-virtual {v15, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    const/16 v19, 0x0

    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v2, #android:drawable@stat_notify_error#t

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v15, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v14

    .line 1147
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    .line 1146
    invoke-static {v2, v4, v14, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1123
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_7
    const v2, #android:string@data_usage_3g_limit_snoozed_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1126
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v2, #android:string@data_usage_4g_limit_snoozed_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1129
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v2, #android:string@data_usage_mobile_limit_snoozed_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1132
    .end local v19    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v2, #android:string@data_usage_wifi_limit_snoozed_title#t

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .restart local v19    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1160
    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v16    # "overBytes":J
    .end local v19    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 1058
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1085
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 1121
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private ensureActiveMobilePolicyNL()V
    .locals 7

    .prologue
    .line 1419
    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v5, :cond_0

    return-void

    .line 1421
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1422
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 1424
    .local v0, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v2

    .line 1425
    .local v2, "subIds":[I
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_1

    aget v1, v2, v5

    .line 1426
    .local v1, "subId":I
    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1427
    .local v3, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyNL(Ljava/lang/String;)V

    .line 1425
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1417
    .end local v1    # "subId":I
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private ensureActiveMobilePolicyNL(Ljava/lang/String;)V
    .locals 21
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 1433
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    .line 1434
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v5, p1

    .line 1433
    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1435
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_1

    .line 1436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 1437
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1442
    return-void

    .line 1435
    :cond_0
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 1446
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No policy for subscriber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1447
    const-string/jumbo v11, "; generating default policy"

    .line 1446
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, #android:integer@config_networkPolicyDefaultWarning#t

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .local v18, "dataWarningConfig":I
    move/from16 v0, v18

    int-to-long v10, v0

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_2

    .line 1454
    const-wide/16 v8, -0x1

    .line 1459
    .local v8, "warningBytes":J
    :goto_1
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 1460
    .local v20, "time":Landroid/text/format/Time;
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->setToNow()V

    .line 1462
    move-object/from16 v0, v20

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    .line 1463
    .local v6, "cycleDay":I
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1465
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 1466
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    .line 1467
    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    .line 1466
    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1468
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyNL(Landroid/net/NetworkPolicy;)V

    .line 1431
    return-void

    .line 1456
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v20    # "time":Landroid/text/format/Time;
    :cond_2
    move/from16 v0, v18

    int-to-long v10, v0

    const-wide/32 v12, 0x100000

    mul-long v8, v10, v12

    .restart local v8    # "warningBytes":J
    goto :goto_1
.end method

.method private findPolicyForNetworkNL(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 2255
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2256
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2257
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2258
    return-object v1

    .line 2255
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2261
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 2282
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2283
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkNL(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v2

    .line 2286
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2291
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v6

    .line 2294
    .local v6, "currentTime":J
    move-object/from16 v0, v18

    invoke-static {v6, v7, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 2295
    .local v4, "start":J
    move-wide/from16 v16, v6

    .line 2296
    .local v16, "end":J
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 2299
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2301
    .local v12, "softLimitBytes":J
    :goto_0
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_2

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2304
    .local v14, "hardLimitBytes":J
    :goto_1
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    return-object v9

    .line 2282
    .end local v4    # "start":J
    .end local v6    # "currentTime":J
    .end local v10    # "totalBytes":J
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    .end local v16    # "end":J
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 2288
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 2300
    .restart local v4    # "start":J
    .restart local v6    # "currentTime":J
    .restart local v10    # "totalBytes":J
    .restart local v16    # "end":J
    :cond_1
    const-wide/16 v12, -0x1

    .restart local v12    # "softLimitBytes":J
    goto :goto_0

    .line 2302
    :cond_2
    const-wide/16 v14, -0x1

    .restart local v14    # "hardLimitBytes":J
    goto :goto_1
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 429
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 3571
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 3575
    :catch_0
    move-exception v6

    .line 3577
    .local v6, "e":Landroid/os/RemoteException;
    return-wide v8

    .line 3572
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 3573
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    return-wide v8
.end method

.method private hasInternetPermissions(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 2910
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "android.permission.INTERNET"

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 2912
    return v3

    .line 2914
    :catch_0
    move-exception v0

    .line 2916
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 3582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3584
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3589
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3584
    return v1

    .line 3585
    :catch_0
    move-exception v0

    .line 3587
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 3589
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3587
    return v1

    .line 3588
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 3589
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3588
    throw v1
.end method

.method static isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    .line 2606
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isProcStateAllowedWhileOnRestrictBackground(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    .line 2610
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 13
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1002
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1003
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 1004
    .local v10, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    .line 1007
    .local v7, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v9

    .line 1008
    .local v9, "subIds":[I
    array-length v12, v9

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_1

    aget v8, v9, v11

    .line 1009
    .local v8, "subId":I
    invoke-virtual {v10, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    .line 1011
    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    .line 1010
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1012
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    return v6

    .line 1008
    :cond_0
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 1016
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v8    # "subId":I
    :cond_1
    return v1

    .line 1018
    .end local v7    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v9    # "subIds":[I
    .end local v10    # "tele":Landroid/telephony/TelephonyManager;
    :cond_2
    return v6
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2518
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2519
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2523
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2524
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2513
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundUL(I)Z

    move-result v0

    return v0
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 2890
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2891
    .local v1, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2893
    .local v2, "userId":I
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2894
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 2895
    .local v0, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v0, p1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2896
    return v4

    .line 2894
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2900
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method private isUidStateForegroundUL(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2529
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUidValidForBlacklistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 2877
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3fb

    if-ne p1, v0, :cond_1

    .line 2879
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2878
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    .line 2877
    if-nez v0, :cond_0

    .line 2882
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isUidValidForWhitelistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 2886
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWhitelistedBatterySaverUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2678
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2679
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static newWifiPolicy(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkPolicy;
    .locals 14
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "metered"    # Z

    .prologue
    const-wide/16 v4, -0x1

    .line 922
    new-instance v0, Landroid/net/NetworkPolicy;

    const-string/jumbo v3, "UTC"

    const/4 v2, -0x1

    .line 924
    const/4 v13, 0x1

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    move v12, p1

    .line 922
    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0
.end method

.method private normalizePoliciesNL()V
    .locals 1

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 1966
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .locals 9
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    const/4 v4, 0x0

    .line 1971
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1972
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    .line 1974
    .local v1, "merged":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 1975
    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, p1, v4

    .line 1978
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1979
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicy;

    .line 1980
    .local v0, "existing":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v6

    if-lez v6, :cond_2

    .line 1981
    :cond_0
    if-eqz v0, :cond_1

    .line 1982
    const-string/jumbo v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Normalization replaced "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1970
    .end local v0    # "existing":Landroid/net/NetworkPolicy;
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1029
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1026
    :cond_0
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1033
    return-void
.end method

.method private readPolicyAL()V
    .locals 37

    .prologue
    .line 1475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1478
    const/16 v22, 0x0

    .line 1480
    .local v22, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v22

    .line 1481
    .local v22, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v23

    .line 1482
    .local v23, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1485
    const/16 v33, 0x1

    .line 1486
    .local v33, "version":I
    const/16 v24, 0x0

    .line 1487
    .local v24, "insideWhitelist":Z
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v31

    .local v31, "type":I
    const/4 v4, 0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_13

    .line 1488
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 1489
    .local v30, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v31

    if-ne v0, v4, :cond_12

    .line 1490
    const-string/jumbo v4, "policy-list"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1491
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move/from16 v27, v0

    .line 1492
    .local v27, "oldValue":Z
    const-string/jumbo v4, "version"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v33

    .line 1493
    const/4 v4, 0x3

    move/from16 v0, v33

    if-lt v0, v4, :cond_1

    .line 1495
    const-string/jumbo v4, "restrictBackground"

    .line 1494
    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1499
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move/from16 v0, v27

    if-eq v4, v0, :cond_0

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    .line 1503
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 1502
    :goto_2
    const/16 v35, 0x6

    .line 1503
    const/16 v36, 0x0

    .line 1502
    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1605
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v27    # "oldValue":Z
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "version":I
    :catch_0
    move-exception v19

    .line 1607
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundDataUL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1471
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    return-void

    .line 1497
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v27    # "oldValue":Z
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v33    # "version":I
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1608
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v27    # "oldValue":Z
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "version":I
    :catch_1
    move-exception v20

    .line 1609
    .local v20, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v34, "problem reading network policy"

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1613
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 1503
    .end local v20    # "e":Ljava/io/IOException;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v27    # "oldValue":Z
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v33    # "version":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 1506
    .end local v27    # "oldValue":Z
    :cond_3
    :try_start_4
    const-string/jumbo v4, "network-policy"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1507
    const-string/jumbo v4, "networkTemplate"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v26

    .line 1508
    .local v26, "networkTemplate":I
    const-string/jumbo v4, "subscriberId"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1510
    .local v29, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v33

    if-lt v0, v4, :cond_4

    .line 1511
    const-string/jumbo v4, "networkId"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1515
    :goto_4
    const-string/jumbo v4, "cycleDay"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 1517
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    move/from16 v0, v33

    if-lt v0, v4, :cond_5

    .line 1518
    const-string/jumbo v4, "cycleTimezone"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1522
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_5
    const-string/jumbo v4, "warningBytes"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 1523
    .local v8, "warningBytes":J
    const-string/jumbo v4, "limitBytes"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 1525
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    move/from16 v0, v33

    if-lt v0, v4, :cond_6

    .line 1526
    const-string/jumbo v4, "lastLimitSnooze"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 1533
    .local v14, "lastLimitSnooze":J
    :goto_6
    const/4 v4, 0x4

    move/from16 v0, v33

    if-lt v0, v4, :cond_8

    .line 1534
    const-string/jumbo v4, "metered"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 1547
    :goto_7
    const/4 v4, 0x5

    move/from16 v0, v33

    if-lt v0, v4, :cond_9

    .line 1548
    const-string/jumbo v4, "lastWarningSnooze"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 1553
    .local v12, "lastWarningSnooze":J
    :goto_8
    const/4 v4, 0x7

    move/from16 v0, v33

    if-lt v0, v4, :cond_a

    .line 1554
    const-string/jumbo v4, "inferred"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 1559
    :goto_9
    new-instance v5, Landroid/net/NetworkTemplate;

    move/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1561
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v34, v0

    new-instance v4, Landroid/net/NetworkPolicy;

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1610
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v26    # "networkTemplate":I
    .end local v29    # "subscriberId":Ljava/lang/String;
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v33    # "version":I
    :catch_2
    move-exception v21

    .line 1611
    .local v21, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string/jumbo v4, "NetworkPolicy"

    const-string/jumbo v34, "problem reading network policy"

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1613
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_3

    .line 1513
    .end local v21    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v26    # "networkTemplate":I
    .restart local v29    # "subscriberId":Ljava/lang/String;
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v33    # "version":I
    :cond_4
    const/16 v25, 0x0

    .local v25, "networkId":Ljava/lang/String;
    goto/16 :goto_4

    .line 1520
    .end local v25    # "networkId":Ljava/lang/String;
    .restart local v6    # "cycleDay":I
    :cond_5
    :try_start_6
    const-string/jumbo v7, "UTC"

    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto/16 :goto_5

    .line 1527
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_6
    const/4 v4, 0x2

    move/from16 v0, v33

    if-lt v0, v4, :cond_7

    .line 1528
    const-string/jumbo v4, "lastSnooze"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_6

    .line 1530
    .end local v14    # "lastLimitSnooze":J
    :cond_7
    const-wide/16 v14, -0x1

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_6

    .line 1536
    :cond_8
    packed-switch v26, :pswitch_data_0

    .line 1543
    const/16 v16, 0x0

    .local v16, "metered":Z
    goto :goto_7

    .line 1540
    .end local v16    # "metered":Z
    :pswitch_0
    const/16 v16, 0x1

    .line 1541
    .restart local v16    # "metered":Z
    goto :goto_7

    .line 1550
    .end local v16    # "metered":Z
    :cond_9
    const-wide/16 v12, -0x1

    .restart local v12    # "lastWarningSnooze":J
    goto :goto_8

    .line 1556
    :cond_a
    const/16 v17, 0x0

    .local v17, "inferred":Z
    goto :goto_9

    .line 1567
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v17    # "inferred":Z
    .end local v26    # "networkTemplate":I
    .end local v29    # "subscriberId":Ljava/lang/String;
    :cond_b
    const-string/jumbo v4, "uid-policy"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1568
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v32

    .line 1569
    .local v32, "uid":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1571
    .local v28, "policy":I
    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1572
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1612
    .end local v22    # "fis":Ljava/io/FileInputStream;
    .end local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "insideWhitelist":Z
    .end local v28    # "policy":I
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":I
    .end local v32    # "uid":I
    .end local v33    # "version":I
    :catchall_0
    move-exception v4

    .line 1613
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1612
    throw v4

    .line 1574
    .restart local v22    # "fis":Ljava/io/FileInputStream;
    .restart local v23    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "insideWhitelist":Z
    .restart local v28    # "policy":I
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":I
    .restart local v32    # "uid":I
    .restart local v33    # "version":I
    :cond_c
    :try_start_7
    const-string/jumbo v4, "NetworkPolicy"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "unable to apply policy to UID "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "; ignoring"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1576
    .end local v28    # "policy":I
    .end local v32    # "uid":I
    :cond_d
    const-string/jumbo v4, "app-policy"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1577
    const-string/jumbo v4, "appId"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 1578
    .local v18, "appId":I
    const-string/jumbo v4, "policy"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1582
    .restart local v28    # "policy":I
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v32

    .line 1583
    .restart local v32    # "uid":I
    invoke-static/range {v32 .. v32}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1584
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto/16 :goto_0

    .line 1586
    :cond_e
    const-string/jumbo v4, "NetworkPolicy"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "unable to apply policy to UID "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, "; ignoring"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1588
    .end local v18    # "appId":I
    .end local v28    # "policy":I
    .end local v32    # "uid":I
    :cond_f
    const-string/jumbo v4, "whitelist"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1589
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 1590
    :cond_10
    const-string/jumbo v4, "restrict-background"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v24, :cond_11

    .line 1591
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v32

    .line 1592
    .restart local v32    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_0

    .line 1593
    .end local v32    # "uid":I
    :cond_11
    const-string/jumbo v4, "revoked-restrict-background"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v24, :cond_0

    .line 1594
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v32

    .line 1595
    .restart local v32    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_0

    .line 1597
    .end local v32    # "uid":I
    :cond_12
    const/4 v4, 0x3

    move/from16 v0, v31

    if-ne v0, v4, :cond_0

    .line 1598
    const-string/jumbo v4, "whitelist"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1599
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1613
    .end local v30    # "tag":Ljava/lang/String;
    :cond_13
    invoke-static/range {v22 .. v22}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_3

    .line 1536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3452
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3450
    :goto_0
    return-void

    .line 3453
    :catch_0
    move-exception v1

    .line 3454
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem removing interface quota"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3455
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private removeRestrictBackgroundWhitelistedUidUL(IZZ)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z
    .param p3, "updateNow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2144
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 2145
    .local v1, "oldStatus":Z
    if-nez v1, :cond_0

    if-eqz p2, :cond_5

    .line 2149
    :cond_0
    if-nez p2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v0

    .line 2150
    :goto_0
    if-eqz v1, :cond_1

    .line 2151
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removing uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from restrict background whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2154
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2155
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2160
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 2162
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(IZ)V

    .line 2164
    :cond_3
    if-eqz p3, :cond_4

    .line 2166
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2167
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 2172
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v3, :cond_8

    :goto_2
    return v0

    .line 2147
    :cond_5
    return v2

    .line 2149
    :cond_6
    const/4 v0, 0x1

    .local v0, "needFirewallRules":Z
    goto :goto_0

    .line 2158
    .end local v0    # "needFirewallRules":Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_1

    .line 2166
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_8
    move v0, v2

    .line 2172
    goto :goto_2
.end method

.method private removeUidStateUL(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 2566
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 2567
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 2568
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 2569
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2570
    if-eq v1, v4, :cond_2

    .line 2571
    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 2573
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    .line 2574
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 2576
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_1

    .line 2577
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 2579
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 2580
    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V

    .line 2565
    .end local v1    # "oldUidState":I
    :cond_2
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 3441
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 3442
    invoke-static {p1, p2, p3}, Lcom/android/server/NetPluginDelegate;->setQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3439
    :goto_0
    return-void

    .line 3443
    :catch_0
    move-exception v1

    .line 3444
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem setting interface quota"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3445
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3463
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3460
    :goto_0
    return-void

    .line 3464
    :catch_0
    move-exception v1

    .line 3465
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem setting blacklist ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") rules for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3466
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3474
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3471
    :goto_0
    return-void

    .line 3475
    :catch_0
    move-exception v1

    .line 3476
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem setting whitelist ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") rules for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3477
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 13
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1237
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1240
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    .line 1241
    .local v7, "sm":Landroid/telephony/SubscriptionManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 1243
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v9

    .line 1244
    .local v9, "subIds":[I
    array-length v12, v9

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_1

    aget v8, v9, v11

    .line 1245
    .local v8, "subId":I
    invoke-virtual {v10, v8}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1246
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    .line 1247
    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    .line 1246
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1249
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
    invoke-virtual {v10, p2, v8}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(ZI)V

    .line 1244
    :cond_0
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 1233
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v7    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v8    # "subId":I
    .end local v9    # "subIds":[I
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method

.method private setRestrictBackgroundUL(Z)V
    .locals 5
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 2068
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2070
    .local v1, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2074
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 2076
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2077
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2081
    return-void

    .line 2083
    :catch_0
    move-exception v0

    .line 2086
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2087
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2088
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 2067
    return-void

    .line 2086
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setUidFirewallRule(III)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 3533
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3534
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3542
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3532
    :goto_1
    return-void

    .line 3535
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 3536
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 3537
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 3538
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 3543
    :catch_0
    move-exception v1

    .line 3544
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "problem setting firewall uid rules"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3545
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    .locals 8
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    .line 3514
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 3515
    .local v4, "size":I
    new-array v5, v4, [I

    .line 3516
    .local v5, "uids":[I
    new-array v3, v4, [I

    .line 3517
    .local v3, "rules":[I
    add-int/lit8 v2, v4, -0x1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_0

    .line 3518
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aput v6, v5, v2

    .line 3519
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    aput v6, v3, v2

    .line 3517
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3521
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6, p1, v5, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3512
    .end local v2    # "index":I
    .end local v3    # "rules":[I
    .end local v4    # "size":I
    .end local v5    # "uids":[I
    :goto_1
    return-void

    .line 3522
    :catch_0
    move-exception v1

    .line 3523
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v6, "NetworkPolicy"

    const-string/jumbo v7, "problem setting firewall uid rules"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3524
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;
    .param p3, "toggle"    # I

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3503
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "policy"    # I
    .param p4, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1779
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 1781
    if-ne p3, v3, :cond_4

    const/4 v0, 0x1

    .line 1782
    .local v0, "isBlacklisted":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 1783
    if-eqz v0, :cond_0

    move v2, v3

    .line 1782
    :cond_0
    const/16 v5, 0xc

    invoke-virtual {v4, v5, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1785
    if-ne p2, v3, :cond_5

    const/4 v1, 0x1

    .line 1787
    .local v1, "wasBlacklisted":Z
    :goto_1
    if-nez p2, :cond_1

    if-nez v0, :cond_2

    .line 1788
    :cond_1
    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    .line 1789
    :cond_2
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p1, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1778
    :cond_3
    return-void

    .line 1781
    .end local v0    # "isBlacklisted":Z
    .end local v1    # "wasBlacklisted":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isBlacklisted":Z
    goto :goto_0

    .line 1785
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "wasBlacklisted":Z
    goto :goto_1
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue

    invoke-static/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->updateRulesForUidWifiAndMobileLocked(Lcom/android/server/net/NetworkPolicyManagerService;II)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1794
    :cond_0
    return-void

    .line 1800
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateNetworkStats(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .prologue
    .line 2588
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2586
    :goto_0
    return-void

    .line 2589
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .prologue
    .line 2597
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    .line 2599
    .local v1, "oldForeground":Z
    invoke-static {p3}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    .line 2600
    .local v0, "newForeground":Z
    if-eq v1, v0, :cond_0

    .line 2601
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2595
    :cond_0
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2934
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 2935
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 2936
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 2939
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 2942
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2932
    return-void
.end method

.method private updateRulesForAllAppsUL(I)V
    .locals 14
    .param p1, "type"    # I

    .prologue
    .line 2817
    const-wide/32 v10, 0x200000

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2818
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateRulesForRestrictPowerUL-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/32 v12, 0x200000

    invoke-static {v12, v13, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2821
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2824
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2826
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const v10, 0xc2200

    .line 2825
    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 2830
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 2831
    .local v9, "usersSize":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2832
    .local v2, "appsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_3

    .line 2833
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2834
    .local v7, "user":Landroid/content/pm/UserInfo;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 2835
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2836
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2837
    .local v6, "uid":I
    packed-switch p1, :pswitch_data_0

    .line 2845
    const-string/jumbo v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid type for updateRulesForAllApps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2839
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2849
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2    # "appsSize":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "uid":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "usersSize":I
    :catchall_0
    move-exception v10

    .line 2850
    const-wide/32 v12, 0x200000

    invoke-static {v12, v13}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2851
    const-wide/32 v12, 0x200000

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2849
    :cond_1
    throw v10

    .line 2842
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v2    # "appsSize":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "uid":I
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    .restart local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v9    # "usersSize":I
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2832
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "uid":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2850
    .end local v4    # "j":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    const-wide/32 v10, 0x200000

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2851
    const-wide/32 v10, 0x200000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2816
    :cond_4
    return-void

    .line 2837
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 2985
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(IZ)V

    .line 2984
    return-void
.end method

.method private updateRulesForDataUsageRestrictionsUL(IZ)V
    .locals 13
    .param p1, "uid"    # I
    .param p2, "uidDeleted"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2993
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2998
    :cond_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 2999
    .local v8, "uidPolicy":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 3000
    .local v7, "oldUidRules":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v2

    .line 3002
    .local v2, "isForeground":Z
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_6

    const/4 v1, 0x1

    .line 3003
    .local v1, "isBlacklisted":Z
    :goto_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 3004
    .local v3, "isWhitelisted":Z
    and-int/lit8 v6, v7, 0xf

    .line 3005
    .local v6, "oldRule":I
    const/4 v4, 0x0

    .line 3008
    .local v4, "newRule":I
    :try_start_0
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const v9, 0x8000

    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    move v9, v10

    :goto_1
    invoke-interface {v12, p1, v9}, Landroid/os/INetworkManagementService;->restrictAppOnWifi(IZ)V

    .line 3009
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/high16 v9, 0x10000

    and-int/2addr v9, v8

    if-eqz v9, :cond_8

    move v9, v10

    :goto_2
    invoke-interface {v12, p1, v9}, Landroid/os/INetworkManagementService;->restrictAppOnData(IZ)V

    .line 3010
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    and-int/lit16 v9, v8, 0x2000

    if-eqz v9, :cond_9

    move v9, v10

    :goto_3
    invoke-interface {v12, p1, v9}, Landroid/os/INetworkManagementService;->restrictAppOnVpn(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3016
    :goto_4
    if-eqz v2, :cond_b

    .line 3017
    if-nez v1, :cond_a

    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v9, :cond_1

    if-eqz v3, :cond_a

    :cond_1
    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_5
    and-int/lit16 v9, v7, 0xf0

    or-int v5, v4, v9

    .local v5, "newUidRules":I
    invoke-static {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->updateFlymeRules(Lcom/android/server/net/NetworkPolicyManagerService;II)I

    move-result v5

    if-nez v5, :cond_d

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_6
    if-eq v4, v6, :cond_4

    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_e

    invoke-direct {p0, p1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    :cond_3
    :goto_7
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 2992
    :cond_4
    return-void

    .line 2995
    .end local v1    # "isBlacklisted":Z
    .end local v2    # "isForeground":Z
    .end local v3    # "isWhitelisted":Z
    .end local v4    # "newRule":I
    .end local v5    # "newUidRules":I
    .end local v6    # "oldRule":I
    .end local v7    # "oldUidRules":I
    .end local v8    # "uidPolicy":I
    :cond_5
    return-void

    .line 3002
    .restart local v2    # "isForeground":Z
    .restart local v7    # "oldUidRules":I
    .restart local v8    # "uidPolicy":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isBlacklisted":Z
    goto :goto_0

    .restart local v3    # "isWhitelisted":Z
    .restart local v4    # "newRule":I
    .restart local v6    # "oldRule":I
    :cond_7
    move v9, v11

    .line 3008
    goto :goto_1

    :cond_8
    move v9, v11

    .line 3009
    goto :goto_2

    :cond_9
    move v9, v11

    .line 3010
    goto :goto_3

    .line 3018
    :cond_a
    const/4 v4, 0x2

    goto :goto_5

    .line 3023
    :cond_b
    if-eqz v1, :cond_c

    .line 3024
    const/4 v4, 0x4

    goto :goto_5

    .line 3025
    :cond_c
    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v9, :cond_2

    if-eqz v3, :cond_2

    .line 3026
    const/4 v4, 0x1

    goto :goto_5

    .line 3045
    .restart local v5    # "newUidRules":I
    :cond_d
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_6

    .line 3061
    :cond_e
    and-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_10

    .line 3068
    if-nez v3, :cond_f

    .line 3069
    invoke-direct {p0, p1, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 3071
    :cond_f
    if-eqz v1, :cond_3

    .line 3072
    invoke-direct {p0, p1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto :goto_7

    .line 3074
    :cond_10
    and-int/lit8 v9, v4, 0x4

    if-nez v9, :cond_11

    .line 3075
    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_12

    .line 3077
    :cond_11
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 3078
    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    .line 3082
    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_7

    .line 3084
    :cond_12
    and-int/lit8 v9, v4, 0x1

    if-nez v9, :cond_13

    .line 3085
    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_14

    .line 3087
    :cond_13
    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_7

    .line 3090
    :cond_14
    const-string/jumbo v9, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected change of metered UID state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3091
    const-string/jumbo v12, ": foreground="

    .line 3090
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3092
    const-string/jumbo v12, ", whitelisted="

    .line 3090
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3093
    const-string/jumbo v12, ", blacklisted="

    .line 3090
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3094
    const-string/jumbo v12, ", newRule="

    .line 3090
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3094
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    .line 3090
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3095
    const-string/jumbo v12, ", oldRule="

    .line 3090
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3095
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    .line 3090
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3011
    .end local v5    # "newUidRules":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto/16 :goto_4
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .locals 4
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    const-wide/32 v2, 0x200000

    .line 2768
    const-string/jumbo v0, "updateRulesForGlobalChangeAL"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2770
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 2771
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 2772
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 2775
    if-eqz p1, :cond_0

    .line 2776
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 2777
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2780
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2767
    return-void

    .line 2779
    :catchall_0
    move-exception v0

    .line 2780
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2779
    throw v0
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .locals 10
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "paroled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3143
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3145
    return v1

    .line 3148
    :cond_0
    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    .line 3149
    .local v1, "isIdle":Z
    :cond_1
    if-nez v1, :cond_5

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v7, :cond_5

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v0

    .local v0, "isForeground":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(I)Z

    move-result v2

    .local v2, "isWhitelisted":Z
    and-int/lit16 v5, p2, 0xf0

    .local v5, "oldRule":I
    const/4 v3, 0x0

    .local v3, "newRule":I
    if-eqz v0, :cond_6

    if-eqz v6, :cond_2

    const/16 v3, 0x20

    :cond_2
    :goto_1
    and-int/lit8 v7, p2, 0xf

    or-int v4, v7, v3

    .local v4, "newUidRules":I
    invoke-static {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->flymeChangeUidRules(Lcom/android/server/net/NetworkPolicyManagerService;II)I

    move-result v4

    if-eq v3, v5, :cond_4

    if-eqz v3, :cond_3

    and-int/lit8 v7, v3, 0x20

    if-eqz v7, :cond_8

    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 3200
    :cond_4
    return v4

    .line 3149
    .end local v0    # "isForeground":Z
    .end local v2    # "isWhitelisted":Z
    .end local v3    # "newRule":I
    .end local v4    # "newUidRules":I
    .end local v5    # "oldRule":I
    :cond_5
    const/4 v6, 0x1

    .local v6, "restrictMode":Z
    goto :goto_0

    .line 3164
    .end local v6    # "restrictMode":Z
    .restart local v0    # "isForeground":Z
    .restart local v2    # "isWhitelisted":Z
    .restart local v3    # "newRule":I
    .restart local v5    # "oldRule":I
    :cond_6
    if-eqz v6, :cond_2

    .line 3165
    if-eqz v2, :cond_7

    const/16 v3, 0x20

    goto :goto_1

    :cond_7
    const/16 v3, 0x40

    goto :goto_1

    .line 3187
    .restart local v4    # "newUidRules":I
    :cond_8
    and-int/lit8 v7, v3, 0x40

    if-nez v7, :cond_3

    .line 3191
    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected change of non-metered UID state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3192
    const-string/jumbo v9, ": foreground="

    .line 3191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3193
    const-string/jumbo v9, ", whitelisted="

    .line 3191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3194
    const-string/jumbo v9, ", newRule="

    .line 3191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3194
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    .line 3191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3195
    const-string/jumbo v9, ", oldRule="

    .line 3191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3195
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    .line 3191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 3122
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3124
    .local v1, "oldUidRules":I
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v0

    .line 3126
    .local v0, "newUidRules":I
    if-nez v0, :cond_0

    .line 3127
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3121
    :goto_0
    return-void

    .line 3129
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x200000

    .line 2797
    const-string/jumbo v0, "updateRulesForRestrictBackgroundUL"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2799
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2801
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2796
    return-void

    .line 2800
    :catchall_0
    move-exception v0

    .line 2801
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2800
    throw v0
.end method

.method private updateRulesForRestrictPowerUL()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x200000

    .line 2786
    const-string/jumbo v0, "updateRulesForRestrictPowerUL"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2788
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 2789
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    .line 2790
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2792
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2785
    return-void

    .line 2791
    :catchall_0
    move-exception v0

    .line 2792
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2791
    throw v0
.end method

.method private updateRulesForTempWhitelistChangeUL()V
    .locals 7

    .prologue
    .line 2857
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 2858
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 2859
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2860
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 2861
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2862
    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2864
    .local v3, "uid":I
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 2865
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 2866
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 2868
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 2860
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2858
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2856
    .end local v2    # "j":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I

    .prologue
    .line 2685
    if-eqz p2, :cond_1

    .line 2686
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v0

    .line 2686
    if-eqz v0, :cond_2

    .line 2688
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 2684
    :cond_1
    :goto_0
    return-void

    .line 2690
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "chain"    # I
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .prologue
    const/4 v8, 0x1

    .line 2645
    if-eqz p1, :cond_6

    .line 2648
    move-object v4, p3

    .line 2649
    .local v4, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 2650
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 2651
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2652
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2653
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2654
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2655
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2656
    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2657
    .local v3, "uid":I
    invoke-virtual {p3, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2653
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2660
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 2661
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2662
    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2663
    .restart local v3    # "uid":I
    invoke-virtual {p3, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2660
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2651
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2666
    .end local v1    # "i":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 2667
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2668
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p3, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2666
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2671
    :cond_5
    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V

    .line 2644
    .end local v1    # "i":I
    .end local v2    # "ui":I
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_4
    return-void

    .line 2673
    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {p0, p2, v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V

    goto :goto_4
.end method

.method private updateUidStateUL(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    const-wide/32 v4, 0x200000

    .line 2538
    const-string/jumbo v1, "updateUidStateUL"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2540
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2541
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_4

    .line 2543
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2544
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 2545
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v1

    .line 2546
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v2

    .line 2545
    if-eq v1, v2, :cond_3

    .line 2547
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2548
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 2550
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_1

    .line 2551
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 2553
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v1, :cond_2

    .line 2554
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 2556
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 2558
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForegroundUL(I)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2561
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2537
    return-void

    .line 2560
    .end local v0    # "oldUidState":I
    :catchall_0
    move-exception v1

    .line 2561
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2560
    throw v1
.end method

.method private upgradeLegacyBackgroundDataUL()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1623
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "background_data"

    .line 1622
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1626
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 1627
    new-instance v0, Landroid/content/Intent;

    .line 1628
    const-string/jumbo v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    .line 1627
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1629
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1621
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1622
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsUL()Z
    .locals 6

    .prologue
    .line 495
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 496
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 498
    .local v2, "numberUsers":I
    const/4 v0, 0x0

    .line 499
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 500
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 501
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 499
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 503
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return v0
.end method

.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 3636
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3635
    return-void
.end method

.method addNetworkPolicyNL(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1935
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 1936
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 1937
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 1934
    return-void
.end method

.method public addRestrictBackgroundWhitelistedUid(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 2094
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2099
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    .line 2100
    .local v2, "oldStatus":Z
    if-eqz v2, :cond_0

    monitor-exit v4

    .line 2102
    return-void

    .line 2104
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v1

    .line 2105
    .local v1, "needFirewallRules":Z
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "adding uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to restrict background whitelist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2107
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2108
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 2107
    if-eqz v3, :cond_1

    .line 2111
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2113
    :cond_1
    if-eqz v1, :cond_2

    .line 2115
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2118
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2119
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    .line 2121
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, 0x0

    .local v0, "changed":I
    :goto_0
    monitor-exit v4

    .line 2123
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 2124
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2123
    const/16 v5, 0x9

    invoke-virtual {v3, v5, p1, v0, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2093
    return-void

    .line 2118
    .end local v0    # "changed":I
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v3

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2098
    .end local v1    # "needFirewallRules":Z
    .end local v2    # "oldStatus":Z
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2121
    .restart local v1    # "needFirewallRules":Z
    .restart local v2    # "oldStatus":Z
    :cond_4
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "changed":I
    goto :goto_0
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1746
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1749
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1752
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1753
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1754
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    .line 1755
    if-eq v0, p2, :cond_1

    .line 1756
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1745
    return-void

    .line 1752
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 461
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 460
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    .line 465
    const-string/jumbo v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 464
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2333
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "android.permission.DUMP"

    const-string/jumbo v13, "NetworkPolicy"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v11, "  "

    move-object/from16 v0, p2

    invoke-direct {v3, v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2337
    .local v3, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Landroid/util/ArraySet;

    move-object/from16 v0, p3

    array-length v11, v0

    invoke-direct {v2, v11}, Landroid/util/ArraySet;-><init>(I)V

    .line 2338
    .local v2, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    move-object/from16 v0, p3

    array-length v12, v0

    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v1, p3, v11

    .line 2339
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2338
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2342
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2343
    :try_start_0
    iget-object v13, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2344
    :try_start_1
    const-string/jumbo v11, "--unsnooze"

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2345
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 2346
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 2345
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2349
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 2350
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 2351
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2353
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2355
    const-string/jumbo v11, "Cleared snooze timestamps"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v12

    .line 2356
    return-void

    .line 2359
    .end local v4    # "i":I
    :cond_2
    :try_start_3
    const-string/jumbo v11, "System ready: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2360
    const-string/jumbo v11, "Restrict background: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2361
    const-string/jumbo v11, "Restrict power: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2362
    const-string/jumbo v11, "Device idle: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2363
    const-string/jumbo v11, "Network policies:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2365
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 2366
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2368
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2370
    const-string/jumbo v11, "Metered ifaces: "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2372
    const-string/jumbo v11, "Policy for UIDs:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2374
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    .line 2375
    .local v7, "size":I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_4

    .line 2376
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 2377
    .local v9, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 2378
    .local v6, "policy":I
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2379
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2380
    const-string/jumbo v11, " policy="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2381
    const-class v11, Landroid/net/NetworkPolicyManager;

    const-string/jumbo v14, "POLICY_"

    invoke-static {v11, v14, v6}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2375
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2384
    .end local v6    # "policy":I
    .end local v9    # "uid":I
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2386
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2387
    if-lez v7, :cond_6

    .line 2388
    const-string/jumbo v11, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2390
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_5

    .line 2391
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2392
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2393
    const-string/jumbo v11, ": "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2395
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2390
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2397
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2400
    :cond_6
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2401
    if-lez v7, :cond_8

    .line 2402
    const-string/jumbo v11, "Power save whitelist app ids:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2404
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_7

    .line 2405
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2407
    const-string/jumbo v11, ": "

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2408
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2409
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2404
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2411
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2414
    :cond_8
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2415
    if-lez v7, :cond_a

    .line 2416
    const-string/jumbo v11, "Restrict background whitelist uids:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2417
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2418
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v7, :cond_9

    .line 2419
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2420
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2421
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2418
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2423
    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2426
    :cond_a
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2427
    if-lez v7, :cond_c

    .line 2428
    const-string/jumbo v11, "Default restrict background whitelist uids:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2429
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2430
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v7, :cond_b

    .line 2431
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2433
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2430
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2435
    :cond_b
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2438
    :cond_c
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2439
    if-lez v7, :cond_e

    .line 2440
    const-string/jumbo v11, "Default restrict background whitelist uids revoked by users:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2441
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2442
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v7, :cond_d

    .line 2443
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2444
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2445
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2442
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 2447
    :cond_d
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2450
    :cond_e
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2451
    .local v5, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2452
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v11, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2454
    const-string/jumbo v11, "Status for all known UIDs:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2456
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2457
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v7, :cond_11

    .line 2458
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    .line 2459
    .restart local v9    # "uid":I
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2460
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2462
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v14, 0x10

    invoke-virtual {v11, v9, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 2463
    .local v8, "state":I
    const-string/jumbo v11, " state="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2465
    const/4 v11, 0x2

    if-gt v8, v11, :cond_f

    .line 2466
    const-string/jumbo v11, " (fg)"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2472
    :goto_a
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2473
    .local v10, "uidRules":I
    const-string/jumbo v11, " rules="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2474
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2457
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2468
    .end local v10    # "uidRules":I
    :cond_f
    const/4 v11, 0x4

    if-gt v8, v11, :cond_10

    .line 2469
    const-string/jumbo v11, " (fg svc)"

    .line 2468
    :goto_b
    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    .line 2343
    .end local v4    # "i":I
    .end local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v7    # "size":I
    .end local v8    # "state":I
    .end local v9    # "uid":I
    :catchall_0
    move-exception v11

    :try_start_4
    monitor-exit v13

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2342
    :catchall_1
    move-exception v11

    monitor-exit v12

    throw v11

    .line 2469
    .restart local v4    # "i":I
    .restart local v5    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v7    # "size":I
    .restart local v8    # "state":I
    .restart local v9    # "uid":I
    :cond_10
    :try_start_5
    const-string/jumbo v11, " (bg)"

    goto :goto_b

    .line 2477
    .end local v8    # "state":I
    .end local v9    # "uid":I
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2479
    const-string/jumbo v11, "Status for just UIDs with rules:"

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2480
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2481
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    .line 2482
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v7, :cond_12

    .line 2483
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 2484
    .restart local v9    # "uid":I
    const-string/jumbo v11, "UID="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2486
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2487
    .restart local v10    # "uidRules":I
    const-string/jumbo v11, " rules="

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2488
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2482
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2491
    .end local v9    # "uid":I
    .end local v10    # "uidRules":I
    :cond_12
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v12

    .line 2332
    return-void
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3648
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v7, "NetworkPolicy"

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v6, "no_network_reset"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3651
    return-void

    .line 3655
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 3656
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 3657
    .local v2, "template":Landroid/net/NetworkTemplate;
    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 3658
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v2}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3659
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3660
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 3661
    invoke-virtual {v1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3657
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3664
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3667
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 3669
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v6, "no_control_apps"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3671
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_3

    aget v3, v6, v4

    .line 3672
    .local v3, "uid":I
    invoke-virtual {p0, v3, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 3671
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3647
    .end local v3    # "uid":I
    :cond_3
    return-void
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1942
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1957
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1958
    .local v3, "size":I
    new-array v2, v3, [Landroid/net/NetworkPolicy;

    .line 1959
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1960
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1959
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1947
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 1948
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x33

    invoke-virtual {v4, v6, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1952
    new-array v4, v7, [Landroid/net/NetworkPolicy;

    return-object v4

    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "i":I
    .restart local v2    # "policies":[Landroid/net/NetworkPolicy;
    .restart local v3    # "size":I
    :cond_1
    monitor-exit v5

    .line 1962
    return-object v2

    .line 1956
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2266
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2272
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2272
    return-object v2

    .line 2273
    :catchall_0
    move-exception v2

    .line 2274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2273
    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2224
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 2223
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x1

    .line 2194
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v7, "NetworkPolicy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2197
    .local v1, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2199
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 2202
    .local v2, "token":J
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2204
    .local v0, "policy":I
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2206
    if-ne v0, v8, :cond_0

    monitor-exit v5

    .line 2208
    return v4

    .line 2203
    .end local v0    # "policy":I
    :catchall_0
    move-exception v4

    .line 2204
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2203
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2197
    .end local v2    # "token":J
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2210
    .restart local v0    # "policy":I
    .restart local v2    # "token":J
    :cond_0
    :try_start_4
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v6, :cond_1

    monitor-exit v5

    .line 2211
    return v8

    .line 2213
    :cond_1
    :try_start_5
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v6

    if-eqz v6, :cond_2

    .line 2214
    const/4 v4, 0x2

    :cond_2
    monitor-exit v5

    .line 2213
    return v4
.end method

.method public getRestrictBackgroundWhitelistedUids()[I
    .locals 6

    .prologue
    .line 2177
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2179
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2180
    .local v1, "size":I
    new-array v2, v1, [I

    .line 2181
    .local v2, "whitelist":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2182
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    .line 2188
    return-object v2

    .line 2178
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "whitelist":[I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1811
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1810
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    .line 1817
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 1820
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1821
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1822
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1823
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1824
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 1825
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1821
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 1829
    return-object v3

    .line 1820
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    const/4 v4, 0x0

    .line 2309
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-nez v3, :cond_0

    .line 2310
    return v4

    .line 2313
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2316
    .local v0, "ident":Landroid/net/NetworkIdentity;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2317
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkNL(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3

    .line 2320
    if-eqz v1, :cond_1

    .line 2321
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    return v3

    .line 2316
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 2323
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 2324
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 2325
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 2327
    :cond_4
    return v4
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2508
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundUL(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 2507
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method maybeRefreshTrustedTime()V
    .locals 4

    .prologue
    .line 3597
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3598
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 3596
    :cond_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2499
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 2498
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "tethering"    # Z

    .prologue
    .line 2036
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2037
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2038
    const-string/jumbo v0, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tethering on ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "); disable Data Saver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2033
    return-void

    .line 2036
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    .line 2002
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2003
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 2004
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2005
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2007
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 2008
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 2009
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2005
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2004
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2012
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2020
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unexpected type"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2014
    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 2023
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 2024
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 2025
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 2026
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2027
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v4

    .line 2001
    return-void

    .line 2017
    :pswitch_1
    :try_start_5
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2012
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method purgePowerSaveTempWhitelistUL()V
    .locals 3

    .prologue
    .line 568
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 569
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 570
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 569
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 567
    :cond_1
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1900
    return-void
.end method

.method public removeRestrictBackgroundWhitelistedUid(I)V
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2129
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2132
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidUL(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "changed":Z
    monitor-exit v3

    .line 2134
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2135
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2134
    const/16 v4, 0x9

    invoke-virtual {v3, v4, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2128
    return-void

    .line 2131
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .restart local v0    # "changed":Z
    :cond_0
    move v1, v2

    .line 2134
    goto :goto_0
.end method

.method public removeUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1763
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1766
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1769
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1770
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1771
    .local v0, "oldPolicy":I
    not-int v1, p2

    and-int p2, v0, v1

    .line 1772
    if-eq v0, p2, :cond_1

    .line 1773
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 1762
    return-void

    .line 1769
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method removeUserStateUL(IZ)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1839
    const/4 v0, 0x0

    .line 1842
    .local v0, "changed":Z
    new-array v4, v5, [I

    .line 1843
    .local v4, "wlUids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1844
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1845
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 1846
    invoke-static {v4, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 1843
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1850
    .end local v2    # "uid":I
    :cond_1
    array-length v6, v4

    if-lez v6, :cond_3

    .line 1851
    array-length v7, v4

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget v2, v4, v6

    .line 1852
    .restart local v2    # "uid":I
    invoke-direct {p0, v2, v5, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeRestrictBackgroundWhitelistedUidUL(IZZ)Z

    .line 1851
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1854
    .end local v2    # "uid":I
    :cond_2
    const/4 v0, 0x1

    .line 1858
    :cond_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-ltz v1, :cond_5

    .line 1859
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 1860
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_4

    .line 1861
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 1862
    const/4 v0, 0x1

    .line 1858
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1867
    .end local v2    # "uid":I
    :cond_5
    new-array v3, v5, [I

    .line 1868
    .local v3, "uids":[I
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 1869
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 1870
    .restart local v2    # "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_6

    .line 1871
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 1868
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1875
    .end local v2    # "uid":I
    :cond_7
    array-length v6, v3

    if-lez v6, :cond_9

    .line 1876
    array-length v6, v3

    :goto_4
    if-ge v5, v6, :cond_8

    aget v2, v3, v5

    .line 1877
    .restart local v2    # "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1876
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1879
    .end local v2    # "uid":I
    :cond_8
    const/4 v0, 0x1

    .line 1881
    :cond_9
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1882
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 1883
    if-eqz p2, :cond_a

    if-eqz v0, :cond_a

    .line 1884
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    monitor-exit v6

    .line 1887
    return v0

    .line 1881
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setConnectivityListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    if-eqz v0, :cond_0

    .line 1894
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Connectivity listener already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1896
    :cond_0
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnectivityListener:Landroid/net/INetworkPolicyListener;

    .line 1891
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const-wide/32 v4, 0x200000

    .line 2230
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    const-string/jumbo v0, "setDeviceIdleMode"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2234
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2250
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2235
    return-void

    .line 2237
    :cond_0
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 2238
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 2241
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    monitor-exit v1

    .line 2244
    if-eqz p1, :cond_2

    .line 2245
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2250
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2229
    return-void

    .line 2233
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2249
    :catchall_1
    move-exception v0

    .line 2250
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2249
    throw v0

    .line 2247
    :cond_2
    :try_start_6
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 1915
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1919
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1920
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1921
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1922
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 1923
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1930
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1914
    return-void

    .line 1921
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v4

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1920
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1929
    :catchall_2
    move-exception v2

    .line 1930
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1929
    throw v2
.end method

.method public setRestrictBackground(Z)V
    .locals 6
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2046
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2049
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2050
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2051
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v2, :cond_0

    .line 2053
    const-string/jumbo v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRestrictBackground: already "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2054
    return-void

    .line 2056
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2063
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x6

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2045
    return-void

    .line 2050
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v4

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2059
    :catchall_1
    move-exception v2

    .line 2060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2059
    throw v2

    :cond_1
    move v2, v3

    .line 2063
    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 1726
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v5, "NetworkPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1729
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cannot apply policy to UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1731
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1732
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 1734
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1735
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    .line 1736
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1739
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 1725
    return-void

    .line 1738
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    .line 1739
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1738
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1731
    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1991
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1995
    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1990
    return-void

    .line 1996
    :catchall_0
    move-exception v2

    .line 1997
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    throw v2
.end method

.method public systemReady()V
    .locals 18

    .prologue
    .line 577
    const-string/jumbo v13, "systemReady"

    const-wide/32 v14, 0x200000

    invoke-static {v14, v15, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 579
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v13

    if-nez v13, :cond_0

    .line 580
    const-string/jumbo v13, "NetworkPolicy"

    const-string/jumbo v14, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 683
    const-wide/32 v14, 0x200000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 581
    return-void

    .line 584
    :cond_0
    :try_start_1
    const-class v13, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 587
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 588
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 589
    const-class v13, Landroid/os/PowerManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 590
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 591
    new-instance v16, Lcom/android/server/net/NetworkPolicyManagerService$15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 590
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v13}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 605
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 614
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 615
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 621
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 622
    const/4 v15, 0x3

    .line 621
    invoke-interface {v13, v14, v15}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;I)V

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v13, v14}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 629
    :goto_0
    :try_start_7
    new-instance v10, Landroid/content/IntentFilter;

    .line 630
    const-string/jumbo v13, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 629
    invoke-direct {v10, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 631
    .local v10, "whitelistFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v10, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 634
    const-class v13, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DeviceIdleController$LocalService;

    .line 635
    .local v4, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v4, v13}, Lcom/android/server/DeviceIdleController$LocalService;->setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V

    .line 638
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v13, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 639
    .local v3, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v15, "android.permission.CONNECTIVITY_INTERNAL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v3, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 642
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 643
    .local v6, "packageFilter":Landroid/content/IntentFilter;
    const-string/jumbo v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string/jumbo v13, "package"

    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v6, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 648
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v15, Landroid/content/IntentFilter;

    const-string/jumbo v16, "android.intent.action.UID_REMOVED"

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 648
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v14, v15, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 652
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 653
    .local v9, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v13, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    const-string/jumbo v13, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v9, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 658
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v13, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v8, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 659
    .local v8, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v15, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    .line 659
    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v8, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 663
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v13, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v2, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 664
    .local v2, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v15, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v2, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 667
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v13, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v7, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 668
    .local v7, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 669
    const-string/jumbo v15, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    .line 668
    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v7, v15, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 673
    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v13, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v11, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 674
    .local v11, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v11, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 677
    new-instance v12, Landroid/content/IntentFilter;

    .line 678
    const-string/jumbo v13, "android.net.wifi.STATE_CHANGE"

    .line 677
    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 679
    .local v12, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v0, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;)V

    invoke-virtual {v13, v14}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 683
    const-wide/32 v14, 0x200000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 576
    return-void

    .line 587
    .end local v2    # "allowFilter":Landroid/content/IntentFilter;
    .end local v3    # "connFilter":Landroid/content/IntentFilter;
    .end local v4    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v6    # "packageFilter":Landroid/content/IntentFilter;
    .end local v7    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v8    # "statsFilter":Landroid/content/IntentFilter;
    .end local v9    # "userFilter":Landroid/content/IntentFilter;
    .end local v10    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v11    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v12    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v13

    :try_start_8
    monitor-exit v15

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 586
    :catchall_1
    move-exception v13

    :try_start_9
    monitor-exit v14

    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 682
    :catchall_2
    move-exception v13

    .line 683
    const-wide/32 v14, 0x200000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 682
    throw v13

    .line 624
    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1907
    return-void
.end method

.method updateNetworkEnabledNL()V
    .locals 18

    .prologue
    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v6

    .line 1208
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_4

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkPolicy;

    .line 1211
    .local v13, "policy":Landroid/net/NetworkPolicy;
    iget-wide v2, v13, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v16, -0x1

    cmp-long v2, v2, v16

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1216
    invoke-static {v6, v7, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1217
    .local v4, "start":J
    move-wide v8, v6

    .line 1218
    .local v8, "end":J
    iget-object v3, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 1221
    .local v14, "totalBytes":J
    invoke-virtual {v13, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1222
    iget-wide v2, v13, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v12, 0x1

    .line 1223
    .local v12, "overLimitWithoutSnooze":Z
    :goto_1
    if-eqz v12, :cond_3

    const/4 v11, 0x0

    .line 1225
    .local v11, "networkEnabled":Z
    :goto_2
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 1208
    .end local v4    # "start":J
    .end local v8    # "end":J
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v14    # "totalBytes":J
    :goto_3
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1212
    :cond_0
    iget-object v2, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_3

    .line 1222
    .restart local v4    # "start":J
    .restart local v8    # "end":J
    .restart local v14    # "totalBytes":J
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1221
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 1223
    .restart local v12    # "overLimitWithoutSnooze":Z
    :cond_3
    const/4 v11, 0x1

    .restart local v11    # "networkEnabled":Z
    goto :goto_2

    .line 1201
    .end local v4    # "start":J
    .end local v8    # "end":J
    .end local v11    # "networkEnabled":Z
    .end local v12    # "overLimitWithoutSnooze":Z
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    :cond_4
    return-void
.end method

.method updateNetworkRulesNL()V
    .locals 44

    .prologue
    .line 1266
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v37

    .line 1274
    .local v37, "states":[Landroid/net/NetworkState;
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    array-length v6, v0

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1275
    .local v13, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v14, Landroid/util/ArraySet;

    move-object/from16 v0, v37

    array-length v6, v0

    invoke-direct {v14, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 1276
    .local v14, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object/from16 v0, v37

    array-length v7, v0

    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v36, v37, v6

    .line 1277
    .local v36, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v40, v0

    if-eqz v40, :cond_3

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v40

    if-eqz v40, :cond_3

    .line 1278
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 1279
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    .line 1280
    const/16 v41, 0x0

    .line 1279
    invoke-virtual/range {v40 .. v41}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 1281
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object/from16 v40, v0

    .line 1282
    const/16 v41, 0xc

    .line 1281
    invoke-virtual/range {v40 .. v41}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v40

    .line 1277
    if-eqz v40, :cond_3

    .line 1283
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v19

    .line 1285
    .local v19, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 1286
    .local v12, "baseIface":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 1287
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    :cond_1
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v35

    .line 1293
    .local v35, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "stackedLink$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_3

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/LinkProperties;

    .line 1294
    .local v33, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v33 .. v33}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v32

    .line 1295
    .local v32, "stackedIface":Ljava/lang/String;
    if-eqz v32, :cond_2

    .line 1296
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1267
    .end local v12    # "baseIface":Ljava/lang/String;
    .end local v13    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v14    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "ident":Landroid/net/NetworkIdentity;
    .end local v32    # "stackedIface":Ljava/lang/String;
    .end local v33    # "stackedLink":Landroid/net/LinkProperties;
    .end local v34    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v35    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v36    # "state":Landroid/net/NetworkState;
    .end local v37    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v15

    .line 1269
    .local v15, "e":Landroid/os/RemoteException;
    return-void

    .line 1276
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v13    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v14    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v36    # "state":Landroid/net/NetworkState;
    .restart local v37    # "states":[Landroid/net/NetworkState;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1303
    .end local v36    # "state":Landroid/net/NetworkState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 1304
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 1305
    .local v22, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    .local v18, "i":I
    :goto_2
    if-ltz v18, :cond_8

    .line 1306
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/NetworkPolicy;

    .line 1308
    .local v29, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1309
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v24, v6, -0x1

    .local v24, "j":I
    :goto_3
    if-ltz v24, :cond_6

    .line 1310
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/Pair;

    .line 1311
    .local v20, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkIdentity;

    invoke-virtual {v7, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1312
    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_5
    add-int/lit8 v24, v24, -0x1

    goto :goto_3

    .line 1316
    .end local v20    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_6
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 1317
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    .line 1318
    .local v23, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    .end local v23    # "ifaces":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 1322
    .end local v24    # "j":I
    .end local v29    # "policy":Landroid/net/NetworkPolicy;
    :cond_8
    const-wide v26, 0x7fffffffffffffffL

    .line 1323
    .local v26, "lowestRule":J
    new-instance v28, Landroid/util/ArraySet;

    move-object/from16 v0, v37

    array-length v6, v0

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(I)V

    .line 1327
    .local v28, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v10

    .line 1328
    .local v10, "currentTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    :goto_4
    if-ltz v18, :cond_13

    .line 1329
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/NetworkPolicy;

    .line 1330
    .restart local v29    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    .line 1334
    .restart local v23    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1335
    move-object/from16 v0, v29

    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1336
    .local v8, "start":J
    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v38

    .line 1346
    .local v38, "totalBytes":J
    :goto_5
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v40, -0x1

    cmp-long v6, v6, v40

    if-eqz v6, :cond_c

    const/16 v17, 0x1

    .line 1347
    .local v17, "hasWarning":Z
    :goto_6
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v40, -0x1

    cmp-long v6, v6, v40

    if-eqz v6, :cond_d

    const/16 v16, 0x1

    .line 1348
    .local v16, "hasLimit":Z
    :goto_7
    if-nez v16, :cond_9

    move-object/from16 v0, v29

    iget-boolean v6, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v6, :cond_10

    .line 1350
    :cond_9
    if-nez v16, :cond_e

    .line 1353
    const-wide v30, 0x7fffffffffffffffL

    .line 1365
    .local v30, "quotaBytes":J
    :goto_8
    move-object/from16 v0, v23

    array-length v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_a

    .line 1367
    const-string/jumbo v6, "NetworkPolicy"

    const-string/jumbo v7, "shared quota unsupported; generating rule for each iface"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, v23

    array-length v7, v0

    :goto_9
    if-ge v6, v7, :cond_10

    aget-object v21, v23, v6

    .line 1372
    .local v21, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    .line 1373
    const/16 v41, 0x20

    shr-long v42, v30, v41

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v41, v0

    const-wide/16 v42, -0x1

    and-long v42, v42, v30

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v42, v0

    .line 1372
    const/16 v43, 0xa

    move-object/from16 v0, v40

    move/from16 v1, v43

    move/from16 v2, v41

    move/from16 v3, v42

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/os/Message;->sendToTarget()V

    .line 1375
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1370
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1338
    .end local v8    # "start":J
    .end local v16    # "hasLimit":Z
    .end local v17    # "hasWarning":Z
    .end local v21    # "iface":Ljava/lang/String;
    .end local v30    # "quotaBytes":J
    .end local v38    # "totalBytes":J
    :cond_b
    const-wide v8, 0x7fffffffffffffffL

    .line 1339
    .restart local v8    # "start":J
    const-wide/16 v38, 0x0

    .restart local v38    # "totalBytes":J
    goto :goto_5

    .line 1346
    :cond_c
    const/16 v17, 0x0

    .restart local v17    # "hasWarning":Z
    goto :goto_6

    .line 1347
    :cond_d
    const/16 v16, 0x0

    goto :goto_7

    .line 1354
    .restart local v16    # "hasLimit":Z
    :cond_e
    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_f

    .line 1357
    const-wide v30, 0x7fffffffffffffffL

    .restart local v30    # "quotaBytes":J
    goto :goto_8

    .line 1362
    .end local v30    # "quotaBytes":J
    :cond_f
    const-wide/16 v6, 0x1

    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v40, v0

    sub-long v40, v40, v38

    move-wide/from16 v0, v40

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v30

    .restart local v30    # "quotaBytes":J
    goto :goto_8

    .line 1380
    .end local v30    # "quotaBytes":J
    :cond_10
    if-eqz v17, :cond_11

    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v26

    if-gez v6, :cond_11

    .line 1381
    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v26, v0

    .line 1383
    :cond_11
    if-eqz v16, :cond_12

    move-object/from16 v0, v29

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v26

    if-gez v6, :cond_12

    .line 1384
    move-object/from16 v0, v29

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v26, v0

    .line 1328
    :cond_12
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_4

    .line 1388
    .end local v8    # "start":J
    .end local v16    # "hasLimit":Z
    .end local v17    # "hasWarning":Z
    .end local v23    # "ifaces":[Ljava/lang/String;
    .end local v29    # "policy":Landroid/net/NetworkPolicy;
    .end local v38    # "totalBytes":J
    :cond_13
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    :goto_a
    if-ltz v18, :cond_14

    .line 1389
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1391
    .restart local v21    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xa

    .line 1392
    const v40, 0x7fffffff

    const/16 v41, -0x1

    .line 1391
    move/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v21

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1394
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1388
    add-int/lit8 v18, v18, -0x1

    goto :goto_a

    .line 1397
    .end local v21    # "iface":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v40, 0x7

    move/from16 v0, v40

    invoke-virtual {v6, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1400
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    :goto_b
    if-ltz v18, :cond_16

    .line 1401
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1402
    .restart local v21    # "iface":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 1403
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1400
    :cond_15
    add-int/lit8 v18, v18, -0x1

    goto :goto_b

    .line 1407
    .end local v21    # "iface":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 1409
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/String;

    .line 1410
    .local v25, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1261
    return-void
.end method

.method updateNotificationsNL()V
    .locals 14

    .prologue
    .line 951
    new-instance v6, Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 952
    .local v6, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 958
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v4

    .line 959
    .local v4, "currentTime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_4

    .line 960
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkPolicy;

    .line 962
    .local v10, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 959
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 963
    :cond_1
    invoke-virtual {v10}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    invoke-static {v4, v5, v10}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 966
    .local v2, "start":J
    move-wide v8, v4

    .line 967
    .local v8, "end":J
    iget-object v1, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 969
    .local v12, "totalBytes":J
    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeEnqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeNotifyOverLimitLocked(Landroid/net/NetworkPolicy;IJ)V

    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    #invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    goto :goto_1

    :cond_3
    iget-object v0, v10, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    invoke-virtual {v10, v12, v13}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, v10, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v10, v0, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeNotifyOverLimitLocked(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    .end local v2    # "start":J
    .end local v8    # "end":J
    .end local v10    # "policy":Landroid/net/NetworkPolicy;
    .end local v12    # "totalBytes":J
    :cond_4
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_2
    if-ltz v7, :cond_6

    .line 988
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 989
    .local v11, "tag":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 990
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    .line 987
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 947
    .end local v11    # "tag":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method updatePowerSaveTempWhitelistUL()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 549
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 550
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 551
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v6}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    move-result-object v4

    .line 555
    .local v4, "whitelist":[I
    if-eqz v4, :cond_1

    .line 556
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_1

    aget v3, v4, v5

    .line 557
    .local v3, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 560
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v1

    .line 546
    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistUL()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 470
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v2

    .line 471
    .local v2, "whitelist":[I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 472
    if-eqz v2, :cond_0

    .line 473
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, v2, v4

    .line 474
    .local v1, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 473
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    .end local v1    # "uid":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v4}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v2

    .line 478
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 479
    if-eqz v2, :cond_1

    .line 480
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v1, v2, v3

    .line 481
    .restart local v1    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 484
    .end local v1    # "uid":I
    .end local v2    # "whitelist":[I
    :catch_0
    move-exception v0

    .line 468
    :cond_1
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x2

    .line 2725
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2727
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2728
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2729
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2732
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 2724
    :goto_0
    return-void

    .line 2730
    :cond_2
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method updateRuleForDeviceIdleUL(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2638
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 2637
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2624
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 2623
    return-void
.end method

.method updateRulesForAppIdleParoleUL()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2741
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v3

    .line 2742
    .local v3, "paroled":Z
    if-eqz v3, :cond_1

    .line 2743
    .local v0, "enableChain":Z
    :goto_0
    const/4 v6, 0x2

    invoke-direct {p0, v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 2745
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 2746
    .local v4, "ruleCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 2747
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2748
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 2749
    .local v2, "oldRules":I
    if-eqz v0, :cond_2

    .line 2754
    and-int/lit8 v2, v2, 0xf

    .line 2759
    :cond_0
    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    .line 2746
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2742
    .end local v0    # "enableChain":Z
    .end local v1    # "i":I
    .end local v2    # "oldRules":I
    .end local v4    # "ruleCount":I
    .end local v5    # "uid":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2757
    .restart local v0    # "enableChain":Z
    .restart local v1    # "i":I
    .restart local v2    # "oldRules":I
    .restart local v4    # "ruleCount":I
    .restart local v5    # "uid":I
    :cond_2
    and-int/lit16 v6, v2, 0xf0

    if-nez v6, :cond_0

    goto :goto_2

    .line 2740
    .end local v2    # "oldRules":I
    .end local v5    # "uid":I
    :cond_3
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x200000

    const/4 v7, 0x0

    .line 2696
    const-string/jumbo v6, "updateRulesForAppIdleUL"

    invoke-static {v12, v13, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2698
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2699
    .local v3, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 2702
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 2703
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "ui":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2704
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2705
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v0

    .line 2706
    .local v0, "idleUids":[I
    array-length v8, v0

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_1

    aget v2, v0, v6

    .line 2707
    .local v2, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2711
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2712
    const/4 v9, 0x2

    invoke-virtual {v3, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2706
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2703
    .end local v2    # "uid":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2718
    .end local v0    # "idleUids":[I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, v6, v3, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesAsync(ILandroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2720
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2695
    return-void

    .line 2719
    .end local v1    # "ui":I
    .end local v3    # "uidRules":Landroid/util/SparseIntArray;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    .line 2720
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2719
    throw v6
.end method

.method updateRulesForDeviceIdleUL()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x200000

    .line 2628
    const-string/jumbo v0, "updateRulesForDeviceIdleUL"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2630
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 2631
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 2630
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2633
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2627
    return-void

    .line 2632
    :catchall_0
    move-exception v0

    .line 2633
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2632
    throw v0
.end method

.method updateRulesForPowerSaveUL()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x200000

    .line 2614
    const-string/jumbo v0, "updateRulesForPowerSaveUL"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2616
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 2617
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 2616
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2619
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2613
    return-void

    .line 2618
    :catchall_0
    move-exception v0

    .line 2619
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2618
    throw v0
.end method

.method writePolicyAL()V
    .locals 14

    .prologue
    .line 1636
    const/4 v1, 0x0

    .line 1638
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1640
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1641
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1642
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1644
    const-string/jumbo v11, "policy-list"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1645
    const-string/jumbo v11, "version"

    const/16 v12, 0xa

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1646
    const-string/jumbo v11, "restrictBackground"

    iget-boolean v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1649
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v2, v11, :cond_4

    .line 1650
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 1651
    .local v6, "policy":Landroid/net/NetworkPolicy;
    iget-object v9, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1652
    .local v9, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1649
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1654
    :cond_0
    const-string/jumbo v11, "network-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1655
    const-string/jumbo v11, "networkTemplate"

    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v12

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1656
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    .line 1657
    .local v8, "subscriberId":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1658
    const-string/jumbo v11, "subscriberId"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1660
    :cond_1
    invoke-virtual {v9}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 1661
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1662
    const-string/jumbo v11, "networkId"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1664
    :cond_2
    const-string/jumbo v11, "cycleDay"

    iget v12, v6, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1665
    const-string/jumbo v11, "cycleTimezone"

    iget-object v12, v6, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v4, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1666
    const-string/jumbo v11, "warningBytes"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1667
    const-string/jumbo v11, "limitBytes"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1668
    const-string/jumbo v11, "lastWarningSnooze"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1669
    const-string/jumbo v11, "lastLimitSnooze"

    iget-wide v12, v6, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1670
    const-string/jumbo v11, "metered"

    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1671
    const-string/jumbo v11, "inferred"

    iget-boolean v12, v6, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1672
    const-string/jumbo v11, "network-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1717
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    .end local v8    # "subscriberId":Ljava/lang/String;
    .end local v9    # "template":Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v0

    .line 1718
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 1719
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1633
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    .line 1676
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_4
    const/4 v2, 0x0

    :goto_3
    :try_start_1
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_6

    .line 1677
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 1678
    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1681
    .local v5, "policy":I
    if-nez v5, :cond_5

    .line 1676
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1683
    :cond_5
    const-string/jumbo v11, "uid-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1684
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1685
    const-string/jumbo v11, "policy"

    invoke-static {v4, v11, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1686
    const-string/jumbo v11, "uid-policy"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 1689
    .end local v5    # "policy":I
    .end local v10    # "uid":I
    :cond_6
    const-string/jumbo v11, "policy-list"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1692
    const-string/jumbo v11, "whitelist"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1695
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 1696
    .local v7, "size":I
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_7

    .line 1697
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 1698
    .restart local v10    # "uid":I
    const-string/jumbo v11, "restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1699
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1700
    const-string/jumbo v11, "restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1696
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1704
    .end local v10    # "uid":I
    :cond_7
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 1705
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v7, :cond_8

    .line 1706
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .line 1707
    .restart local v10    # "uid":I
    const-string/jumbo v11, "revoked-restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1708
    const-string/jumbo v11, "uid"

    invoke-static {v4, v11, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1709
    const-string/jumbo v11, "revoked-restrict-background"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1705
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1712
    .end local v10    # "uid":I
    :cond_8
    const-string/jumbo v11, "whitelist"

    const/4 v12, 0x0

    invoke-interface {v4, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1714
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1716
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private flymeChangeNotification(Landroid/app/Notification$Builder;Landroid/net/NetworkPolicy;J)V
    .locals 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .param p3, "totalBytes"    # J

    .prologue
    iget-object v1, p2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    sget v1, Lcom/flyme/internal/R$drawable;->mz_stat_sys_traffic_warn:I

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    sget v2, Lcom/flyme/internal/R$drawable;->mz_status_ic_traffic_warn:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    return-void
.end method

.method private flymeEnqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 29
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v9

    .local v9, "tag":Ljava/lang/String;
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v18, "builder":Landroid/app/Notification$Builder;
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const-wide/16 v10, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, #android:color@system_notification_accent_color#t

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    const-string v14, "android.net.action.USER_DELETE_SNOOZED_NOTIFICATION"

    .local v14, "ACTION_USER_DELETE_SNOOZED_NOTIFICATION":Ljava/lang/String;
    const-string v15, "android.net.NETWORK_POLICY"

    .local v15, "EXTRA_NETWORK_POLICY":Ljava/lang/String;
    const-string v16, "android.net.TYPE"

    .local v16, "EXTRA_TYPE":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .local v23, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeChangeNotification(Landroid/app/Notification$Builder;Landroid/net/NetworkPolicy;J)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .local v7, "packageName":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v12, v6, [I

    .local v12, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-interface/range {v6 .. v13}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "packageName":Ljava/lang/String;
    .end local v12    # "idReceived":[I
    :goto_1
    return-void

    :pswitch_0
    const v6, #android:string@data_usage_warning_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .local v27, "title":Ljava/lang/CharSequence;
    const v6, #android:string@data_usage_warning_body#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "body":Ljava/lang/CharSequence;
    const v6, #android:drawable@stat_notify_error#t

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v26

    .local v26, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v26

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v28

    .local v28, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v28

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v17    # "body":Ljava/lang/CharSequence;
    .end local v26    # "snoozeIntent":Landroid/content/Intent;
    .end local v27    # "title":Ljava/lang/CharSequence;
    .end local v28    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v6, #android:string@data_usage_limit_body#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .restart local v17    # "body":Ljava/lang/CharSequence;
    const v21, #android:drawable@stat_notify_disabled_data#t

    .local v21, "icon":I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    const/16 v27, 0x0

    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v19, "deleteIntent":Landroid/content/Intent;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v22

    .local v22, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v22

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v19    # "deleteIntent":Landroid/content/Intent;
    .end local v22    # "intent":Landroid/content/Intent;
    :pswitch_2
    const v6, #android:string@data_usage_3g_limit_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v6, #android:string@data_usage_4g_limit_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v6, #android:string@data_usage_mobile_limit_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v6, #android:string@data_usage_wifi_limit_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    const v21, #android:drawable@stat_notify_error#t

    goto/16 :goto_2

    .end local v17    # "body":Ljava/lang/CharSequence;
    .end local v21    # "icon":I
    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v24, p3, v10

    .local v24, "overBytes":J
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v24

    invoke-static {v8, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v6, v10

    const v8, #android:string@data_usage_limit_snoozed_body#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    packed-switch v6, :pswitch_data_2

    const/16 v27, 0x0

    :goto_3
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v6, #android:drawable@stat_notify_error#t

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v19    # "deleteIntent":Landroid/content/Intent;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v22

    .restart local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v10, 0x8000000

    move-object/from16 v0, v22

    invoke-static {v6, v8, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v19    # "deleteIntent":Landroid/content/Intent;
    .end local v22    # "intent":Landroid/content/Intent;
    :pswitch_7
    const v6, #android:string@data_usage_3g_limit_snoozed_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v6, #android:string@data_usage_4g_limit_snoozed_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v6, #android:string@data_usage_mobile_limit_snoozed_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .end local v27    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v6, #android:string@data_usage_wifi_limit_snoozed_title#t

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v27

    .restart local v27    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .end local v17    # "body":Ljava/lang/CharSequence;
    .end local v24    # "overBytes":J
    .end local v27    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v20

    .local v20, "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private flymeNotifyOverLimitLocked(Landroid/net/NetworkPolicy;IJ)V
    .locals 5
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeEnqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method flymeInvokeMethodIsUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v0

    return v0
.end method

.method flymeInvokeMethodIsUidForegroundOnRestrictPowerUL(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v0

    return v0
.end method
