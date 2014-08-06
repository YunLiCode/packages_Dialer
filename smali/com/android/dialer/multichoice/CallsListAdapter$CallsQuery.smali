.class public Lcom/android/dialer/multichoice/CallsListAdapter$CallsQuery;
.super Ljava/lang/Object;
.source "CallsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/multichoice/CallsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CallsQuery"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/multichoice/CallsListAdapter$CallsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/dialer/multichoice/CallsListAdapter$CallsQuery;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
