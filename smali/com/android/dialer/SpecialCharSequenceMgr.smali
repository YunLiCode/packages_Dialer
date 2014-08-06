.class public Lcom/android/dialer/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;,
        Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static factoryTestCommands:[Ljava/lang/String;

.field private static masterClearCommands:[Ljava/lang/String;

.field private static sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

.field private static setQXDMLogCommands:[Ljava/lang/String;

.field private static setlogPropCommands:[Ljava/lang/String;

.field private static snNumberCommands:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;)Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    .prologue
    .line 71
    sput-object p0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    return-object p0
.end method

.method public static cleanup()V
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 433
    const-string v0, "SpecialCharSequenceMgr"

    const-string v1, "cleanup() is called outside the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    sget-object v0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->cancel()V

    .line 439
    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    goto :goto_0
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 475
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 477
    .local v14, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsAdn(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    :cond_0
    const/4 v2, 0x0

    .line 555
    :goto_0
    return v2

    .line 486
    :cond_1
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    .line 488
    .local v11, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v11}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    const/4 v2, 0x0

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 493
    .local v12, "len":I
    const/4 v13, 0x0

    .line 494
    .local v13, "subscription":I
    const/4 v4, 0x0

    .line 496
    .local v4, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    if-le v12, v2, :cond_5

    const/4 v2, 0x5

    if-ge v12, v2, :cond_5

    const-string v2, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 499
    const/4 v2, 0x0

    add-int/lit8 v5, v12, -0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 509
    .local v10, "index":I
    new-instance v1, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 512
    .local v1, "handler":Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    new-instance v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    add-int/lit8 v2, v10, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v2, v1, v5}, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;-><init>(ILcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;I)V

    .line 516
    .local v3, "sc":Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    add-int/lit8 v2, v10, -0x1

    iput v2, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 517
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 520
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 521
    iget-object v2, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f08016f

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 522
    iget-object v2, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v5, 0x7f08016e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v2, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 524
    iget-object v2, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 525
    iget-object v2, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 526
    iget-object v2, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 530
    iget-object v2, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 531
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPreferredSubscription()I

    move-result v13

    .line 533
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 534
    const/4 v2, 0x3

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "adn"

    aput-object v5, v9, v2

    const/4 v2, 0x1

    const-string v5, "adn_sub2"

    aput-object v5, v9, v2

    const/4 v2, 0x2

    const-string v5, "adn_sub3"

    aput-object v5, v9, v2

    .line 536
    .local v9, "adn":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://iccmsim/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v9, v13

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 542
    .end local v9    # "adn":[Ljava/lang/String;
    :goto_1
    const/4 v2, -0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v2, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    if-eqz v2, :cond_3

    .line 547
    sget-object v2, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    invoke-virtual {v2}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->cancel()V

    .line 549
    :cond_3
    sput-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    .line 550
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 538
    :cond_4
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 551
    .end local v1    # "handler":Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    .end local v3    # "sc":Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    .end local v10    # "index":I
    :catch_0
    move-exception v2

    .line 555
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static handleBuildVersionDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f080184

    const/4 v1, 0x1

    .line 182
    const v2, 0x7f0800fc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v0, "buildVersion":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v2, ":\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v2, "ro.internal.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 196
    .end local v0    # "buildVersion":Ljava/lang/StringBuilder;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleCTAVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 215
    const v2, 0x7f0800fb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "ctaVersion":Ljava/lang/StringBuilder;
    const v2, 0x7f080181

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v2, ":\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v2, "ro.cta.buildversion"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const v2, 0x7f080182

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, ":\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v2, "ro.hardware.custom_version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const v2, 0x7f080183

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v2, ":\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080180

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 237
    .end local v0    # "ctaVersion":Ljava/lang/StringBuilder;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "useSystemWindow"    # Z
    .param p3, "textField"    # Landroid/widget/EditText;

    .prologue
    .line 114
    invoke-static {p0}, Lcom/android/dialer/SpecialCharSequenceMgr;->initCommandArrays(Landroid/content/Context;)V

    .line 116
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "dialString":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleRegulatoryInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0, p3}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleBuildVersionDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handlePRLVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleCTAVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleUserFactoryModeChange(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleComponentInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleProjectTestDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleStartSalesCount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleFactoryTestForAttachmentDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    const/4 v1, 0x1

    .line 146
    :goto_0
    return v1

    .line 133
    :cond_1
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->factoryTestCommands:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->isArrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-static {p0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleFactoryTestDisplay(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 135
    :cond_2
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->masterClearCommands:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->isArrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-static {p0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleMasterClearDisplay(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 137
    :cond_3
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->setlogPropCommands:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->isArrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    const-string v1, "####7878#"

    invoke-static {p0, v1}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleSetLogPropDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 139
    :cond_4
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->setQXDMLogCommands:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->isArrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    const-string v1, "####8787#"

    invoke-static {p0, v1}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleSetLogPropDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 141
    :cond_5
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->snNumberCommands:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->isArrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    invoke-static {p0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleSNDisplay(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 146
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleComponentInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 339
    const v2, 0x7f0800ff

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "android.category.com.android.componentinfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v2, "com.android.componentinfo"

    const-string v3, "com.android.componentinfo.ControlCenter"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    const/4 v2, 0x1

    .line 352
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_1
    return v2

    .line 347
    .restart local v1    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "ComponentInfo not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static handleFactoryTestDisplay(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->startFactoryTestActivity(Landroid/content/Context;Z)V

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method private static handleFactoryTestForAttachmentDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 262
    const v1, 0x7f0800fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-static {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->startFactoryTestActivity(Landroid/content/Context;Z)V

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "useSystemWindow"    # Z

    .prologue
    const/4 v3, 0x1

    .line 582
    const-string v2, "*#06#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 583
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    invoke-static {p0}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleMSimIMEIDisplay(Landroid/content/Context;)Z

    move-result v2

    .line 605
    :goto_0
    return v2

    .line 586
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPreferredSubscription()I

    move-result v1

    .line 588
    .local v1, "subscription":I
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    const-string v2, "phone_msim"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 596
    .local v0, "phoneType":I
    :goto_1
    if-ne v0, v3, :cond_2

    .line 597
    invoke-static {p0, p2}, Lcom/android/dialer/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;Z)V

    move v2, v3

    .line 598
    goto :goto_0

    .line 592
    .end local v0    # "phoneType":I
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .restart local v0    # "phoneType":I
    goto :goto_1

    .line 599
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 600
    invoke-static {p0, p2}, Lcom/android/dialer/SpecialCharSequenceMgr;->showMEIDPanel(Landroid/content/Context;Z)V

    move v2, v3

    .line 601
    goto :goto_0

    .line 605
    .end local v0    # "phoneType":I
    .end local v1    # "subscription":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static handleMSimIMEIDisplay(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 609
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 610
    .local v1, "deviceIds":Ljava/lang/StringBuffer;
    const v4, 0x7f080188

    .line 611
    .local v4, "titleId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPhoneCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 612
    if-eqz v2, :cond_0

    .line 613
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    :cond_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v3

    .line 616
    .local v3, "phoneType":I
    if-eq v3, v7, :cond_1

    if-eq v3, v9, :cond_1

    move v5, v6

    .line 632
    .end local v3    # "phoneType":I
    :goto_1
    return v5

    .line 620
    .restart local v3    # "phoneType":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v9, v3, :cond_2

    const v5, 0x7f08016d

    :goto_2
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telephony/MSimTelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    :cond_2
    const v5, 0x7f08016c

    goto :goto_2

    .line 626
    .end local v3    # "phoneType":I
    :cond_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v8, 0x104000a

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "alert":Landroid/app/AlertDialog;
    move v5, v7

    .line 632
    goto :goto_1
.end method

.method static handleMasterClearDisplay(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    move-object v0, p0

    .line 272
    .local v0, "vContext":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080185

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080186

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/dialer/SpecialCharSequenceMgr$2;

    invoke-direct {v3, v0}, Lcom/android/dialer/SpecialCharSequenceMgr$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/dialer/SpecialCharSequenceMgr$1;

    invoke-direct {v3}, Lcom/android/dialer/SpecialCharSequenceMgr$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 294
    const/4 v1, 0x1

    return v1
.end method

.method private static handlePRLVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 559
    const-string v3, "**04"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "**05"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 561
    :try_start_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    const/4 v1, 0x0

    .line 566
    .local v1, "subscription":I
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPreferredSubscription()I

    move-result v1

    .line 567
    const-string v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->handlePinMmi(Ljava/lang/String;I)Z

    move-result v2

    .line 578
    .end local v1    # "subscription":I
    :cond_1
    :goto_0
    return v2

    .line 570
    :cond_2
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SpecialCharSequenceMgr"

    const-string v4, "Failed to handlePinMmi due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static handleProjectTestDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 322
    const v2, 0x7f0800fe

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "android.category.com.yepapp.yeptest"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v2, "com.yepapp.gpstest"

    const-string v3, "com.yepapp.gpstest.GpsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 328
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    const/4 v2, 0x1

    .line 334
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_1
    return v2

    .line 329
    .restart local v1    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "YepTest not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static handleRegulatoryInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 636
    const-string v3, "*#07#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    const-string v3, "SpecialCharSequenceMgr"

    const-string v4, "handleRegulatoryInfoDisplay() sending intent to settings app"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.RegulatoryInfoDisplayActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .local v1, "regInfoDisplayActivity":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v2, "showRegInfoIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 643
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    const/4 v3, 0x1

    .line 649
    .end local v1    # "regInfoDisplayActivity":Landroid/content/ComponentName;
    .end local v2    # "showRegInfoIntent":Landroid/content/Intent;
    :goto_1
    return v3

    .line 644
    .restart local v1    # "regInfoDisplayActivity":Landroid/content/ComponentName;
    .restart local v2    # "showRegInfoIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SpecialCharSequenceMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "regInfoDisplayActivity":Landroid/content/ComponentName;
    .end local v2    # "showRegInfoIntent":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static handleSNDisplay(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x20

    const/4 v6, 0x1

    .line 388
    invoke-static {}, Lcom/android/dialer/SpecialCharSequenceMgr;->loadByteFromTestStatusFile()[B

    move-result-object v0

    .line 390
    .local v0, "data":[B
    const-string v1, ""

    .line 391
    .local v1, "sn":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 392
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 393
    .local v2, "temp":Ljava/lang/String;
    move-object v1, v2

    .line 394
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 395
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 399
    .end local v2    # "temp":Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "SN"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 405
    return v6
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 455
    .local v1, "len":I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    const/4 v2, 0x1

    .line 462
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static handleSetLogPropDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "android.category.com.yep.log"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v2, "com.yep"

    const-string v3, "com.yep.log.LogActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    const-string v2, "inputString"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "Testkit not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static handleStartSalesCount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 409
    const v3, 0x7f080101

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "com.yep.salescount"

    const-string v4, "com.yep.salescount.SalesCountActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 415
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    const/4 v2, 0x1

    .line 422
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v2

    .line 416
    .restart local v1    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SpecialCharSequenceMgr"

    const-string v4, "SalesCount not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static handleUserFactoryModeChange(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 312
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "SpecialCharSequenceMgr"

    const-string v1, "changing mode between user and factory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initCommandArrays(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->factoryTestCommands:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 152
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->factoryTestCommands:[Ljava/lang/String;

    .line 154
    :cond_0
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->masterClearCommands:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 155
    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->masterClearCommands:[Ljava/lang/String;

    .line 157
    :cond_1
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->setlogPropCommands:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 158
    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->setlogPropCommands:[Ljava/lang/String;

    .line 160
    :cond_2
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->setQXDMLogCommands:[Ljava/lang/String;

    if-nez v1, :cond_3

    .line 161
    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->setQXDMLogCommands:[Ljava/lang/String;

    .line 163
    :cond_3
    sget-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->snNumberCommands:[Ljava/lang/String;

    if-nez v1, :cond_4

    .line 164
    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/dialer/SpecialCharSequenceMgr;->snNumberCommands:[Ljava/lang/String;

    .line 166
    :cond_4
    return-void
.end method

.method private static isArrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 169
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v4

    .line 173
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 174
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    const/4 v4, 0x1

    goto :goto_0

    .line 173
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static loadByteFromTestStatusFile()[B
    .locals 8

    .prologue
    .line 358
    const/16 v5, 0x80

    new-array v0, v5, [B

    .line 359
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 361
    .local v3, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/persist/.sn.bin"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 363
    const-string v5, "SpecialCharSequenceMgr"

    const-string v6, "/persist/.sn.bin not exists"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    const/4 v0, 0x0

    .line 376
    .end local v0    # "buffer":[B
    if-eqz v3, :cond_0

    .line 378
    :try_start_1
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 366
    .restart local v0    # "buffer":[B
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .end local v3    # "inStream":Ljava/io/InputStream;
    .local v4, "inStream":Ljava/io/InputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 371
    const-string v5, "SpecialCharSequenceMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/persist/.sn.bin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 376
    if-eqz v4, :cond_3

    .line 378
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_1
    move-object v3, v4

    .line 382
    .end local v4    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    goto :goto_0

    .line 372
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const/4 v0, 0x0

    .line 374
    :try_start_5
    const-string v5, "SpecialCharSequenceMgr"

    const-string v6, "loadByteFromTestStatusFile error : "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 376
    if-eqz v3, :cond_0

    .line 378
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 379
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_0

    .line 376
    .restart local v0    # "buffer":[B
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_4

    .line 378
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 376
    :cond_4
    :goto_4
    throw v5

    .line 379
    :catch_2
    move-exception v6

    goto :goto_4

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "inStream":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    goto :goto_1

    .line 376
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    goto :goto_3

    .line 372
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "inStream":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private static showIMEIPanel(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSystemWindow"    # Z

    .prologue
    .line 658
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPreferredSubscription()I

    move-result v2

    .line 660
    .local v2, "subscription":I
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 661
    const-string v3, "phone_msim"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "imeiStr":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08016c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 674
    .local v0, "alert":Landroid/app/AlertDialog;
    return-void

    .line 664
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "imeiStr":Ljava/lang/String;
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "imeiStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static showMEIDPanel(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSystemWindow"    # Z

    .prologue
    .line 677
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPreferredSubscription()I

    move-result v2

    .line 679
    .local v2, "subscription":I
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 680
    const-string v3, "phone_msim"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/MSimTelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "meidStr":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08016d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 693
    .local v0, "alert":Landroid/app/AlertDialog;
    return-void

    .line 683
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "meidStr":Ljava/lang/String;
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "meidStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static startFactoryTestActivity(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isAttchment"    # Z

    .prologue
    .line 242
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "android.category.factory.kit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v2, "com.yep.factory"

    const-string v3, "com.yep.factory.ControlCenter"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    if-eqz p1, :cond_0

    .line 247
    const-string v2, "attachment"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SpecialCharSequenceMgr"

    const-string v3, "factorykit not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
