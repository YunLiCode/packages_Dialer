.class public abstract Lcom/android/dialer/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDetailIntentProvider(Lcom/android/dialer/calllog/CallLogAdapter;IJII)Lcom/android/dialer/calllog/IntentProvider;
    .locals 7
    .param p0, "adapter"    # Lcom/android/dialer/calllog/CallLogAdapter;
    .param p1, "position"    # I
    .param p2, "id"    # J
    .param p4, "groupSize"    # I
    .param p5, "subscription"    # I

    .prologue
    .line 68
    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$3;

    move-object v1, p0

    move v2, p1

    move v3, p4

    move-wide v4, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/calllog/IntentProvider$3;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;IIJI)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;I)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subscription"    # I

    .prologue
    .line 39
    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/IntentProvider$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
