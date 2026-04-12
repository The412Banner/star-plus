.class Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
.super Ljava/lang/Object;
.source "SSLEngineOutputRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecordMemo"
.end annotation


# instance fields
.field contentType:B

.field encodeCipher:Lorg/openjsse/sun/security/ssl/SSLCipher$SSLWriteCipher;

.field fragment:[B

.field majorVersion:B

.field minorVersion:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$1;

    .line 354
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;-><init>()V

    return-void
.end method
