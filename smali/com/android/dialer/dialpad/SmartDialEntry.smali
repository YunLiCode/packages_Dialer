.class public Lcom/android/dialer/dialpad/SmartDialEntry;
.super Ljava/lang/Object;
.source "SmartDialEntry.java"


# instance fields
.field public final contactId:J

.field public final contactUri:Landroid/net/Uri;

.field public final displayName:Ljava/lang/CharSequence;

.field public final label:Ljava/lang/String;

.field public final loookupKey:Ljava/lang/String;

.field public final matchPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation
.end field

.field public final phoneNumber:Ljava/lang/CharSequence;

.field public final phoneNumberMatchPosition:Lcom/android/dialer/dialpad/SmartDialMatchPosition;

.field public final photoId:J

.field public final type:I


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "loookupKey"    # Ljava/lang/String;
    .param p4, "photoId"    # J
    .param p6, "displayName"    # Ljava/lang/CharSequence;
    .param p7, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p8, "type"    # I
    .param p9, "label"    # Ljava/lang/String;
    .param p11, "phoneNumberMatchPosition"    # Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p10, "matchPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->contactId:J

    .line 44
    iput-object p3, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->loookupKey:Ljava/lang/String;

    .line 45
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->contactUri:Landroid/net/Uri;

    .line 46
    iput-wide p4, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->photoId:J

    .line 47
    iput-object p6, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->displayName:Ljava/lang/CharSequence;

    .line 48
    iput-object p7, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->phoneNumber:Ljava/lang/CharSequence;

    .line 49
    iput-object p9, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->label:Ljava/lang/String;

    .line 50
    iput p8, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->type:I

    .line 51
    iput-object p10, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->matchPositions:Ljava/util/ArrayList;

    .line 52
    iput-object p11, p0, Lcom/android/dialer/dialpad/SmartDialEntry;->phoneNumberMatchPosition:Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 53
    return-void
.end method
