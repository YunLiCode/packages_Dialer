.class public Lcom/android/dialer/calllog/HotlineHelper;
.super Ljava/lang/Object;
.source "HotlineHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/dialer/calllog/HotlineHelper;

.field public static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mHotlineMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/dialer/calllog/HotlineHelper$Hotline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/dialer/calllog/HotlineHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/HotlineHelper;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/calllog/HotlineHelper;->INSTANCE:Lcom/android/dialer/calllog/HotlineHelper;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/dialer/calllog/HotlineHelper;->mHotlineMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/HotlineHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-class v1, Lcom/android/dialer/calllog/HotlineHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/dialer/calllog/HotlineHelper;->INSTANCE:Lcom/android/dialer/calllog/HotlineHelper;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/HotlineHelper;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/android/dialer/calllog/HotlineHelper;

    invoke-direct {v0}, Lcom/android/dialer/calllog/HotlineHelper;-><init>()V

    sput-object v0, Lcom/android/dialer/calllog/HotlineHelper;->INSTANCE:Lcom/android/dialer/calllog/HotlineHelper;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/dialer/calllog/HotlineHelper;->INSTANCE:Lcom/android/dialer/calllog/HotlineHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getHotlineByNumber(Ljava/lang/CharSequence;)Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/HotlineHelper;->getHotlineByNumber(Ljava/lang/String;)Lcom/android/dialer/calllog/HotlineHelper$Hotline;

    move-result-object v0

    return-object v0
.end method

.method public getHotlineByNumber(Ljava/lang/String;)Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "newNumber":Ljava/lang/String;
    sget-object v1, Lcom/android/dialer/calllog/HotlineHelper;->mHotlineMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/HotlineHelper$Hotline;

    return-object v1
.end method
