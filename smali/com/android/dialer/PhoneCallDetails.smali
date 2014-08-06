.class public Lcom/android/dialer/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final accountType:Ljava/lang/String;

.field public final callTypes:[I

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final date:J

.field public final duration:J

.field public final durationType:I

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;

.field public final subscription:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJII)V
    .locals 19
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "subscription"    # I
    .param p11, "durationType"    # I

    .prologue
    .line 71
    const-string v12, ""

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v18}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "subscription"    # I
    .param p11, "durationType"    # I
    .param p12, "name"    # Ljava/lang/CharSequence;
    .param p13, "numberType"    # I
    .param p14, "numberLabel"    # Ljava/lang/CharSequence;
    .param p15, "contactUri"    # Landroid/net/Uri;
    .param p16, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 81
    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 82
    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    .line 85
    iput-wide p6, p0, Lcom/android/dialer/PhoneCallDetails;->date:J

    .line 86
    iput-wide p8, p0, Lcom/android/dialer/PhoneCallDetails;->duration:J

    .line 87
    iput-object p12, p0, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 88
    iput p13, p0, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    .line 89
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 90
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 91
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 92
    iput p10, p0, Lcom/android/dialer/PhoneCallDetails;->subscription:I

    .line 93
    iput p11, p0, Lcom/android/dialer/PhoneCallDetails;->durationType:I

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dialer/PhoneCallDetails;->accountName:Ljava/lang/String;

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dialer/PhoneCallDetails;->accountType:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "subscription"    # I
    .param p11, "durationType"    # I
    .param p12, "name"    # Ljava/lang/CharSequence;
    .param p13, "numberType"    # I
    .param p14, "numberLabel"    # Ljava/lang/CharSequence;
    .param p15, "contactUri"    # Landroid/net/Uri;
    .param p16, "photoUri"    # Landroid/net/Uri;
    .param p17, "accountName"    # Ljava/lang/String;
    .param p18, "accountType"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 103
    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 104
    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    .line 107
    iput-wide p6, p0, Lcom/android/dialer/PhoneCallDetails;->date:J

    .line 108
    iput-wide p8, p0, Lcom/android/dialer/PhoneCallDetails;->duration:J

    .line 109
    iput-object p12, p0, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 110
    iput p13, p0, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    .line 111
    iput-object p14, p0, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 112
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 113
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 114
    iput p10, p0, Lcom/android/dialer/PhoneCallDetails;->subscription:I

    .line 115
    iput p11, p0, Lcom/android/dialer/PhoneCallDetails;->durationType:I

    .line 116
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->accountName:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->accountType:Ljava/lang/String;

    .line 118
    return-void
.end method
