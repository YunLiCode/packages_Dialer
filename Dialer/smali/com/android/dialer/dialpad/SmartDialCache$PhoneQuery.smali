.class public interface abstract Lcom/android/dialer/dialpad/SmartDialCache$PhoneQuery;
.super Ljava/lang/Object;
.source "SmartDialCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/SmartDialCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhoneQuery"
.end annotation


# static fields
.field public static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field public static final PROJECTION_PRIMARY:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_entries"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialCache$PhoneQuery;->URI:Landroid/net/Uri;

    .line 138
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const-string v1, "contact_id"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialCache$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 149
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const-string v1, "contact_id"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialCache$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    return-void
.end method
