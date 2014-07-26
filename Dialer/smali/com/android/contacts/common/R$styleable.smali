.class public final Lcom/android/contacts/common/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CallLog:[I

.field public static final ContactBrowser:[I

.field public static final ContactListItemView:[I

.field public static final Favorites:[I

.field public static final ProportionalLayout:[I

.field public static final VoicemailStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2569
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/common/R$styleable;->CallLog:[I

    .line 2662
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/common/R$styleable;->ContactBrowser:[I

    .line 2777
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/contacts/common/R$styleable;->ContactListItemView:[I

    .line 3261
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010024

    aput v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/R$styleable;->Favorites:[I

    .line 3292
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/contacts/common/R$styleable;->ProportionalLayout:[I

    .line 3339
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/contacts/common/R$styleable;->VoicemailStatus:[I

    return-void

    .line 2569
    nop

    :array_0
    .array-data 4
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
    .end array-data

    .line 2662
    :array_1
    .array-data 4
        0x7f01001f
        0x7f010020
        0x7f010021
    .end array-data

    .line 2777
    :array_2
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
    .end array-data

    .line 3292
    :array_3
    .array-data 4
        0x7f010022
        0x7f010023
    .end array-data

    .line 3339
    :array_4
    .array-data 4
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2550
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
