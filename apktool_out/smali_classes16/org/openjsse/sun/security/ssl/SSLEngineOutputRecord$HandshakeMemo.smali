.class Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;
.super Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;
.source "SSLEngineOutputRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandshakeMemo"
.end annotation


# instance fields
.field acquireOffset:I

.field handshakeType:B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$RecordMemo;-><init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$1;

    .line 363
    invoke-direct {p0}, Lorg/openjsse/sun/security/ssl/SSLEngineOutputRecord$HandshakeMemo;-><init>()V

    return-void
.end method
